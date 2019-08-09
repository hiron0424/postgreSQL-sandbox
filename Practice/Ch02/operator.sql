-- 抽出したデータに数字をかける
-- NULLを含んだ演算の結果は全てNULLとなる
SELECT
  id,
  name,
  unit_price,
  unit_price * 1.08 AS "税込価格"
FROM
  items
;

-- 比較演算子 <, <=, >, >=, =, <>
-- unit_priceが500でないデータを抽出
SELECT
  id,
  name,
  unit_price
FROM
  items
WHERE
  unit_price <> 500
;

-- cost_priceがNULLのデータを選択する
SELECT
  name,
  cost_price
FROM
  items
WHERE
  cost_price IS NULL
;

-- cost_priceがNULLじゃないデータを選択する
SELECT
  name,
  cost_price
FROM
  items
WHERE
  cost_price IS NOT NULL
;