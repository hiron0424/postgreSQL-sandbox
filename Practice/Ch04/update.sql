-- itemsテーブルデータのcreated_atを全て2009-10-10に更新する
UPDATE
  items
SET
  created_at = '2009-10-10'
;

-- 条件を指定するUPDATE
-- groupingが'キッチン用品'の行のunit_priceを10倍にする
UPDATE
  items
SET
  unit_price = unit_price * 10, -- NULLを入れたい場合はNULLと記述する
  cost_price = cost_price / 2 --(unit_price, cost_price) = (unit_price * 10, cost_price / 2)の書き方でもOK
WHERE
  grouping = 'キッチン用品'
;