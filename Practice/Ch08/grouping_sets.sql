-- GROUPING SETS -ROLLUPやCUBEで求めた結果の一部を取得する
-- 全体の合計行は表示されない
SELECT
  CASE
    WHEN GROUPING(grouping) = 1
      THEN '商品分類　合計'
    ELSE
      grouping
  END AS grouping,
  CASE
    WHEN GROUPING(created_at) = 1
      THEN '登録日　合計'
    ELSE
      CAST(created_at AS VARCHAR(16))
  END AS created_at,
  SUM(unit_price) AS sum_unit_price
FROM
  items
GROUP BY
  GROUPING SETS(
    grouping,
    created_at
  )
;