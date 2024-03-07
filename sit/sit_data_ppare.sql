CREATE TABLE part_slice_table (
    product_id INT NOT NULL,
    product_name VARCHAR(125),
    product_price INT,
    product_number INT
)
PARTITIONED BY(product_price)
sliced by (product_id) into 8 slices;

ALTER TABLE part_slice_table ADD PARTITION part_low(product_price<3);
ALTER TABLE part_slice_table ADD PARTITION part_high(product_price>=3);

SELECT * FROM part_slice_table;
INSERT INTO part_slice_table PARTITION ON (product_price<3) SELECT 1, '水', 2, 10  FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price>=3) SELECT 2, '水', 3, 100 FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price>=3) SELECT 3, '水', 2, 200 FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price>=3) SELECT 4, '水', 4, 300 FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price>=3) SELECT 5, '水', 2, 400 FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price>=3) SELECT 6, '水', 6, 500 FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price>=3) SELECT 7, '水', 8, 600 FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price>=3) SELECT 8, '水', 10, 600 FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price>=3) SELECT 9, '水', 3, 600 FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price>=3) SELECT 10, '水', 7, 600 FROM DUAL;
INSERT INTO part_slice_table PARTITION ON (product_price<3) SELECT 11, '水', 2, 600 FROM DUAL;
SELECT * FROM part_slice_table;


create database test_db;

create user test_user identified by 'test123';
select * from v$sys_users;
grant SELECT,CREATE,UPDATE,DROP,INSERT,ALTER,TRUNCATE,DELETE,EXECUTOR,EXPORT 
    on test_user.* to test_user;
grant create table to test_user;
grant create view to test_user;
GRANT CREATE USER,CREATE DATABASE LINK,GRANT ANY OBJECT PRIVILEGES,
    GRANT ANY PRIVILEGES,CREATE ANY PROCEDURE,EXECUTOR ANY PROCEDURE,
    CREATE ANY LIBRARY,CREATE ROLE,ALTER ANY ROLE,
    GRANT ANY ROLE,DROP ANY ROLE to test_user;

CREATE TABLE index_test_table(
    int_a INT,
    int_b INT,
    long_c LONG,
    long_d LONG,
    int_e INT,
    long_f LONG,
    int_g INT,
    long_h LONG,
    int_j INT,
    varchar_1 VARCHAR(100),
    varchar_2 VARCHAR(100),
    varchar_3 VARCHAR(200)
);

insert into index_test_table '/mnt/disk6/gtp/mdc_data/small_data.csv' 
SEPARATOR ',' unquoted;

CREATE TABLE index_test_tbl_part (
    product_id INT NOT NULL,
    product_name VARCHAR(125),
    product_price INT,
    product_number INT
)
PARTITIONED BY(product_price);

ALTER TABLE index_test_tbl_part ADD PARTITION part_low(product_price<3);
ALTER TABLE index_test_tbl_part ADD PARTITION part_high(product_price>=3);

SELECT * FROM .index_test_tbl_part;
INSERT INTO index_test_tbl_part PARTITION ON (product_price<3) SELECT 1, '水', 2, 10  FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price>=3) SELECT 2, '水', 3, 100 FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price>=3) SELECT 3, '水', 2, 200 FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price>=3) SELECT 4, '水', 4, 300 FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price>=3) SELECT 5, '水', 2, 400 FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price>=3) SELECT 6, '水', 6, 500 FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price>=3) SELECT 7, '水', 8, 600 FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price>=3) SELECT 8, '水', 10, 600 FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price>=3) SELECT 9, '水', 3, 600 FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price>=3) SELECT 10, '水', 7, 600 FROM DUAL;
INSERT INTO index_test_tbl_part PARTITION ON (product_price<3) SELECT 11, '水', 2, 600 FROM DUAL;
SELECT * FROM index_test_tbl_part;


CREATE TABLE ext_table4
(
last_name STRING(10),
first_name STRING(10),
state STRING(10),
address STRING(10)
)
PARTITIONED BY (last_name)
ORGANIZATION EXTERNAL;