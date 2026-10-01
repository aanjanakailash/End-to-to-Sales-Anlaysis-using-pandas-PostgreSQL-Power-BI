CREATE TABLE date_dimension (
    date         DATE PRIMARY KEY,
    day          INT,
    month        INT,
    month_name   VARCHAR(20),
    quarter      VARCHAR(5),
    year         INT,
    weekday      VARCHAR(20),
    is_weekend   BOOLEAN
);
select *from date_dimension;