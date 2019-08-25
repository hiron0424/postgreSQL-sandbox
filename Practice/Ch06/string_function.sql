-- || 連結
-- 文字列１ || 文字列２
-- ＊SQL serverとMySQLでは別の書き方をする
SELECT
  str1,
  str2,
  str3,
  str1 || str2 AS str_concat,
  str1 || str2 || str3 AS str_concat_all
FROM
  sample_string
;

-- LENGTH 文字列長
-- LENGTH(文字列)
SELECT
  str1,
  LENGTH(str1) AS length_str1
FROM
  sample_string
;

-- LOWER 小文字化, 大文字化はUPPER
-- LOWER(文字列)
SELECT
  str1,
  LOWER(str1) AS low_str1
FROM
  sample_string
WHERE
  str1 IS NOT NULL
;

-- REPLACE--文字列の置換
-- REPLACE(対象文字列, 置換前文字列, 置換後文字列)
SELECT
  str1,
  str2,
  str3,
  REPLACE(str1, str2, str3)
FROM
  sample_string
;

-- SUBSTRING--文字列の切り出し
-- SUBSTRING(対象文字列 FROM 切出開始位置, FOR 切出文字数)
SELECT
  str1,
  -- str1列の3文字目と４文字目を切り出す
  SUBSTRING(str1 FROM 3 FOR 2) AS sub_str
FROM
  sample_string
;