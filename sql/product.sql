CREATE TABLE products (
    product_id     VARCHAR(10) PRIMARY KEY,
    product_name   VARCHAR(150),
    category       VARCHAR(50),
    sub_category   VARCHAR(50),
    brand          VARCHAR(50),
    unit_price     NUMERIC(10,2),
    cost_price     NUMERIC(10,2),
    supplier       VARCHAR(50),
    stock_quantity INT
);
select *from products;