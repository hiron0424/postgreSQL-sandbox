-- groupingごとに平均販売単価より高い商品を選び出す
SELECT
  grouping,
  name,
  unit_price
FROM
  items AS S1
WHERE
  unit_price > (SELECT
                  AVG(unit_price)
                FROM
                  items AS S2
                WHERE
                  S1.grouping = S2.grouping
                GROUP BY grouping
               )
;