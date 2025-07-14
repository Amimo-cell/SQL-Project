--How does revenue vary by day of the week
SELECT TO_CHAR(o.occurred_at, 'Day') AS day_of_week,
       SUM(o.total_amt_usd) AS total_revenue
FROM orders o
GROUP BY day_of_week
ORDER BY total_revenue DESC;