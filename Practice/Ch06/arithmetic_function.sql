-- ABS：絶対値
SELECT
  m,
  ABS(m) AS abs_col
FROM
  sampleMath
;

-- MOD：余剰
-- 使えるのは整数型の列のみ
SELECT
  n,
  p,
  MOD(n, p) AS mod_col
FROM
  sampleMath
;

-- ROUND：四捨五入
-- ROUND(対象数, 丸め桁数)
SELECT
  m,
  n,
  ROUND(m, n) AS round_col
FROM
  sampleMath
;