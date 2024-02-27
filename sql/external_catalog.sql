-- mysql

CREATE external TABLE `heros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `hp_max` float DEFAULT NULL,
  `hp_growth` float DEFAULT NULL,
  `hp_start` float DEFAULT NULL,
  `mp_max` float DEFAULT NULL,
  `mp_growth` float DEFAULT NULL,
  `mp_start` float DEFAULT NULL,
  `attack_max` float DEFAULT NULL,
  `attack_growth` float DEFAULT NULL,
  `attack_start` float DEFAULT NULL,
  `defense_max` float DEFAULT NULL,
  `defense_growth` float DEFAULT NULL,
  `defense_start` float DEFAULT NULL,
  `hp_5s_max` float DEFAULT NULL,
  `hp_5s_growth` float DEFAULT NULL,
  `hp_5s_start` float DEFAULT NULL,
  `mp_5s_max` float DEFAULT NULL,
  `mp_5s_growth` float DEFAULT NULL,
  `mp_5s_start` float DEFAULT NULL,
  `attack_speed_max` float DEFAULT NULL,
  `attack_range` varchar(255) DEFAULT NULL,
  `role_main` varchar(255) DEFAULT NULL,
  `role_assist` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL
)
ENGINE=mysql
PROPERTIES (
    "host" = "127.0.0.1",       -- MySQL 数据库IP
    "port" = "3307",            -- MySQL 数据库端口
    "user" = "root",            -- MySQL 数据库用户名
    "password" = "123456",    -- MySQL 数据库密码
    "database" = "TEST_DB",     -- MySQL 数据库库名
    "table" = "heros",  -- MySQL 数据库表名
    "ssl" = "false",
   "allowPublicKeyRetrieval" = "true"
);


CREATE CATALOG hive_hdfs PROPERTIES (
  'type'='hms',
  'hive.metastore.uris' = 'thrift://172.16.12.138:9083',
  'hive.version' = '2.1.1'
);