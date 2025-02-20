CREATE TABLE account (
    account_id INTEGER PRIMARY KEY,
    balance DECIMAL CHECK (balance >= 0),
    account_type TEXT CHECK (account_type IN ('Saving', 'Checking'))
);

ALTER TABLE account 
DROP CONSTRAINT account_balance_check;
ALTER TABLE account 
ADD CONSTRAINT check_balance CHECK (balance >= 0);
ALTER TABLE account 
DROP CONSTRAINT account_account_type_check;
ALTER TABLE account 
ADD CONSTRAINT check_account_type CHECK (account_type IN ('Saving', 'Checking'));