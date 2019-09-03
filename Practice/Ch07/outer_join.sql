-- OUTER JOIN-外部結合
SELECT
  -- <テーブル名>.<列名>で記述する
  SI.store_id,
  SI.name,
  SI.item_id,
  I.name,
  I.unit_price
FROM
  store_items AS SI RIGHT OUTER JOIN items AS I
  -- 主マスタとするテーブルをLEFTかRIGHTで記述（一般的にはLEFT、結果は同じ）
ON
  SI.item_id = I.id
  -- 結合キーを記述する（必須）、FROMとWHEREの間に書く
;