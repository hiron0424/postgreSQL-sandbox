-- DDL:Create database item_stock
CREATE TABLE item_stock(
  repository_id CHAR(4) NOT NULL,
  item_id CHAR(4) NOT NULL,
  stock INTEGER NOT NULL,
  PRIMARY KEY (repository_id, item_id)
);

-- DML Register data
BEGIN TRANSACTION;

INSERT INTO item_stock VALUES ('S001', '0001', 0);
INSERT INTO item_stock VALUES ('S001', '0002', 120);
INSERT INTO item_stock VALUES ('S001', '0003', 200);
INSERT INTO item_stock VALUES ('S001', '0004', 3);
INSERT INTO item_stock VALUES ('S001', '0005', 0);
INSERT INTO item_stock VALUES ('S001', '0006', 99);
INSERT INTO item_stock VALUES ('S001', '0007', 999);
INSERT INTO item_stock VALUES ('S001', '0008', 200);
INSERT INTO item_stock VALUES ('S002', '0001', 10);
INSERT INTO item_stock VALUES ('S002', '0002', 25);
INSERT INTO item_stock VALUES ('S002', '0003', 34);
INSERT INTO item_stock VALUES ('S002', '0004', 19);
INSERT INTO item_stock VALUES ('S002', '0005', 99);
INSERT INTO item_stock VALUES ('S002', '0006', 0);
INSERT INTO item_stock VALUES ('S002', '0007', 0);
INSERT INTO item_stock VALUES ('S002', '0008', 18);

COMMIT;