-- グループ分け(GROUP BY)
-- groupingでグループ分け
SELECT
  grouping,
  COUNT(*)
FROM
  items
GROUP BY
  grouping
;

-- cost_priceで分ける(NULLもグループとして分類される)
SELECT
  cost_price,
  COUNT(*)
FROM
  items
GROUP BY
  cost_price
;

-- WHEREと併せて使う
-- 実行順序は FROM -> WHERE -> GROUP BY -> SELECT
SELECT
  cost_price,
  COUNT(*)
FROM
  items
WHERE
  grouping = '衣服'
GROUP BY
  cost_price
;

-- SELECTには集約キー以外の列は書けない
-- GROUP BYにはASで指定した名前は使えない
SELECT
  cost_price AS "仕入れ値",
  COUNT(*)
FROM
  items
GROUP BY
  "仕入れ値"
;