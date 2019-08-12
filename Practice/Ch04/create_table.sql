-- itemInsテーブルを作成する
CREATE TABLE itemIns (
  PRIMARY KEY (id),
  id               CHAR(4)      NOT NULL,
  name             VARCHAR(100) NOT NULL,
  grouping         VARCHAR(32)  NOT NULL,
  unit_price       INTEGER      DEFAULT 0,
  cost_price       INTEGER      ,
  registration_day DATE
);
