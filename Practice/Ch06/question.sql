-- 1.
-- cost_priceが500, 2800, 5000以外のデータが返る
SELECT
  name,
  cost_price
FROM
  items
WHERE
  cost_price NOT IN (500, 2800, 5000)
;

-- 2.
-- NULLは IS NULL かIS NOT NULLでないと書けないので、下記のSQLは何も返らない
SELECT
  name,
  cost_price
FROM
  items
WHERE
  cost_price NOT IN (500, 2800, 5000, NULL)
;

-- 3.
-- unit_priceが1000以下、1001~3000,3000以上に分けて商品数を数える
SELECT
  COUNT(
    CASE
      WHEN unit_price <= 1000
        THEN unit_price
      ELSE NULL
    END
  ) AS low_price,
  COUNT(
    CASE
      WHEN unit_price BETWEEN 1001 AND 3000
        THEN unit_price
      ELSE NULL
    END
  ) AS mid_price,
  COUNT(
    CASE
      WHEN unit_price >= 3001
        THEN unit_price
      ELSE NULL
    END
  ) AS high_price
FROM
  items
;