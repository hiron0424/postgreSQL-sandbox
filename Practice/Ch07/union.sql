-- UNION-テーブル同士の足し算
-- 重複行は通常排除される
SELECT
  id,
  name
FROM
  items
UNION
SELECT
  id,
  name
FROM
  items2
-- ORDER BYは最後に一つだけ可能
ORDER BY
  id
;

-- ALLオプションをつけると重複行を排除せず表示出来る
SELECT
  id,
  name
FROM
  items
UNION ALL
SELECT
  id,
  name
FROM
  items2
-- ORDER BYは最後に一つだけ可能
ORDER BY
  id
;