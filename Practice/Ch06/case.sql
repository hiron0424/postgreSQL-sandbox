-- CASE--単純CASE式と検索CASE式がある
-- ex.itemsテーブルのgroupingを次のように変えて表示
-- A:衣服, B:事務用品
SELECT
  name,
  CASE
    WHEN grouping = '衣服'
      THEN 'A:' || grouping
    WHEN grouping = '事務用品'
      THEN 'B:' || grouping
    WHEN grouping = 'キッチン用品'
      THEN 'C:' || grouping
    ELSE 'NULL' -- それ以外はNULLを返す意味（省略はしない方が良い）
  END AS grouping_abc
FROM
  items
; -- これは検索CASE式

-- CASE式が書ける場所は式が書ける場所全て
-- 便利な近い方として行列変換がある
-- ex.groupingごとに販売単価を合計し、列として並べる
SELECT
  SUM(
    CASE
      WHEN grouping = '衣服'
        THEN unit_price
      ELSE 0
    END
  ) AS sum_ihuku_price,
  SUM(
    CASE
      WHEN grouping = '事務用品'
        THEN unit_price
      ELSE 0
    END
  ) AS sum_jimu_price,
  SUM(
    CASE
      WHEN grouping = 'キッチン用品'
        THEN unit_price
      ELSE 0
    END
  ) AS sum_kitchen_price
FROM
  items
;