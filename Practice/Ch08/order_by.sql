-- ORDER BYはOVERの中で使われるが、あくまでウィンドウ関数が計算する順序を決めるだけ
-- 結果を並び替える場合、別にORDER BYを指定する
SELECT
  name,
  grouping,
  unit_price,
  RANK ()
    OVER (
      ORDER BY unit_price
    ) AS ranking
FROM
  items
ORDER BY ranking
;