CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    order_date DATE
);

ALTER TABLE orders 
DROP CONSTRAINT orders_pkey;
ALTER TABLE orders 
ADD PRIMARY KEY (order_id);