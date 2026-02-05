Dataset - https://www.kaggle.com/datasets/carrie1/ecommerce-data

ENVIRONMENT - PostgreSQL

Setup
Table Creation

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    row_id SERIAL PRIMARY KEY,
    InvoiceNo TEXT,
    StockCode TEXT,
    Description TEXT,
    Quantity INTEGER,   -- Column 4
    InvoiceDate TEXT,    -- Column 5 (We import as TEXT first to be safe!)
    UnitPrice NUMERIC,   -- Column 6
    CustomerID TEXT,    -- Column 7
    Country TEXT        -- Column 8
);

-- 1. Standard Date Fix
SET datestyle TO 'ISO, MDY';

-- 2. Clear the table
TRUNCATE TABLE orders;

-- 3. Run the COPY with the correct encoding
COPY orders(InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country)
FROM 'C:/Users/Public/data.csv' 
WITH (
    FORMAT CSV, 
    HEADER true, 
    DELIMITER ',',
    ENCODING 'WIN1252'  -- This tells Postgres to expect characters like £
);


