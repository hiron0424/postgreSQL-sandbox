-- SUM,AVGの集約関数をウィンドウ関数として使う
-- 集計結果は累計になる
SELECT
  id,
  name,
  unit_price,
  SUM (unit_price)
    OVER (
      ORDER BY id
    ) AS current_sum
FROM
  items
;

-- AVGも累計になる
SELECT
  id,
  name,
  unit_price,
  AVG (unit_price)
    OVER (
      ORDER BY id
    ) AS current_avg
FROM
  items
;

-- 移動平均の算出
-- ウィンドウの中で更に集計範囲を細かく指定出来るオプション機能あり
-- その集計範囲をフレームと呼ぶ
-- 集計対象を直近の3行にする場合
SELECT
  id,
  name,
  unit_price,
  AVG (unit_price)
    OVER (
      ORDER BY id
      -- ORDER BYの後に指定範囲のキーワードを使用する
      ROWS 2 PRECEDING
    ) AS moving_avg
FROM
  items
;

-- カレントレコードと、前後一行のレコードを含める場合
SELECT
  id,
  name,
  unit_price,
  AVG (unit_price)
    OVER (
      ORDER BY id
      -- 1行前と1行後の間を集計する意味
      ROWS BETWEEN 1 PRECEDING
      AND 1 FOLLOWING
    ) AS moving_avg
FROM
  items
;