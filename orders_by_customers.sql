--B How many orders have been placed by each customer?

SELECT 
	user_id,
	COUNT(order_id) AS number_of_orders
FROM
	Instacart.dbo.orders
GROUP BY 
	user_id
ORDER BY 
	number_of_orders DESC
