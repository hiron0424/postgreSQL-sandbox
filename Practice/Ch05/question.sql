-- 1.
--CREATE VIEW practice5 (
--  name,
--  unit_price,
--  created_at
--)
--AS
--SELECT
--  name,
--  unit_price,
--  created_at
--FROM
--  items
--WHERE
--  unit_price >= 1000
--  AND created_at = '2009-09-20'
--;

-- 3.
SELECT
  id,
  name,
  grouping,
  unit_price,
  (
    SELECT
      AVG(unit_price) AS avg_unit_price
    FROM items
  )
FROM
  items
ORDER BY
  id
;

-- 4.
CREATE VIEW avg_unit_price (
  -- ここはオリジナルのテーブルに含まれている場合、名前を省略してもOK
  id,
  name,
  grouping,
  unit_price,
  avg_unit_price
) AS
SELECT
  id,
  name,
  grouping,
  unit_price,
  (
    SELECT
      AVG(unit_price)
    FROM
      items AS S2
    WHERE
      S1.grouping = S2.grouping
    GROUP BY
      grouping
  )
FROM
  items AS S1
;