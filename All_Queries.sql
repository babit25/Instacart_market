-- SQL queries for Instacart Project by @babit

UPDATE 
	Instacart.dbo.orders	
SET
	days_since_prior_order = ROUND(days_since_prior_order,0)	-- reduce the decimal point of the numbers to 0 deimal place

ALTER TABLE 
	Instacart.dbo.orders 
ALTER Column
	days_since_prior_order int;									-- Change the data type to integer

UPDATE 
	Instacart.dbo.orders										-- To change the orders_dow to actual days
SET
	order_dow = ( 
	CASE
		WHEN order_dow = 0
			THEN 'Sunday'
		WHEN order_dow = 1
			THEN 'Monday'
		WHEN order_dow = 2
			THEN 'Tuesday'
		WHEN order_dow = 3
			THEN 'Wednesday'
		WHEN order_dow = 4
			THEN 'Thursday'
		WHEN order_dow = 5
			THEN 'Friday'
		WHEN order_dow = 6
			THEN 'Saturday'
	END )

--EXPLORATORY DATA ANALYSIS (EDA)

SELECT  
	COUNT(DISTINCT user_id)  AS number_of_customers,
	COUNT (DISTINCT order_id) AS number_of_orders
FROM 
	Instacart.dbo.orders

SELECT 
	COUNT(product_id) AS number_of_product
FROM 
	Instacart.dbo.products

SELECT
	COUNT (department_id) AS number_of_departments
FROM 
	Instacart.dbo.departments

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

--2. Customer Segmentation:

-- Group customers based on their purchasing behavior for targeted marketing efforts.
--A. 	What are the different customer segments based on purchase frequency?


WITH order_frequency AS												--CTE to calculate the average days of orders made by customers
	(SELECT 
		user_id, 
		AVG (days_since_prior_order) AS average_days_of_order
	FROM
		Instacart.dbo.orders
	GROUP BY
		user_id)
SELECT user_id,
	CASE															-- Case statement to group the average days  betwween orders by customers
		WHEN average_days_of_order <= 8 
			THEN 'Frequently'
		WHEN average_days_of_order <= 20 
			THEN 'Occasionally'
		WHEN average_days_of_order > 20
			THEN 'Rarely'
	END AS
		order_frequency
FROM 
	order_frequency 

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


