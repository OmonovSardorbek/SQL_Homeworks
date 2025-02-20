CREATE TABLE books (
    book_id INTEGER IDENTITY PRIMARY KEY,
    title NVARCHAR(255) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    genre VARCHAR(255) DEFAULT 'Unknown'
); 

INSERT INTO books (title, price) VALUES ('T_SQL', 10.99), ('Kafka', 8.99);
SELECT * FROM books;