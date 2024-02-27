-- 创建一个 HLL 列
CREATE TABLE hll_example (
    id INT,
    hll_col HLL
);

-- 向 HLL 列中插入数据
INSERT INTO hll_example (id, hll_col) VALUES
    (1, HLL_ADD_EMPTY()),
    (2, HLL_ADD_STRING(HLL_ADD_EMPTY(), 'apple')),
    (3, HLL_ADD_STRING(HLL_ADD_EMPTY(), 'banana')),
    (4, HLL_ADD_STRING(HLL_ADD_EMPTY(), 'apple')),
    (5, HLL_ADD_STRING(HLL_ADD_EMPTY(), 'cherry'));

-- 获取估算的基数
SELECT id, HLL_CARDINALITY(hll_col) FROM hll_example;

-- 输出结果
+----+--------------------+
| id | HLL_CARDINALITY()  |
+----+--------------------+
| 1  | 0                  |
| 2  | 1                  |
| 3  | 1                  |
| 4  | 1                  |
| 5  | 2                  |
+----+--------------------+


create table metric_table (
  datekey int,
  hour int,
  device_id bitmap BITMAP_UNION
)
aggregate key (datekey, hour)
distributed by hash(datekey, hour) buckets 1
properties(
  "replication_num" = "1"
);

insert into metric_table values
(20200622, 1, to_bitmap(243)),
(20200622, 2, bitmap_from_array([1,2,3,4,5,434543])),
(20200622, 3, to_bitmap(287667876573));

select hour, BITMAP_UNION_COUNT(pv) over(order by hour) uv from(
   select hour, BITMAP_UNION(device_id) as pv
   from metric_table -- 查询每小时的累计UV
   where datekey=20200622
group by hour order by 1
) final;


CREATE TABLE `array_test` (
  `id` int(11) NULL COMMENT "",
  `c_array` ARRAY<int(11)> NULL COMMENT ""
) ENGINE=OLAP
DUPLICATE KEY(`id`)
COMMENT "OLAP"
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"in_memory" = "false",
"storage_format" = "V2"
);
INSERT INTO `array_test` VALUES (1, [1,2,3,4,5]);
INSERT INTO `array_test` VALUES (2, [6,7,8]), (3, []), (4, null);
SELECT * FROM `array_test`;

 CREATE TABLE IF NOT EXISTS test.simple_map (
              `id` INT(11) NULL COMMENT "",
              `m` Map<STRING, INT> NULL COMMENT ""
            ) ENGINE=OLAP
            DUPLICATE KEY(`id`)
            DISTRIBUTED BY HASH(`id`) BUCKETS 1
            PROPERTIES (
            "replication_allocation" = "tag.location.default: 1",
            "storage_format" = "V2"
            );

INSERT INTO simple_map VALUES(1, {'a': 100, 'b': 200});
SELECT * FROM simple_map;

CREATE TABLE `struct_test` (
  `id` int(11) NULL,
  `s_info` STRUCT<s_id:int(11), s_name:string, s_address:string> NULL
) ENGINE=OLAP
DUPLICATE KEY(`id`)
COMMENT 'OLAP'
DISTRIBUTED BY HASH(`id`) BUCKETS 1
PROPERTIES (
"replication_allocation" = "tag.location.default: 1",
"storage_format" = "V2",
"light_schema_change" = "true",
"disable_auto_compaction" = "false"
);
INSERT INTO `struct_test` VALUES (1, {1, 'sn1', 'sa1'});
INSERT INTO `struct_test` VALUES (2, struct(2, 'sn2', 'sa2'));
INSERT INTO `struct_test` VALUES (3, named_struct('s_id', 3, 's_name', 'sn3', 's_address', 'sa3'));

1|{"s_id":1, "s_name":"sn1", "s_address":"sa1"}
2|{s_id:2, s_name:sn2, s_address:sa2}
3|{"s_address":"sa3", "s_name":"sn3", "s_id":3}


CREATE DATABASE testdb;

USE testdb;

CREATE TABLE test_json (
  id INT,
  j JSON
)
DUPLICATE KEY(id)
DISTRIBUTED BY HASH(id) BUCKETS 10
PROPERTIES("replication_num" = "1");

INSERT INTO test_json VALUES(26, '{"k1":"v1", "k2": 200}');

1   \N
2   null
3   true
4   false
5   100
6   10000
7   1000000000
8   1152921504606846976
9   6.18
10  "abcd"
11  {}
12  {"k1":"v31", "k2": 300}
13  []
14  [123, 456]
15  ["abc", "def"]
16  [null, true, false, 100, 6.18, "abc"]
17  [{"k1":"v41", "k2": 400}, 1, "a", 3.14]
18  {"k1":"v31", "k2": 300, "a1": [{"k1":"v41", "k2": 400}, 1, "a", 3.14]}
19  ''
20  'abc'
21  abc
22  100x
23  6.a8
24  {x
25  [123, abc]