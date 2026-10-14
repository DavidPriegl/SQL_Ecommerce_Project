SELECT @@VERSION;

CREATE DATABASE EcommerceCleaning;

CREATE SCHEMA stg;

CREATE SCHEMA clean;

CREATE TABLE stg.customers (
    customer_id        NVARCHAR(50),
    first_name         NVARCHAR(100),
    last_name          NVARCHAR(100),
    email              NVARCHAR(200),
    phone              NVARCHAR(50),
    country            NVARCHAR(100),
    city               NVARCHAR(100),
    registration_date  NVARCHAR(50),
    birth_date         NVARCHAR(50),
    loyalty_tier       NVARCHAR(50)
);

CREATE TABLE stg.products (
    product_id        NVARCHAR(50),
    product_name         NVARCHAR(100),
    category          NVARCHAR(100),
    price              NVARCHAR(200),
    stock              NVARCHAR(50),
    supplier            NVARCHAR(100)
);

CREATE TABLE stg.orders (
    order_id        NVARCHAR(50),
    customer_id         NVARCHAR(100),
    order_date          NVARCHAR(100),
    status              NVARCHAR(200),
    payment_method              NVARCHAR(50),
    shipping_cost            NVARCHAR(100),
    discount_pct     NVARCHAR(50)
);

CREATE TABLE stg.order_items (
    item_id        NVARCHAR(50),
    order_id         NVARCHAR(100),
    product_id          NVARCHAR(100),
    quantity              NVARCHAR(200),
    unit_price              NVARCHAR(50)
);


SELECT 'customers' AS tabla, COUNT(*) AS sorok FROM stg.customers
UNION ALL SELECT 'products',    COUNT(*) FROM stg.products
UNION ALL SELECT 'orders',      COUNT(*) FROM stg.orders
UNION ALL SELECT 'order_items', COUNT(*) FROM stg.order_items;
