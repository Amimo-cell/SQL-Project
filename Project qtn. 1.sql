--Which customers have placed the highest number of orders?
SELECT a.name AS customer_name,
       COUNT(o.id) AS total_orders
FROM orders o
JOIN accounts a ON o.account_id = a.id
GROUP BY a.name
ORDER BY total_orders DESC
LIMIT 10;