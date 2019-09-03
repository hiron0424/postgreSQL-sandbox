-- EXCEPT-テーブルの引き算を行う
-- テーブルの記載順で結果は異なる
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