--3 商品差益(product margins)テーブルを作る
-- CREATE TABLE product_margins (
--   PRIMARY KEY (id),
--   id         CHAR(4)      NOT NULL,
--   name       VARCHAR(100) NOT NULL,
--   unit_price INTEGER      ,
--   cost_price INTEGER      ,
--   margin     INTEGER
-- );

-- データ登録
INSERT INTO product_margins (
  id,
  name,
  unit_price,
  cost_price,
  margin
)

SELECT
  id,
  name,
  unit_price,
  cost_price,
  unit_price - cost_price
FROM
  items
WHERE
  id < '0004'
;

-- 4.product_marginsテーブルの、カッターシャツを4000から3000に下げる
-- その結果を受けて、カッターシャツの差益を再計算する
BEGIN TRANSACTION;

UPDATE
  product_margins
SET
  unit_price = 4000
WHERE
  name = 'カッターシャツ'
;

UPDATE
  product_margins
SET
  margin = unit_price - cost_price
;

COMMIT;