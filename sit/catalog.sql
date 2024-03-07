create catalog cirrofs properties (
    "type" = "cirrodata",
    "password" = "123456",
    "fs.defaultFS" = "hdfs://xingyun21",
    "dfs.nameservices" = "xingyun21",
    "cirro.version" = "2.15",
    "cirro.root_name" = "gtp_test_dir",
    "cirro.cluster_name" = "gtp_test",
    "cirro.database" = "test_db"  
);


-- 查询表的列
SHOW COLUMNS FROM table_name;




-- sh run-fe-ut.sh --run org.apache.doris.catalog.CirroDataExternalCatalogTest