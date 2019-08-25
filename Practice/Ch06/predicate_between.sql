-- BETWEEN--範囲検索
-- ex.販売単価100~1000の商品を検索する
SELECT
  name,
  unit_price
FROM
  items
WHERE
  -- 100 <= unit_price <= 1000
  unit_price BETWEEN 100 AND 1000
;