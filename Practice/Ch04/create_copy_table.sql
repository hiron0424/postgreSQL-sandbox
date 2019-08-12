CREATE TABLE itemsCopy
(id CHAR(4) NOT NULL,
 name       VARCHAR(100) NOT NULL,
 grouping   VARCHAR(32) NOT NULL,
 unit_price INTEGER,
 cost_price INTEGER,
 created_at DATE,
 PRIMARY KEY (id)
);