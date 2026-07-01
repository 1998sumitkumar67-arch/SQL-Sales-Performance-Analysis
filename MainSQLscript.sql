SELECT COUNT(*) AS total_rows
FROM superstore_sales;
DESCRIBE superstore_sales;
SELECT
MIN(`Order Date`) AS first_order,
MAX(`Order Date`) AS last_order
FROM superstore_sales;
SELECT
SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS null_sales,
SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS null_profit,
SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS null_quantity
FROM superstore_sales;
SELECT
COUNT(*) AS total_rows,
COUNT(DISTINCT `Row ID`) AS unique_rows
FROM superstore_sales;
SELECT
ROUND(SUM(Sales),2) AS total_sales
FROM sales_analysis.superstore_sales;
SELECT
ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales;
SELECT
SUM(Quantity) AS total_quantity
FROM sales_analysis.superstore_sales;
SELECT
COUNT(DISTINCT `Order ID`) AS total_orders
FROM sales_analysis.superstore_sales;
SELECT
    `Product Name`,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales
GROUP BY `Product Name`
ORDER BY total_profit DESC
LIMIT 10;
SELECT
    `Product Name`,
    ROUND(SUM(Profit),2) AS total_loss
FROM sales_analysis.superstore_sales
GROUP BY `Product Name`
ORDER BY total_loss ASC
LIMIT 10;
SELECT
    Category,
    ROUND(SUM(Sales),2) AS total_sales
FROM sales_analysis.superstore_sales
GROUP BY Category
ORDER BY total_sales DESC;
SELECT
    Category,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales
GROUP BY Category
ORDER BY total_profit DESC;
SELECT
    Region,
    ROUND(SUM(Sales),2) AS total_sales
FROM sales_analysis.superstore_sales
GROUP BY Region
ORDER BY total_sales DESC;
SELECT
    Region,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales
GROUP BY Region
ORDER BY total_profit DESC;
SELECT
    City,
    ROUND(SUM(Sales),2) AS total_sales
FROM sales_analysis.superstore_sales
GROUP BY City
ORDER BY total_sales DESC
LIMIT 10;
SELECT
    City,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales
GROUP BY City
ORDER BY total_profit DESC
LIMIT 10;
SELECT
    City,
    ROUND(SUM(Profit),2) AS total_loss
FROM sales_analysis.superstore_sales
GROUP BY City
ORDER BY total_loss ASC
LIMIT 10;
SELECT
    `Ship Mode`,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales
GROUP BY `Ship Mode`
ORDER BY total_sales DESC;
SELECT
    YEAR(`Order Date`) AS sales_year,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales
GROUP BY YEAR(`Order Date`)
ORDER BY sales_year;
SELECT
    Segment,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales
GROUP BY Segment
ORDER BY total_sales DESC;
SELECT
    `Sub-Category`,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales
GROUP BY `Sub-Category`
ORDER BY total_profit DESC;
SELECT
    State,
    ROUND(SUM(Sales),2) AS total_sales,
    ROUND(SUM(Profit),2) AS total_profit
FROM sales_analysis.superstore_sales
GROUP BY State
ORDER BY total_profit DESC
LIMIT 10;