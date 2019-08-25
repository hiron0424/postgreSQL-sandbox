-- DDL:Create table 'store_items'
CREATE TABLE store_items(
  store_id CHAR(4) NOT NULL,
  name VARCHAR(200) NOT NULL,
  item_id CHAR(4) NOT NULL,
  stock INTEGER NOT NULL,
  PRIMARY KEY (store_id, item_id)
);

-- DML:Insert rows into 'store_items'
BEGIN TRANSACTION;

INSERT INTO store_items VALUES ('000A', '東京', '0001', 30);
INSERT INTO store_items VALUES ('000A', '東京', '0002', 50);
INSERT INTO store_items VALUES ('000A', '東京', '0003', 15);
INSERT INTO store_items VALUES ('000B', '名古屋', '0002', 30);
INSERT INTO store_items VALUES ('000B', '名古屋', '0003', 120);
INSERT INTO store_items VALUES ('000B', '名古屋', '0004', 20);
INSERT INTO store_items VALUES ('000B', '名古屋', '0006', 10);
INSERT INTO store_items VALUES ('000B', '名古屋', '0007', 40);
INSERT INTO store_items VALUES ('000C', '大阪', '0003', 20);
INSERT INTO store_items VALUES ('000C', '大阪', '0004', 50);
INSERT INTO store_items VALUES ('000C', '大阪', '0006', 90);
INSERT INTO store_items VALUES ('000C', '大阪', '0007', 70);
INSERT INTO store_items VALUES ('000D', '福岡', '0001', 100);

COMMIT;