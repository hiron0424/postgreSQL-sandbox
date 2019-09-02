-- EXCEPT-テーブルの引き算を行う
SELECT
  id,
  name
FROM
  items
EXCEPT
SELECT
  id,
  name
FROM
  items2
;