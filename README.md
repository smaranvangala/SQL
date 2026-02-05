BASIC_SQL

Dataset - https://www.kaggle.com/datasets/carrie1/ecommerce-data

`ENVIRONMENT - PostgreSQL`

`Setup
Table Creation`

``` sql
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
```
``` sql
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
```

INTERMEDIATE_SQL

Dataset - https://www.kaggle.com/datasets/emmanueltugbeh/northwind-orders-and-order-details/data

`ENVIRONMENT - PostgreSQL`
`Setup
Table Creation`

``` sql
CREATE TABLE orders (
	order_id INT,
	customer_id TEXT,
	employee_id INT,
	order_date DATE,
	required_date DATE,
	shipped_date DATE,
	ship_via INT,
	freight NUMERIC(10,2),
	ship_name TEXT,
	ship_address TEXT,
	ship_city TEXT,
	ship_region TEXT,
	ship_postal_code TEXT,
	ship_country TEXT
);
```

``` sql
CREATE TABLE order_details (
	order_id INT,
	product_id INT,
	unit_price NUMERIC(10,2),
	quantity INT,
	discount NUMERIC(10,2)
);
```
