
DROP TABLE IF EXISTS book;
CREATE TABLE book (
    book_id INTEGER PRIMARY KEY IDENTITY,
    title NVARCHAR(255),
    author NVARCHAR(255),
    published_year INTEGER
);

DROP TABLE IF EXISTS member;
CREATE TABLE member (
    member_id INTEGER PRIMARY KEY IDENTITY,
    name NVARCHAR(255),
    email NVARCHAR(255),
    phone_number NVARCHAR(255)
);

DROP TABLE IF EXISTS loan;
CREATE TABLE loan (
    loan_id INTEGER PRIMARY KEY IDENTITY,
    book_id INTEGER FOREIGN KEY REFERENCES book(book_id),
    member_id INTEGER FOREIGN KEY REFERENCES member(member_id),
    loan_date DATE,
    return_date DATE NULL
);


INSERT INTO book (book_id, title, author, published_year) VALUES (1, 'The Catcher in the Rye', 'J.D. Salinger', 1951);
INSERT INTO member (member_id, name, email, phone_number) VALUES (1, 'John Doe', 'john@example.com', '1234567890');
INSERT INTO loan (loan_id, book_id, member_id, loan_date, return_date) VALUES (1, 1, 1, '2024-02-19', NULL);


SELECT * FROM book;
SELECT * FROM member;
SELECT * FROM loan;