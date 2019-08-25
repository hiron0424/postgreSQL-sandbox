-- IN:ORの便利な省略形
-- 仕入単価が320, 500, 5000の商品を選択する
SELECT
  name,
  cost_price
FROM
  items
WHERE
  cost_price IN (320, 500, 5000)
  -- NOT IN(データ)で任意のデータを除外出来る
;

-- IN述語にはサブクエリが使える
-- store_itemsとitemsテーブルから、大阪店の扱っている商品を求める
-- step1:大阪店にある商品のidを調べる
SELECT
  item_id
FROM
  store_items
WHERE
  name = '大阪'
;

-- step2:idから商品名と販売単価を求める(INでサブクエリを使う)
SELECT
  name,
  unit_price
FROM
  items
WHERE
  id IN (
    SELECT
      item_id
    FROM
      store_items
    WHERE
      name = '大阪'
  );