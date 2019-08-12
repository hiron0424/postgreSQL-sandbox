-- transaction
BEGIN TRANSACTION;

-- カッターシャツの販売単価を1000円引きに
UPDATE
  items
SET
  unit_price = unit_price - 1000
WHERE
  name = 'カッターシャツ'
;

-- Tシャツの販売単価を1000円値上げ
UPDATE
  items
SET
  unit_price = unit_price + 1000
WHERE
  name = 'Tシャツ'
;

COMMIT;
