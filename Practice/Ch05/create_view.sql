-- VIEW定義には、ORDER BYは使えない
CREATE VIEW itemsSum (
  grouping,
  cnt_item
)
AS
SELECT
  grouping,
  COUNT(*)
FROM
  items
GROUP BY
  grouping
;