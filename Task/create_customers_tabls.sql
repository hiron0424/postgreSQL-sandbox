CREATE TABLE customers
  (
    id           INTEGER      NOT NULL,
    name         VARCHAR(128) NOT NULL,
    address      VARCHAR(256) NOT NULL,
    phone_number CHAR(10)     ,
    mail_address CHAR(20)     ,
    PRIMARY KEY (id)
  );