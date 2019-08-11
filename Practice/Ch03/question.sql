--2.unit_priceの合計が、仕入れ単価の合計の1.5倍より大きいgroupingを求める
SELECT
  grouping,
  SUM(unit_price) AS sum_unit,
  SUM(cost_price) AS sum_cost
FROM
  items
GROUP BY
  grouping
HAVING
  SUM(unit_price) > SUM(cost_price) * 1.5
ORDER BY
  sum_unit DESC
;

--3.
SELECT
  *
FROM
  items
ORDER BY
  created_at DESC,
  unit_price
;

SELECT
  grouping,
  MAX(unit_price) AS max_unit
FROM
  items
GROUP BY
  grouping
;