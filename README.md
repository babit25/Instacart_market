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


![Q1 Table PBi](https://github.com/babit25/Instacart_market/assets/108529070/8536b85f-99de-443d-8dc1-d55678ef3ae9)





