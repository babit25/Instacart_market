# Instacart_market

![LOGO](https://github.com/babit25/Instacart_market/assets/108529070/832318b9-3d47-489b-9cc5-cf785cfd6175)

[Image credit](https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.com%2Ffree-icon%2Fshopping-cart_263142&psig=AOvVaw2z_Jzz0Gmv1HHiy0mqdhzL&ust=1698771013601000&source=images&cd=vfe&opi=89978449&ved=0CBQQjhxqFwoTCLD_paidnoIDFQAAAAAdAAAAABAE)

# Introduction

Instacart is an American delivery company based in San Francisco that operates a grocery delivery and pick-up service in the United States and Canada accessible via a website and mobile app. It allows customers to order groceries from participating retailers with the shopping being done by a personal shopper. The company also provides alcohol delivery in states and provinces where it is allowed.

The company aims to explore and analyze customer shopping behavior using transactional data from their platform. They have provided the dataset which provides a rich source of information that can be used to derive valuable insights for optimizing operations and enhancing customer experiences.

 

The Three methods that I used to analyse this datasets are:

A. Market Basket Analysis

B. Customer Segmentation

C. Seasonal Trends Analysis (STA)


# The Dataset

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


# Data Cleaning and Preliminary Analysis

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

**_  a. Top 10 product pairs that are most frequently purchased together_**

![Top 10 pairs](https://github.com/babit25/Instacart_market/assets/108529070/5fab2217-7d23-4dba-9aca-3845476cd0a9)


![Top 10 Bought Together](https://github.com/babit25/Instacart_market/assets/108529070/f8b97471-6b84-4f77-85aa-ca64fb6e9a25)

Banana( or Organic Bananas) seems to be popular among customers as  it constantly appeared in 9 of the top 10 products bought together.


_**b. Top 5 products that are most commonly added to the cart first**_

 ![Top 5 added_to_cart](https://github.com/babit25/Instacart_market/assets/108529070/c3a1c6cf-978f-478d-9e26-ef8de4a0f001)

Banana was mostly added to the cart first with 472,565 of the orders. Bag of Organic Bananas and Organic strawberrys were  second  and third respectively with 379,450 and 264,283 orders. Organic Baby Spinach and Organic Haas Avocado completes the Top 5

_**c. unique products typically included in a single order.**_

![Typical U products](https://github.com/babit25/Instacart_market/assets/108529070/974df860-3f3e-4a96-9c32-caf7e7c35147)


![Typical products](https://github.com/babit25/Instacart_market/assets/108529070/955e678c-f2e4-424b-bdb6-86daca21a07b)



with the most occuring number of unique products included in a single order prefered as the Typical Value. 5 Products were typically included in a single order.

# Customer Segmentation:
Analysis was  carried out to group customers based on their purchasing behavior for targeted marketing efforts

**_ a. different customer segments based on purchase frequency _**

  The customers were grouped based on the average days since their prior orders. 
  
  between
          0 - 8 days as Frequently
  
          9 - 20 days as Occassionally
          
          above 20 days as Rarely

![Purchase Frquency C](https://github.com/babit25/Instacart_market/assets/108529070/6d275444-ad7f-43c4-ab1b-2bafa9a32ff0)


![Purchase Frquency](https://github.com/babit25/Instacart_market/assets/108529070/f1d9d5c7-6c85-4bdb-a95b-e62dc4717aff)

25% of Customers make purchase atleast once in a week with the largest percentage (65%) making atleast a purchase in 2 weeks. the remaining 10% make purchase once in 3 or 4 weeks.

  _**b. 	How many orders have been placed by each customer**_
  
![Number of orders placed C](https://github.com/babit25/Instacart_market/assets/108529070/142ac534-77f9-4546-8d68-7b71dd0c364f)


![Number of orders placed](https://github.com/babit25/Instacart_market/assets/108529070/163e602b-4456-43f6-93dd-720f170f9e58)

The highest number of Order placed by a customer is 100 with the lowest been 4. the average order placed by customers is 17 orders.

# Seasonal Trends Analysis:

To Identify seasonal patterns in customer behavior and product sales

. _**a. The distribution of orders placed on different days of the week**_


![day of week orders](https://github.com/babit25/Instacart_market/assets/108529070/e3d03f7d-b345-418a-900f-db63c99e1a08)


Sunday is the day with highest orders placed with 600,905 orders closely followed  by monday with 587,478 orders. Tuesday completes the Top 3 with 467,260

**_ b. The distribution of orders placed on different days of the week_**
  
![time of the day](https://github.com/babit25/Instacart_market/assets/108529070/d36008fb-7b02-402b-99b1-1c4b217eb99b)

Only few orders were placed between 12 am and 5:00 am as the order placed begins to increase steadily until it peaks at 10 am with 288,418 orders.the orders stays between a range till 4 pm before it begins to reduce steadily.

# Visualize

![DASHBOARD](https://github.com/babit25/Instacart_market/assets/108529070/14fcc96e-9505-4fd5-b561-4512e219e2b8)

# INSIGHTS AND RECOMMENDATION

1. Bananas (Conventional or Organic) is customer's favourite and most popular product among customers. it must always be in stock to avoid customer displeasure.
   
2. Customers who  rarely place orders (more than 20 days) should be Investigated to find reasons why they do not make Frequent purchases.

3. Sundays and Mondays are the days when most orders are placed with the busiest time between 10:00 am to 3:00pm. This period should be targetted for promotions and adverts.

# DATA LIMITATION
1.There was no date data to  aggregate at the day, week, month, quarter, and year level.

2. There was no information on payment made by customers to which made it impossible to segment customers by payments.

# CONCLUSION

Instacart Market is currently on the right track and currently performing well. With over 200k customers and over 3.4 million orders placed, the company has shown tremoendous growth and can still improve. The recommendations should be implemented to help the company futher in its growth.


THANK YOU









