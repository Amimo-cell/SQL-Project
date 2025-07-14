--What is the average order value (AOV) per customer
SELECT a.name AS customer_name,
       ROUND(SUM(o.total_amt_usd) * 1.0 / COUNT(o.id), 2) AS average_order_value
FROM orders o
JOIN accounts a ON o.account_id = a.id
GROUP BY a.name
ORDER BY average_order_value DESC;