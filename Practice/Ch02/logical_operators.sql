-- 論理演算子
-- NOT演算子、unit_priceが1000>=でないデータ抽出
SELECT
  name,
  grouping,
  unit_price
FROM
  items
WHERE
  NOT unit_price >= 1000 -- WHERE unit_price < 1000 と同義
;

-- AND と OR 演算子
-- groupingがキッチン用品で、unit_priceが3000以上を検索
SELECT
  name,
  cost_price
FROM
  items
WHERE
  grouping = 'キッチン用品'
  AND unit_price >= 3000
;

-- groupingがキッチン用品または、unit_priceが3000以上を検索
SELECT
  name,
  cost_price
FROM
  items
WHERE
  grouping = 'キッチン用品'
  OR unit_price >= 3000
;

-- 「groupingが事務用品」、且つ「登録日(created_at)が2009-09-11、または2009-09-20」を検索
SELECT
  name,
  grouping,
  created_at
FROM
  items
WHERE
  grouping = '事務用品'
  -- OR を優先する際は()で囲む
  AND (created_at = '2009-09-11' OR created_at = '2009-09-20')
;