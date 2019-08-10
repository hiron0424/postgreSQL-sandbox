-- テーブル行数を数える
-- NULLを除外したい場合はculumnを指定する
SELECT
  COUNT(*),
  COUNT(cost_price)
FROM
  items
;


-- unit_price, cost_priceの合計を求める(SUM)
-- NULLは除外される
SELECT
  SUM(unit_price) AS "販売額合計",
  SUM(cost_price) AS "仕入値合計"
FROM
  items
;

-- 平均値を求める(AVG)
-- NULLは分母から除外される
SELECT
  AVG(unit_price),
  AVG(cost_price)
FROM
  items
;

-- 最大値(MAX), 最小値(MIN)を求める
-- 数値以外にも対応可能(SUM, AVGは不可)
SELECT
  MAX(unit_price),
  MIN(cost_price),
  MAX(created_at),
  MIN(created_at)
FROM
  items
;

-- 重複値を除外して集約関数を使用(DISTINCT)
-- 集約関数の引数にDISTINCTをつける
SELECT
  COUNT(DISTINCT grouping) AS "grouping",
  COUNT(DISTINCT cost_price) AS "cost_price",
  SUM(unit_price) AS "unit_price",
  SUM(DISTINCT unit_price) AS "DISTINCT_unit_price" -- unit_priceが同じ値のデータをまとめている
FROM
  items
;