# instacart_market

![LOGO](https://github.com/babit25/Instacart_market/assets/108529070/832318b9-3d47-489b-9cc5-cf785cfd6175)


# Introduction

Instacart is an American delivery company based in San Francisco that operates a grocery delivery and pick-up service in the United States and Canada accessible via a website and mobile app. It allows customers to order groceries from participating retailers with the shopping being done by a personal shopper. The company also provides alcohol delivery in states and provinces where it is allowed.

The company aims to explore and analyze customer shopping behavior using transactional data from their platform. They have provided the dataset which provides a rich source of information that can be used to derive valuable insights for optimizing operations and enhancing customer experiences.

The three methods that I used to analyse this datasets are:
A. Market Basket Analysis
B. Customer Segmentation
C. Seasonal Trends Analysis (STA)

# Dataset

The Datasets was made available with the following summary

●	aisles.csv - Contains information about different product categories (aisles).                     134 Rows & 2 Columns

●	departments.csv - Provides details about various departments within the store.                     21 Rows & 2 Columns

●	order_products__prior.csv - Includes information about products included in prior customer orders. 32M Rows  & 4 Columns

●	order_products__train.csv - Contains details about products in the training set of customer orders. 1.3M Rows & 4 Columns

●	orders.csv - Provides information about individual orders and customers.                           3.4M Rows & 7 Columns

●	products.csv - Contains details about products, including aisle and department IDs.                49,688 Rows & 3 Columns

#  Tools Used
● SQL (Microsoft SQL Server Management Studio)

● Power Bi

# Skills
● Joins

● Unions

● CTE

● Case Statement


# Data Cleaning and Initial Analysis

The orders table contains some NULL Values in the **days_since_prior_order** column which was for first time orders. I changed the decimal places of the figures in the 	**days_since_prior_order** column to 0 and changed the datatype to integer.

![data_type_change](https://github.com/babit25/Instacart_market/assets/108529070/b3b3f4d1-4709-4219-a0fa-861027f515f2)

The **order_dow** column was also updated to show the actual days instead of 0-6.

![days_of_week](https://github.com/babit25/Instacart_market/assets/108529070/7952583c-39e3-40ab-8374-9ecef6256696)


from Preliminary Analysis , the number of  customers,products and orders are 206,209, 49,688 , and 3,421,083 respectively

![Descriptive c](https://github.com/babit25/Instacart_market/assets/108529070/1665666e-ace3-49b7-8c9c-3fddefd761f5)


![Descriptive](https://github.com/babit25/Instacart_market/assets/108529070/41b65be7-ee86-4ea3-9041-abf720d75a21)

# Database ERD

![Model](https://github.com/babit25/Instacart_market/assets/108529070/117d99b1-425a-4ffa-9507-b533452e8ee7)


# Market Basket Analysis:
This Analysis was carried out in order to  Identify frequently co-occurring products in orders to improve store layout and marketing strategies.
  a. Top 10 product pairs that are most frequently purchased together

![Top 10 pairs](https://github.com/babit25/Instacart_market/assets/108529070/5fab2217-7d23-4dba-9aca-3845476cd0a9)


![Top 10 Bought Together](https://github.com/babit25/Instacart_market/assets/108529070/f8b97471-6b84-4f77-85aa-ca64fb6e9a25)

Banana was the constant and seems to be popular has it appeared in 9 of the top 10 products bought together.

 b. Top 5 products that are most commonly added to the cart first

 ![Top 5 added_to_cart](https://github.com/babit25/Instacart_market/assets/108529070/c3a1c6cf-978f-478d-9e26-ef8de4a0f001)

Banana was mostly added to the cart first with 472,565 of the orders with Bag of Organic Bananas and Organic strawberrys  second  and third respectively with 379,450 and 264,283 orders. Organic Baby Spinach and Organic Haas Avocado completes the Top 5

c. unique products typically included in a single order.

![Typical U products](https://github.com/babit25/Instacart_market/assets/108529070/974df860-3f3e-4a96-9c32-caf7e7c35147)


![Typical products](https://github.com/babit25/Instacart_market/assets/108529070/955e678c-f2e4-424b-bdb6-86daca21a07b)



with the most occuring number of unique products included in a single order prefered as Typical. 5 Products were typically included in a single order.

# Customer Segmentation:
Analysis was  carried out to group customers based on their purchasing behavior for targeted marketing efforts
  a. different customer segments based on purchase frequency
  
  The customers were grouped based on the average days since their prior orders. 
  between 0 - 8 days as Frequently
          9 - 20 days as Occassionally
          above 20 days as Rarely

![Purchase Frquency C](https://github.com/babit25/Instacart_market/assets/108529070/6d275444-ad7f-43c4-ab1b-2bafa9a32ff0)


![Purchase Frquency](https://github.com/babit25/Instacart_market/assets/108529070/f1d9d5c7-6c85-4bdb-a95b-e62dc4717aff)

25% of Customers make purchase atleast once in a week with the largest percentage (65%) making atleast a purchase in 2 weeks. the remaining 10% make purchase once in 3 or 4 weeks.

  b. 	How many orders have been placed by each customer
  
![Number of orders placed C](https://github.com/babit25/Instacart_market/assets/108529070/142ac534-77f9-4546-8d68-7b71dd0c364f)


![Number of orders placed](https://github.com/babit25/Instacart_market/assets/108529070/163e602b-4456-43f6-93dd-720f170f9e58)

The highest number of Order placed by a customer is 100 with the lowest been 4. the average order placed by customers is 17 orders.

# Seasonal Trends Analysis:














