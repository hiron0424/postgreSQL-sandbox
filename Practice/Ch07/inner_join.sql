-- INNER JOIN-内部結合
-- store_itemsテーブルとitemsテーブルを結合する
SELECT
  -- <テーブル名>.<列名>で記述する
  SI.store_id,
  SI.name,
  SI.item_id,
  I.name,
  I.unit_price
FROM
  store_items AS SI INNER JOIN items AS I
  -- 元のテーブル名でもOK,略称をつけるのが一般的
ON
  SI.item_id = I.id
  -- 結合キーを記述する（必須）、FROMとWHEREの間に書く
;

-- WHEREと組み合わせて使う
SELECT
  SI.store_id,
  SI.name,
  SI.item_id,
  I.name,
  I.unit_price
FROM
  store_items AS SI INNER JOIN items AS I
ON
  SI.item_id = I.id
WHERE
  SI.store_id = '000A'
;