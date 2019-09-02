CREATE TABLE items2(
  id CHAR(4) NOT NULL,
  name VARCHAR(100) NOT NULL,
  grouping VARCHAR(32) NOT NULL,
  unit_price INTEGER,
  cost_price INTEGER,
  created_at DATE,
  PRIMARY KEY (id)
);

BEGIN TRANSACTION;

INSERT INTO items2 VALUES ('0001', 'Tシャツ', '衣服', 1000, 500, '2008-09-20');
INSERT INTO items2 VALUES ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11');
INSERT INTO items2 VALUES ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL);
INSERT INTO items2 VALUES ('0009', '手袋', '衣服', 4000, 2800, NULL);
INSERT INTO items2 VALUES ('0010', 'やかん', 'キッチン用品', 2000, 1700, '2009-09-20');

COMMIT;