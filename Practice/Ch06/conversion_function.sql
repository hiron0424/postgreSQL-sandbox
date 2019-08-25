-- CAST--変換
-- CAST(変換前の値 AS 変換するデータ型)
-- ex.文字から数字へ
SELECT
  CAST('0001' AS INTEGER ) AS int_col;

-- ex.文字型から日付型へ変換
SELECT
  CAST('2009-12-14' AS DATE) AS date_col;

-- COALESCE--NULLを値へ変換
-- COALESCE(データ1, データ2, データ3...)
SELECT
  COALESCE(NULL, 0) AS col_1,
  COALESCE(NULL, 'test') AS col_2,
  COALESCE(NULL, '2009-11-01') AS col_3;