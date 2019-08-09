-- itemsテーブルから、id,name,cost_priceを取得する
SELECT
  id, name, cost_price
  FROM
  items
;

-- 全データ取得
SELECT
  *
FROM
  items
;

-- ASを使用して列に別名をつける
SELECT
  id AS item_id, -- idにitem_idという名前をつけている
  grouping AS tag,
  cost_price AS cost,
  unit_price AS "販売単価" --（日本語名をつける場合は""で囲む）
FROM
  items
;

-- 重複行を除く(DISTINCT)、NULLも残る
SELECT
  DISTINCT grouping
FROM
  items
;

-- WHERE句による条件設定
-- grouoingが衣服の商品を選択
SELECT
  name,
  grouping,
  unit_price AS "販売単価"
FROM
  items
WHERE
  unit_price >= 1000
  AND grouping = '衣服'
;