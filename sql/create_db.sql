--  4K database pages
PRAGMA page_size = 4096;


-- create basic layout
DROP TABLE IF EXISTS oders;
CREATE TABLE orders (
    id          INTEGER primary key autoincrement,
    order_date  DATE,
    customer_id INTEGER NOT NULL,
    product_id  INTEGER NOT NULL,
    price       INTEGER NOT NULL,
    shipment    VARCHAR(256) NOT NULL,
    payment     VARCHAR(256) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
    FOREIGN KEY (product_id) REFERENCES products(id)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    id           INTEGER primary key autoincrement,
    firstname    VARCHAR(256) NOT NULL,
    lastname     VARCHAR(256) NOT NULL,
    address_id   INTEGER NOT NULL,
    birthdate    DATE,
    phone_number VARCHAR(256),
    email        VARCHAR(256) NOT NULL,
    FOREIGN KEY (address_id) REFERENCES address(id)
);

DROP TABLE IF EXISTS address;
CREATE TABLE address (
    id           INTEGER primary key autoincrement,
    street       VARCHAR(256) NOT NULL,
    street_number INTEGER NOT NULL,
    plz          INTEGER NOT NULL,
    city         VARCHAR(256) NOT NULL
);

DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id           INTEGER primary key autoincrement,
    name         VARCHAR(256) NOT NULL,
    price        INTEGER NOT NULL,
    amount INTEGER NOT NULL
);


-- filling db with entries

INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '1', '91058', 'Erlangen');
INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '2', '91058', 'Erlangen');
INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '3', '91058', 'Erlangen');
INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '4', '91058', 'Erlangen');
INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '5', '91058', 'Erlangen');
INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '6', '91058', 'Erlangen');
INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '7', '91058', 'Erlangen');
INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '8', '91058', 'Erlangen');
INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '9', '91058', 'Erlangen');
INSERT INTO address (street, street_number, plz, city) VALUES ('Am Markt', '10', '91058', 'Erlangen');

INSERT INTO products (name, price, amount) VALUES ('CPU', '500', '50');
INSERT INTO products (name, price, amount) VALUES ('Mainboard', '150', '50');
INSERT INTO products (name, price, amount) VALUES ('RAM', '100', '100');
INSERT INTO products (name, price, amount) VALUES ('Power supply', '100', '100');
INSERT INTO products (name, price, amount) VALUES ('Case', '80', '150');
INSERT INTO products (name, price, amount) VALUES ('Monitor', '350', '50');
INSERT INTO products (name, price, amount) VALUES ('Fan', '10', '500');
INSERT INTO products (name, price, amount) VALUES ('Cooler', '70', '100');
INSERT INTO products (name, price, amount) VALUES ('Mouse', '20', '200');
INSERT INTO products (name, price, amount) VALUES ('Keyboard', '50', '200');

INSERT INTO customers (firstname, lastname, address_id, birthdate, phone_number, email) VALUES ('Peter', 'Parker', '1', '2001-10-04', '09131-1234', '1@zero.com');
INSERT INTO customers (firstname, lastname, address_id, birthdate, phone_number, email) VALUES ('Peter', 'Griffin', '2', '1999-09-17', '09131-2346', '2@zero.com');
INSERT INTO customers (firstname, lastname, address_id, birthdate, phone_number, email) VALUES ('John', 'Connor', '3', '1980-05-29', '09131-9852', '3@zero.com');
INSERT INTO customers (firstname, lastname, address_id, birthdate, phone_number, email) VALUES ('Tony', 'Stark', '4', '1978-01-11', '09131-5234', '4@zero.com');
INSERT INTO customers (firstname, lastname, address_id, birthdate, phone_number, email) VALUES ('Bruce', 'Banner', '5', '1989-12-21', '09131-6522', '5@zero.com');

INSERT INTO orders (order_date, customer_id, product_id, price, shipment, payment) VALUES ('2020-11-26', '1', '1', '500', 'DHL', 'PayPal');
INSERT INTO orders (order_date, customer_id, product_id, price, shipment, payment) VALUES ('2020-11-25', '1', '2', '150', 'DHL', 'PayPal');
INSERT INTO orders (order_date, customer_id, product_id, price, shipment, payment) VALUES ('2020-11-25', '2', '4', '100', 'Hermes', 'SEPA');
INSERT INTO orders (order_date, customer_id, product_id, price, shipment, payment) VALUES ('2020-11-27', '3', '5', '80', 'DPD', 'Cash/Pick up');


-- basic views

CREATE VIEW view_parker AS SELECT * FROM customers, orders WHERE lastname='Parker';
CREATE VIEW view_customers AS SELECT * FROM customers;
CREATE VIEW view_products AS SELECT * FROM products;
CREATE VIEW view_orders AS SELECT * FROM orders;
CREATE VIEW view_addresses AS SELECT * FROM address;
