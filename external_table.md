# 1 Doris JDBC/ODBC外部表实现

## 1.1 核心原理

通过ODBC/JDBC驱动，将查询SQL发送给外部支持JDBC/ODBC的数据库等，由外部数据库来执行SQL

## 1.2 涉及到的核心类及其功能

涉及到的核心类及功能

- NewJDBCScanNode/VScanNode/ExecNode：
- NewJdbcScanner/VScanner：
- JdbcConnector/TableConnector：用于从 ODBC/JDBC 扫描数据的表连接器



```
Each scan node will generates a ScannerContext to manage all Scanners.
一个VScanNode可以包含多个VScanner

```

```c++
// exec_node.cpp
Status ExecNode::open(RuntimeState* state) {
    return alloc_resource(state);
}

// vscan_node.cpp
Status VScanNode::alloc_resource(RuntimeState* state) {
		...
    _output_tuple_desc = state->desc_tbl().get_tuple_descriptor(_output_tuple_id);
		...
    if (_is_pipeline_scan) {
        if (_should_create_scanner) {
            auto status =
                    !_eos ? _prepare_scanners(state->query_parallel_instance_num()) : Status::OK();
            if (_scanner_ctx) {
                DCHECK(!_eos && _num_scanners->value() > 0);
                RETURN_IF_ERROR(_scanner_ctx->init());
                RETURN_IF_ERROR(
                        _state->exec_env()->scanner_scheduler()->submit(_scanner_ctx.get()));
            }
            if (_shared_scan_opt) {
                _shared_scanner_controller->set_scanner_context(id(),
                                                                _eos ? nullptr : _scanner_ctx);
            }
        } else if (_shared_scanner_controller->scanner_context_is_ready(id())) {
            _scanner_ctx = _shared_scanner_controller->get_scanner_context(id());
						...
        } 
      	...
    } else {
        RETURN_IF_ERROR(!_eos ? _prepare_scanners(state->query_parallel_instance_num())
                              : Status::OK());
        if (_scanner_ctx) {
            RETURN_IF_ERROR(_scanner_ctx->init());
            RETURN_IF_ERROR(_state->exec_env()->scanner_scheduler()->submit(_scanner_ctx.get()));
        }
    }

    _opened = true;
    return Status::OK();
}

// vscan_node.cpp
Status VScanNode::_prepare_scanners(const int query_parallel_instance_num) {
    std::list<VScannerSPtr> scanners;
    RETURN_IF_ERROR(_init_scanners(&scanners));
			...
    COUNTER_SET(_num_scanners, static_cast<int64_t>(scanners.size()));
    RETURN_IF_ERROR(_start_scanners(scanners, query_parallel_instance_num));

    return Status::OK();
}

// new_jdbc_scan_node.cpp
Status NewJdbcScanNode::_init_scanners(std::list<VScannerSPtr>* scanners) {
    std::unique_ptr<NewJdbcScanner> scanner =
            NewJdbcScanner::create_unique(_state, this, _limit_per_scanner, _tuple_id,
                                          _query_string, _table_type, _state->runtime_profile());
    RETURN_IF_ERROR(scanner->prepare(_state, _conjuncts));
    scanners->push_back(std::move(scanner));
    return Status::OK();
}
```

