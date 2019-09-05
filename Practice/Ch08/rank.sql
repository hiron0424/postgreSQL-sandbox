-- 商品分類別に販売単価の安い順に並べた表を作成
SELECT
  name,
  grouping,
  unit_price,
  RANK ()
    OVER (
      PARTITION BY grouping
      ORDER BY unit_price
    ) AS ranking
FROM
  items
;

-- PARTITION BYを指定しない場合、テーブル全体がウィンドウとなる
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
;

-- DENSE_RANK-どう順位複数あっても後ろが飛ばない
-- ROW_NUMBER-一意な連番を付与
SELECT
  name,
  grouping,
  unit_price,
  RANK ()
    OVER (
      ORDER BY unit_price
    ) AS ranking,
  DENSE_RANK ()
    OVER (
      ORDER BY unit_price
    ) AS dense_ranking,
  ROW_NUMBER ()
    OVER (
      ORDER BY unit_price
    ) AS row_number
FROM
  items
;