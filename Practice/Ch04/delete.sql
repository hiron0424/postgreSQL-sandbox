-- itemsテーブルの全データを削除する場合
-- DELETE FROM items

-- unit_priceが4000以上のデータを削除する場合
DELETE FROM items
WHERE
  unit_price >= 4000
;