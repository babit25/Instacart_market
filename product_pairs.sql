--1. Market Basket Analysis:

 --Identify frequently co-occurring products in orders to improve store layout and marketing strategies.

 --A. What are the top 10 product pairs that are most frequently purchased together?

SELECT TOP 10 
	c.product_name AS product_1,
	d.product_name AS product_2,
	COUNT(*) AS times_bought_together
FROM
	Instacart.dbo.order_products__train a
JOIN 
	Instacart.dbo.order_products__train b ON a.order_id = b.order_id
JOIN
	Instacart.dbo.products c ON c.product_id = a.product_id
JOIN 
	Instacart.dbo.products d ON d.product_id = b.product_id
WHERE
	a.product_id > b.product_id 
GROUP BY 
	c.product_name,
	d.product_name
ORDER BY 
	times_bought_together DESC


	

