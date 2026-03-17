
-- Create table
CREATE TABLE ecommerce_sales (
    InvoiceNo INT,
    StockCode VARCHAR(10),
    Description VARCHAR(100),
    Quantity INT,
    InvoiceDate DATE,
    UnitPrice FLOAT,
    CustomerID INT,
    Country VARCHAR(50),
    TotalSales FLOAT
);

-- Total Revenue
SELECT SUM(TotalSales) AS total_revenue
FROM ecommerce_sales;

-- Revenue by Country
SELECT Country, SUM(TotalSales) AS revenue
FROM ecommerce_sales
GROUP BY Country
ORDER BY revenue DESC;

-- Top Customers
SELECT CustomerID, SUM(TotalSales) AS total_spent
FROM ecommerce_sales
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;

-- Monthly Revenue Trend
SELECT DATE_TRUNC('month', InvoiceDate) AS month,
       SUM(TotalSales) AS revenue
FROM ecommerce_sales
GROUP BY month
ORDER BY month;

-- RFM Metrics
SELECT
    CustomerID,
    MAX(InvoiceDate) AS last_purchase,
    COUNT(DISTINCT InvoiceNo) AS frequency,
    SUM(TotalSales) AS monetary
FROM ecommerce_sales
GROUP BY CustomerID;
