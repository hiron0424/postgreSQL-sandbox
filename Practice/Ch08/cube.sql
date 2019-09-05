-- CUBE-データで積み木を作るイメージ
-- 構文はROLLUPと同じ
-- GROUP BY句で与えられた集約キーの全ての組み合わせを結果に含める
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
  CUBE(
    grouping,
    created_at
  )
;