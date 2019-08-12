-- itemsCopyテーブルへ、itemsテーブルのデータをコピーする
INSERT INTO itemsCopy (
  id,
  name,
  grouping,
  unit_price,
  cost_price,
  created_at
)
SELECT
  id,
  name,
  grouping,
  unit_price,
  cost_price,
  created_at
FROM
  items
;