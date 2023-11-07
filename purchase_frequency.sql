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

	
	