-- DDL：create table.
CREATE TABLE sample_string (
  str1 VARCHAR(40),
  str2 VARCHAR(40),
  str3 VARCHAR(40)
)
;

-- DDL：regiter the data.
BEGIN TRANSACTION;

INSERT INTO sample_string VALUES ('あいう', 'えお', NULL);
INSERT INTO sample_string VALUES ('abc', 'def', NULL);
INSERT INTO sample_string VALUES ('山田', '太郎', 'です');
INSERT INTO sample_string VALUES ('aaa', NULL, NULL);
INSERT INTO sample_string VALUES (NULL, 'あああ', NULL);
INSERT INTO sample_string VALUES ('@!#$%', NULL, NULL);
INSERT INTO sample_string VALUES ('ABC', NULL, NULL);
INSERT INTO sample_string VALUES ('aBC', NULL, NULL);
INSERT INTO sample_string VALUES ('abc太郎', 'abc', 'ABC');
INSERT INTO sample_string VALUES ('abcdefabc', 'abc', 'ABC');
INSERT INTO sample_string VALUES ('ミックマック', 'ッ', 'っ');

COMMIT;