-- INTERSECT-テーブルの共通部分の選択
SELECT
  id,
  name
FROM
  items
INTERSECT-- ALLオプションも可能
SELECT
  id,
  name
FROM
  items2
;