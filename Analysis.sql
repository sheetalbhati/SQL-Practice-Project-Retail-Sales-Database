-- 1. View all data
SELECT * FROM retail_sales;

-- 2. Count total transactions
SELECT COUNT(*) AS total_transactions FROM retail_sales;

-- 3. Count unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers FROM retail_sales;

-- 4. List product categories
SELECT DISTINCT category FROM retail_sales;

-- 5. Check for sales on a specific date (2022-11-05)
SELECT * FROM retail_sales WHERE sale_date = '2022-11-05';

-- 6. Transactions where category is 'Clothing' and quantity > 4
SELECT * 
FROM retail_sales
WHERE category = 'Clothing'
  AND quantity > 4;

-- 7. Total sales per category
SELECT category, SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY category;

-- 8. Average age of customers who bought from 'Beauty'
SELECT ROUND(AVG(age), 2) AS avg_age
FROM retail_sales
WHERE category = 'Beauty';

-- 9. Transactions with sales above 1000
SELECT * 
FROM retail_sales
WHERE total_sale > 1000;

-- 10. Number of transactions by gender and category
SELECT category, gender, COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY category, gender
ORDER BY category;

-- 11. Average sale per day
SELECT sale_date, ROUND(AVG(total_sale), 2) AS avg_daily_sale
FROM retail_sales
GROUP BY sale_date
ORDER BY sale_date;

-- 12. Top 5 customers by total sales
SELECT customer_id, SUM(total_sale) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- 13. Unique customers per category
SELECT category, COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY category;

-- 14. Orders by shift (Morning <12, Afternoon 12-17, Evening >17)
SELECT
    CASE
        WHEN HOUR(sale_time) < 12 THEN 'Morning'
        WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY shift;

