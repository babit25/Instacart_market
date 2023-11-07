--C.	How many unique products are typically included in a single order?

WITH Nup AS(															--CTE to get the number of unique products ordered by order_id
	SELECT
		order_id,
		COUNT(DISTINCT product_id) AS number_of_unique_product
	FROM	
		Instacart.dbo.order_products__prior 
	GROUP BY 
		order_id)
SELECT TOP 1
	number_of_unique_product,
	COUNT(number_of_unique_product) AS number_of_occurence
FROM 
	Nup
GROUP BY
	number_of_unique_product
ORDER BY
	number_of_occurence DESC