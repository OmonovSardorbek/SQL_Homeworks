CREATE TABLE student (
    id INTEGER,
    name TEXT,
    age INTEGER
);

ALTER TABLE student
ALTER COLUMN id SET NOT NULL;

INSERT INTO student
VALUES (1, 'Sardor', 20),
        (2, 'Kamron', 24);

SELECT * FROM student;