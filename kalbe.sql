
-- Query  1
SELECT marital_status, AVG(age) AS average_age
FROM customer
WHERE marital_status IN ('Single', 'Married')
GROUP BY marital_status;

-- Query  2
SELECT 
	CASE WHEN gender = 0 THEN 'female' 
	WHEN gender = 1 THEN 'male' 
	END AS gender, AVG(age) AS average_age
FROM customer
GROUP BY gender;

-- Query 3
SELECT s.store_name, SUM(t.qty) AS total_quantity
FROM "transaction" t 
JOIN store s ON t.store_id = s.store_id
GROUP BY s.store_name
ORDER BY total_quantity DESC
LIMIT 1;

--Query 4
SELECT p.product_name, SUM(t.total_amount) AS total_amount
FROM "transaction" t 
JOIN product p ON t.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_amount DESC
LIMIT 1;




