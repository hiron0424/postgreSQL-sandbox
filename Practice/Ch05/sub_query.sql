-- サブクエリとは使い捨てのview
-- FROM句に直接ビュー定義のSELECTを書く
SELECT
  grouping,
  cnt_item
FROM (
  SELECT
    grouping,
    COUNT(*) AS cnt_item
  FROM
    items
  GROUP BY
    grouping
) AS itemsSum
;

-- スカラサブクエリ..戻り値が単一の値になるサブクエリの事
-- ex.販売単価が全体の平均より高いものだけを検索する
SELECT
  id,
  name,
  unit_price
FROM
  items
WHERE
  unit_price >
    (
      SELECT
        AVG(unit_price)
      FROM items
    )
;