-- =====================================
-- Sales Performance Analysis
-- =====================================

-- Total revenue
SELECT
    SUM(Quantity * Unit_Price) AS total_revenue
FROM sales;

-- Revenue by region
SELECT
    Region,
    SUM(Quantity * Unit_Price) AS revenue
FROM sales
GROUP BY Region
ORDER BY revenue DESC;

-- Best-selling products
SELECT
    Product,
    SUM(Quantity) AS total_units
FROM sales
GROUP BY Product
ORDER BY total_units DESC;

-- Monthly sales trend
SELECT
    strftime('%Y-%m', Order_Date) AS month,
    SUM(Quantity * Unit_Price) AS revenue
FROM sales
GROUP BY month
ORDER BY month;