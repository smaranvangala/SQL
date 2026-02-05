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
