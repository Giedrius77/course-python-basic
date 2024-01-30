-- DROP TABLE customer;
CREATE TABLE IF NOT EXISTS customer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(15),
    last_name VARCHAR(25)
);
-- DROP TABLE product;
CREATE TABLE IF NOT EXISTS product (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name VARCHAR(30),
    product_price DECIMAL(18.2)
);
-- DROP TABLE bill_line;
CREATE TABLE IF NOT EXISTS bill_line (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    quantity DECIMAL(18.2),
    product_id INTEGER REFERENCES product(id),
    bill_id INTEGER REFERENCES bill(id)
);
-- DROP TABLE bill;
CREATE TABLE IF NOT EXISTS bill (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cashier_name VARCHAR(20),
    customer_id INTEGER REFERENCES customer(id)
);