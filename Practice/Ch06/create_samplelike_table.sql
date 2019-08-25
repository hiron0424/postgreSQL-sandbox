-- DDL:create table 'sample_like'
CREATE TABLE sample_like(
  strcol VARCHAR(6) NOT NULL,
  PRIMARY KEY (strcol)
);

-- DML:Inset rows into table 'sample_like'
BEGIN TRANSACTION;

INSERT INTO sample_like VALUES ('abcddd');
INSERT INTO sample_like VALUES ('dddabc');
INSERT INTO sample_like VALUES ('abdddc');
INSERT INTO sample_like VALUES ('abcdd');
INSERT INTO sample_like VALUES ('ddabc');
INSERT INTO sample_like VALUES ('abddc');

COMMIT;