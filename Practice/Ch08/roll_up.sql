-- GROUPING演算子・・小計と合計を一気に求める
-- UNION ALLを使う場合
SELECT
  '合計' AS grouping,
  SUM(unit_price)
FROM
  items
UNION ALL
-- UNION ALLはUNIONと違ってソートをしないので、パフォーマンスが良い
SELECT
  grouping,
  SUM(unit_price)
FROM
  items
GROUP BY
  grouping
;

-- ROLLUP-合計と小計を一気に求める
-- GROUP BY()と、GROUP BY(unit_price)の二つを計算している
SELECT
  grouping,
  SUM(unit_price) AS sum_unit_price
FROM
  items
GROUP BY
  ROLLUP(grouping)
;

-- 集約キーを追加すると
SELECT
  grouping,
  created_at,
  SUM(unit_price) AS sum_unit_price
FROM
  items
GROUP BY
  ROLLUP (
    grouping,
    created_at
  )
;

-- 超集合のNULLと元々のNULLを区別する
-- そのための関数をGROUPING関数という
-- 超集合のNULLは1を、それ以外は0を返す
SELECT
  GROUPING(grouping) AS grouping,
  GROUPING(created_at) AS created_at,
  SUM(unit_price) AS sum_unit_price
FROM
  items
GROUP BY
  ROLLUP(
    grouping,
    created_at
  )
;

-- 超集合のキー値に文字列を埋め込む
SELECT
  CASE
    WHEN GROUPING(grouping) = 1
      THEN '商品分類　合計'
    ELSE
      grouping
  END AS grouping,
  CASE
    WHEN GROUPING(created_at) = 1
      THEN '登録日　合計'
    ELSE
      CAST(created_at AS VARCHAR(16))
  END AS created_at,
  SUM(unit_price) AS sum_unit_price
FROM
  items
GROUP BY
  ROLLUP(
    grouping,
    created_at
  )
;
