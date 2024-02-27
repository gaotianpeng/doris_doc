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