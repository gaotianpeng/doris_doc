CREATE TABLE example_db.table_hash
(
    k1 TINYINT,
    k2 DECIMAL(10, 2) DEFAULT "10.5",
    k3 CHAR(10) COMMENT "string column",
    k4 INT NOT NULL DEFAULT "1" COMMENT "int column"
)
COMMENT "my first table"
DISTRIBUTED BY HASH(k1) BUCKETS 1
PROPERTIES (
    "replication_allocation" = "tag.location.default: 1"
);

INSERT INTO example_db.table_hash (k1, k2, k3, k4) VALUES (2, 30.5, 'text1', 3);
INSERT INTO example_db.table_hash (k1, k2, k3, k4) VALUES (3, 40.5, 'text2', 4);
INSERT INTO example_db.table_hash (k1, k2, k3, k4) VALUES (4, 50.5, 'text3', 5);
INSERT INTO example_db.table_hash (k1, k2, k3, k4) VALUES (5, 60.5, 'text4', 6);
INSERT INTO example_db.table_hash (k1, k2, k3, k4) VALUES (6, 70.5, 'text5', 7);

