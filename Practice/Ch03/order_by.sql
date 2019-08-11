-- 検索結果を並べ替え(ORDER BY)
-- unit_priceの低い順に並べる
SELECT
  id,
  name,
  unit_price,
  cost_price
FROM
  items
ORDER BY
  unit_price DESC -- 昇順はASC,降順はDESCをつける。列ごとに指定可
;

-- 複数のソートキーを指定
SELECT
  id,
  name,
  unit_price,
  cost_price
FROM
  items
ORDER BY
  unit_price,
  id
;

-- SELECTに含まれていない列も指定可
SELECT
  name,
  unit_price,
  cost_price
FROM
  items
ORDER BY
  2 ASC
;