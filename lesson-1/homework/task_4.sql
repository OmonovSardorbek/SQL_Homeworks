CREATE TABLE category (
    category_id INTEGER PRIMARY KEY,
    category_name TEXT
);

CREATE TABLE item (
    item_id INTEGER PRIMARY KEY,
    item_name TEXT,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES category (category_id)
);

ALTER TABLE item 
DROP CONSTRAINT item_category_id_fkey;
ALTER TABLE item 
ADD CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category (category_id);