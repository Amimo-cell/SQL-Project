--What is the monthly trend of total sales
SELECT DATE_TRUNC('month', o.occurred_at) AS month,
       SUM(o.total_amt_usd) AS monthly_sales
FROM orders o
GROUP BY month
ORDER BY month;