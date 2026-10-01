CREATE TABLE customers (
    customer_id      VARCHAR(10) PRIMARY KEY,
    customer_name    VARCHAR(100),
    email            VARCHAR(150),
    phone            VARCHAR(15),
    gender           VARCHAR(10),
    age              INT,
    city             VARCHAR(50),
    state            VARCHAR(50),
    country          VARCHAR(50),
    signup_date      DATE,
    customer_segment VARCHAR(30)
);