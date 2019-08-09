-- 1.itemsテーブルから登録日(created_at)が2009-04-28以降の商品を選択
-- name と created_at
SELECT
  name,
  created_at
FROM
  items
WHERE
  created_at >= '2009-04-28'
;

-- 3.unit_price - cost_priceが500より高い検索を複数考える
SELECT
  name,
  unit_price,
  cost_price
FROM
  items
WHERE
  cost_price - unit_price <= -500
;

SELECT
  name,
  unit_price,
  cost_price
FROM
  items
WHERE
  cost_price + 500 <= unit_price
;

-- 4.unit_priceを10%引きしても利益が100より高い事務用品とキッチン用品を選択
SELECT
  name,
  grouping,
  unit_price * 0.9 - cost_price AS "利益"
FROM
  items
WHERE
  unit_price * 0.9 - cost_price > 100
  AND (grouping = '事務用品' OR grouping = 'キッチン用品')
;
