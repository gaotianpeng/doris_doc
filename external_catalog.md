# 1 数据结构

ExternalTable：表示那些不由Doris自我管理的表。例如来自Hive、Iceberg、Elasticsearch等的表

涉及的核心类：ExternalTable、TableIf、TableAttribute

## 1.1 ExternalTable

```java
public class ExternalTable implements TableIf {
    // 核心属性
    protected long id;
    protected String name;
    protected TableType type = null;
    protected long timestamp;
    protected String dbName;
    private final TableAttributes tableAttributes;
    
    protected volatile long schemaUpdateTime;

    protected long dbId;
    protected boolean objectCreated; // 标识是否获取到最新的外部表的元数据
    protected ExternalCatalog catalog;
    protected ReentrantReadWriteLock rwLock = new ReentrantReadWriteLock(true); // 公平锁
    
    // 核心方法
    protected void makeSureInitialized()  // 获取外部表的元数据
    public List<Column> getFullSchema() 
    public List<Column> initSchema() 
    public List<Column> initSchemaAndUpdateTime() 
}
```

## 1.2 ExternalDatabase

```java
class ExternalDatabase<T extends ExternalTable> implements DatabaseIf<T> {
    // 核心属性
    protected ReentrantReadWriteLock rwLock = new ReentrantReadWriteLock(true); // 公平锁
    protected long id;
    protected String name;
    protected DatabaseProperty dbProperties = new DatabaseProperty();
    protected boolean initialized = false;
    protected Map<String, Long> tableNameToId = Maps.newConcurrentMap();
    protected Map<Long, T> idToTbl = Maps.newConcurrentMap();
    
    protected long lastUpdateTime;
    protected final InitDatabaseLog.Type dbLogType;
    protected ExternalCatalog extCatalog;
    protected boolean invalidCacheInInit = true; // tableNameToId, idToTbl是否有效
    
    // 核心方法
    public void setUnInitialized(boolean invalidCache)
    public boolean isInitialized()
    public final synchronized void makeSureInitialized()
    protected void init()
}
```

## 1.3 ExternalCatalog

```java
class ExternalCatalog implements CatalogIf<ExternalDatabase<? extends ExternalTable>> {
    // 核心属性
    protected long id;
    protected String name;
    protected InitCatalogLog.Type logType;
    protected CatalogProperty catalogProperty;
    private boolean initialized = false;
    protected Map<Long, ExternalDatabase<? extends ExternalTable>> idToDb = Maps.newConcurrentMap();
    protected long lastUpdateTime;
    protected Map<String, Long> dbNameToId = Maps.newConcurrentMap();
    private boolean objectCreated = false;
    protected boolean invalidCacheInInit = true;

    private ExternalSchemaCache schemaCache;
    private String comment;
    
    // 核心方法
    protected List<String> listDatabaseNames() 
    public abstract List<String> listTableNames(SessionContext ctx, String dbName);
    public abstract boolean tableExist(SessionContext ctx, String dbName, String tblName);
    public final synchronized void makeSureInitialized()
    protected final void initLocalObjects() // 在init函数之前会执行此函数
    protected abstract void initLocalObjectsImpl();
    public void dropDatabase(String dbName)
    public void createDatabase(long dbId, String dbName)
    protected void init()
}
```
