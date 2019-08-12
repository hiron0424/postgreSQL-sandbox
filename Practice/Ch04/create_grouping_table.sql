-- 集約したデータを入れるテーブルを作成
CREATE TABLE itemGrouping (
  PRIMARY KEY (grouping),
  grouping       VARCHAR(32) NOT NULL,
  sum_unit_price INTEGER     ,
  sum_cost_price INTEGER
);