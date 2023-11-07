--b.	What are the top 5 products that are most commonly added to the cart first?

SELECT TOP 5
	product_name,
	COUNT(a.product_id) AS number_of_times
FROM	
	Instacart.dbo.order_products__train a
JOIN 
	Instacart.dbo.products b ON a.product_id = b.product_id
WHERE
	add_to_cart_order = 1
GROUP BY
	product_name
ORDER BY
	number_of_times DESC

