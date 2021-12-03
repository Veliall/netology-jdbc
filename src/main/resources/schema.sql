-- id, name, surname, age, phone_number
CREATE TABLE customers(
    id BIGSERIAL ,
    name VARCHAR (60) NOT NULL ,
    surname VARCHAR (60) NOT NULL ,
    age INT CHECK (age > 0) NOT NULL ,
    phone_number VARCHAR (25) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE orders(
                       id SERIAL UNIQUE ,
                       date timestamp DEFAULT now(),
                       customers_id BIGINT REFERENCES customers (id),
                       product_name varchar(200) NOT NULL ,
                       amount BIGINT NOT NULL CHECK ( amount > 0 ),
                       PRIMARY KEY (id)
);

INSERT INTO customers(NAME, SURNAME, AGE, PHONE_NUMBER)
VALUES ('alexey', 'pff', 22, 0000000),
       ('alexey999', 'idontknow', 30, 1111111),
('alexey2', 'wtf', 22, 2222222),
('alexey3', 'aaaaaaa', 22, 333333),
('alexey4', 'fantasy is absent today', 22, 4444444);


INSERT INTO orders(CUSTOMERS_ID, PRODUCT_NAME, AMOUNT)
VALUES (1, 'milk', 100),
       (1, 'salt', 50),
       (2, 'bread', 30),
       (2, 'bread2', 30),
       (3, 'bread3', 30),
       (4, 'brea4', 30),
       (3, 'onion', 100);