```c++
// new_jdbc_connector.cpp
Status NewJdbcScanner::prepare(RuntimeState* state, const VExprContextSPtrs& conjuncts) {
    RETURN_IF_ERROR(VScanner::prepare(state, conjuncts));

    // get tuple desc
    _tuple_desc = state->desc_tbl().get_tuple_descriptor(_tuple_id);

    // get jdbc table info
    const JdbcTableDescriptor* jdbc_table =
            static_cast<const JdbcTableDescriptor*>(_tuple_desc->table_desc());

    _jdbc_param.driver_class = jdbc_table->jdbc_driver_class();
    _jdbc_param.driver_path = jdbc_table->jdbc_driver_url();
    _jdbc_param.resource_name = jdbc_table->jdbc_resource_name();
    _jdbc_param.driver_checksum = jdbc_table->jdbc_driver_checksum();
    _jdbc_param.jdbc_url = jdbc_table->jdbc_url();
    _jdbc_param.user = jdbc_table->jdbc_user();
    _jdbc_param.passwd = jdbc_table->jdbc_passwd();
    _jdbc_param.tuple_desc = _tuple_desc;
    _jdbc_param.query_string = std::move(_query_string);
    _jdbc_param.table_type = _table_type;

  	// 创建JdbcConnector
    _jdbc_connector.reset(new (std::nothrow) JdbcConnector(_jdbc_param));

    _is_init = true;
    return Status::OK();
}

// new_jdbc_connector.cpp
Status NewJdbcScanner::open(RuntimeState* state) {
    RETURN_IF_ERROR(VScanner::open(state));
    RETURN_IF_ERROR(_jdbc_connector->open(state, true));
    RETURN_IF_ERROR(_jdbc_connector->query());
    return Status::OK();
}

```

```c++
Status JdbcConnector::open(RuntimeState* state, bool read) {
		...

    JNIEnv* env = nullptr;
    RETURN_IF_ERROR(JniUtil::GetJNIEnv(&env));
    RETURN_IF_ERROR(JniUtil::get_jni_scanner_class(env, JDBC_EXECUTOR_CLASS, &_executor_clazz));
		...

    JniLocalFrame jni_frame;
    {
        std::string local_location;
        std::hash<std::string> hash_str;
        auto function_cache = UserFunctionCache::instance();
				...
            RETURN_IF_ERROR(function_cache->get_jarpath(
                    std::abs((int64_t)hash_str(_conn_param.resource_name)), _conn_param.driver_path,
                    _conn_param.driver_checksum, &local_location));
        VLOG_QUERY << "driver local path = " << local_location;

        TJdbcExecutorCtorParams ctor_params;
        ctor_params.__set_statement(_sql_str);
        ctor_params.__set_jdbc_url(_conn_param.jdbc_url);
        ctor_params.__set_jdbc_user(_conn_param.user);
        ctor_params.__set_jdbc_password(_conn_param.passwd);
        ctor_params.__set_jdbc_driver_class(_conn_param.driver_class);
        ctor_params.__set_driver_path(local_location);
        ctor_params.__set_batch_size(read ? state->batch_size() : 0);
        ctor_params.__set_op(read ? TJdbcOperation::READ : TJdbcOperation::WRITE);
        ctor_params.__set_table_type(_conn_param.table_type);

        jbyteArray ctor_params_bytes;
        // Pushed frame will be popped when jni_frame goes out-of-scope.
        RETURN_IF_ERROR(jni_frame.push(env));
        RETURN_IF_ERROR(SerializeThriftMsg(env, &ctor_params, &ctor_params_bytes));
        {
            SCOPED_RAW_TIMER(&_jdbc_statistic._init_connector_timer);
            _executor_obj = env->NewObject(_executor_clazz, _executor_ctor_id, ctor_params_bytes);
        }
        jbyte* pBytes = env->GetByteArrayElements(ctor_params_bytes, nullptr);
        env->ReleaseByteArrayElements(ctor_params_bytes, pBytes, JNI_ABORT);
        env->DeleteLocalRef(ctor_params_bytes);
    }
    RETURN_ERROR_IF_EXC(env);
    RETURN_IF_ERROR(JniUtil::LocalToGlobalRef(env, _executor_obj, &_executor_obj));
    _is_open = true;
    return Status::OK();
}

// jdbc_connector.cpp
Status JdbcConnector::query() {
		...
    JNIEnv* env = nullptr;
    RETURN_IF_ERROR(JniUtil::GetJNIEnv(&env));
    {
        jint colunm_count =
                env->CallNonvirtualIntMethod(_executor_obj, _executor_clazz, _executor_read_id);
   			...
    }

		...
    return Status::OK();
}
```



