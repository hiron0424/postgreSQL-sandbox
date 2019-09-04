-- CROSS JOIN-クロス結合
-- 実務で使う機会はないかもしれない
-- 2つのテーブルをクロス結合する
SELECT
  SI.store_id,
  SI.name,
  SI.item_id,
  I.name
FROM
  store_items AS SI CROSS JOIN items AS I
;