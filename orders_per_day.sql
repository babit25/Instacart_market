--3. Seasonal Trends Analysis:

--Analysis: Identify seasonal patterns in customer behavior and product sales.

--6. What is the distribution of orders placed on different days of the week?

SELECT 
	order_dow,
	COUNT(order_id) AS number_of_orders
FROM 
	Instacart.dbo.orders
GROUP BY 
	order_dow
ORDER BY 
	number_of_orders DESC