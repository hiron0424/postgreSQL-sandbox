-- 集約結果に条件を指定(HAVING)
-- SELECT -> FROM -> WHERE -> GROUP BY -> HAVINGの順番で書く

-- groupingで集約したグループから行数が2を選択する
SELECT
  grouping,
  COUNT(*)
FROM
  items
GROUP BY
  grouping
HAVING
  COUNT(*) = 2
;

-- groupingで集約したグループのうち、unit_priceの平均が2500以上を表示
-- 集約キーに関する条件は、WHERE,HAVING両方に書けるが、列に対してはWHEREで書く
SELECT
  grouping,
  AVG(unit_price)
FROM
  items
GROUP BY
  grouping
HAVING
  AVG(unit_price) >= 2500
;