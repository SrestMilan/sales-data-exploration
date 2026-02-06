 --Data Exploration with SELECT
 /*
Example: Sales Data Exploration 
Suppose you work for a company that sells products online. 
Your team is responsible for analyzing sales data to identify trends and patterns, and to make recommendations for improving the company's sales performance. 
You have been tasked with exploring the sales data using SQL.
*/

--1 Create the sales table
CREATE TABLE sales (
  id INT,
  sale_date DATE,
  product VARCHAR(50),
  quantity INT,
  revenue DECIMAL(10,2)
);

--2 Insert data into sales table
INSERT INTO sales (id, sale_date, product, quantity, revenue)
VALUES
  (1, '2021-01-01', 'Product A', 10, 100.00),
  (2, '2021-01-02', 'Product B', 5, 50.00),
  (3, '2021-01-03', 'Product C', 15, 150.00),
  (4, '2021-01-04', 'Product A', 8, 80.00),
  (5, '2021-01-05', 'Product B', 12, 120.00),
  (6, '2021-01-06', 'Product C', 20, 200.00),
  (7, '2021-01-07', 'Product A', 6, 60.00),
  (8, '2021-01-08', 'Product B', 18, 180.00),
  (9, '2021-01-09', 'Product C', 10, 100.00),
  (10, '2021-01-10', 'Product A', 4, 40.00);
  
  
  
  /*Explore the sales data
  Now that you have created and populated the sales table, you can use SQL to explore the data and gain insights into it.
  Here are some examples of SQL queries you can use:
  */

  --3 Retrieve all the data from the sales table:
  select * from sales

  --4 Retrieve data only for a specific product, such as "Product A":
  select * from sales where product = 'Product A'

  --5 Retrieve the total revenue for each day:
  select sale_date, sum(revenue) as total_revenue from sales group by sale_date

  --6 Retrieve the total revenue for each product:
  select product, sum(revenue) as total_product_revenue from sales group by product

  --7 Retrieve the top-selling products in descending order by quantity sold:
  select product, sum(quantity) as total_quantity from sales group by product order by sum(quantity) desc




