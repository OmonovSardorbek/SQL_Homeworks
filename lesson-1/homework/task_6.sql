CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT DEFAULT 'Unknown'
);

ALTER TABLE customer
DROP CONSTRAINT customer_city;

ALTER TABLE customer
ADD CONSTRAINT customer_city DEFAULT 'Unknown' FOR city;