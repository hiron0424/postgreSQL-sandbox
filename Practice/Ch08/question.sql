-- 1.
SELECT
  id,
  name,
  unit_price,
  MAX(unit_price)
    OVER(
      ORDER BY id
    ) AS current_max_price
FROM
  items
;

-- 2.
SELECT
  created_at,
  name,
  unit_price,
  SUM(unit_price)
    OVER(
      ORDER BY COALESCE(
        created_at,
        CAST('0001-01-01' AS DATE)
      )
    ) AS current_sum
FROM
  items
;

-- 2.別解
SELECT
  created_at,
  name,
  unit_price,
  SUM(unit_price)
    OVER(
      ORDER BY
        created_at
        NULLS FIRST
    ) AS current_sum
FROM
  items
;