-- Analysis 2

SELECT COUNT(*)
AS total_transactions
FROM retail_sales;

-- Analysis 3
-- Total Revenue

SELECT
SUM(Revenue)
AS total_revenue
FROM retail_sales;

-- Analysis 4
-- Unique Customers

SELECT
COUNT(
DISTINCT "Customer ID"
)
AS unique_customers
FROM retail_sales;


-- Analysis 5
-- Top 10 Products by Revenue

SELECT
Description,
SUM(Revenue) AS revenue
FROM retail_sales
GROUP BY Description
ORDER BY revenue DESC
LIMIT 10;

-- Analysis 6
-- Top Customers by Revenue

SELECT
"Customer ID",
SUM(Revenue) AS revenue
FROM retail_sales
GROUP BY "Customer ID"
ORDER BY revenue DESC
LIMIT 10;

-- Analysis 7
-- Top Countries by Revenue

SELECT
Country,
SUM(Revenue) AS revenue
FROM retail_sales
GROUP BY Country
ORDER BY revenue DESC;

-- Analysis 8
-- Monthly Revenue Trend

SELECT
Year,
Month,
SUM(Revenue) AS revenue
FROM retail_sales
GROUP BY Year, Month
ORDER BY Year, Month;