-- LIKE:文字列の部分一致検索
-- 前方一致
SELECT
  *
FROM
  sample_like
WHERE
  -- "%"は0文字以上の任意の文字列を意味する記号、"_"は1もじ以上
  strcol LIKE 'ddd%';

-- 中間一致
SELECT
  *
FROM
  sample_like
WHERE
  strcol LIKE '%ddd%';

-- 後方一致
SELECT
  *
FROM
  sample_like
WHERE
  strcol LIKE '%ddd';