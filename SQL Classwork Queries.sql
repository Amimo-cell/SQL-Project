--Generating all columns on the orders table
SELECT *
FROM orders;

--Generating all columns on the accounts table
SELECT *
FROM accounts;

--Pull all columns on the web_events table
SELECT *
FROM web_events;

--Generating account_id, account_name, Primary point of contact from the accounts table
SELECT id, name, primary_poc
FROM accounts;

--Generating the order_id, total_quantity, total amount where amount is less than or equal to $1000
SELECT id, total, total_amt_usd
FROM orders
WHERE total_amt_usd <= 1000;

--How many times was facebook used in web_events table
SELECT COUNT (*) AS facebook_count
FROM web_events
WHERE channel = 'facebook';

--First 3 times facebook channel was used
SELECT *
FROM web_events
LIMIT 3;


--Return the least 5 orders from the largest to the smallest
--Include the id, account_id, total_amt_usd
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;


--Get company names that ends with "e"
SELECT name
FROM accounts
WHERE name LIKE '%e';


--Use the web_events table to find all information regarding individuals 
--who were contacted via organic, facebook or adwords channels
SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords', 'facebook');


--Use the web_events table to find all information regarding individuals 
--who were contacted NOT through organic, facebook or adwords channels
SELECT *
FROM web_events
WHERE channel NOT IN ('organic', 'adwords', 'facebook');


--A Query that displays the order_date and gloss quantity data
--where orders gloss quantity is between 500 and 600
SELECT occurred_at, gloss_qty
FROM orders
WHERE gloss_qty BETWEEN 500 AND 600;

















