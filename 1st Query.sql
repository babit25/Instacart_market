SELECT TOP 3 *
FROM Instacart.dbo.products


SELECT TOP 3 *
FROM Instacart.dbo.orders


SELECT TOP 3 *
FROM Instacart.dbo.departments

SELECT TOP 3 *
FROM Instacart.dbo.aisles

SELECT TOP 3 *
FROM Instacart.dbo.order_products__prior
--order by order_id

SELECT TOP 3 *
FROM Instacart.dbo.order_products__train
--order by order_id

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







