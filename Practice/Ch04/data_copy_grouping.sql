INSERT INTO itemGrouping (
  grouping,
  sum_unit_price,
  sum_cost_price
)
SELECT
  grouping,
  SUM(unit_price),
  SUM(cost_price)
FROM
  items
GROUP BY
  grouping
;