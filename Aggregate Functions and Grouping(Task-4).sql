1. Create Table
  
CREATE TABLE Sales (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_name TEXT,
    category TEXT,
    quantity INTEGER,
    price_per_unit REAL
);


2. Insert Sample Data

INSERT INTO Sales (product_name, category, quantity, price_per_unit) VALUES
('Laptop', 'Electronics', 5, 60000),
('Mobile', 'Electronics', 10, 20000),
('Tablet', 'Electronics', 7, 30000),
('Chair', 'Furniture', 12, 2500),
('Table', 'Furniture', 5, 5000),
('Sofa', 'Furniture', 2, 15000),
('Shoes', 'Fashion', 15, 2000),
('Shirt', 'Fashion', 20, 1000),
('Watch', 'Fashion', 8, 3000);


3. Aggregate Queries

  a) SUM – Total Sales Amount per Category

SELECT category,
       SUM(quantity * price_per_unit) AS total_sales
FROM Sales
GROUP BY category;

Calculates total sales for each category.

   b) COUNT – Number of Products in Each Category

SELECT category,
       COUNT(product_name) AS product_count
FROM Sales
GROUP BY category;

Counts how many products are in each category


   c) AVG – Average Price per Category

SELECT category,
       AVG(price_per_unit) AS avg_price
FROM Sales
GROUP BY category;

 Finds the average unit price for each category.

   d) Using `HAVING` to Filter Groups

SELECT category,
       SUM(quantity * price_per_unit) AS total_sales
FROM Sales
GROUP BY category
HAVING total_sales > 50000;

 Shows only categories where total sales are above ₹50,000.

  e) Multiple Aggregates Together

SELECT category,
       COUNT(*) AS total_products,
       SUM(quantity) AS total_quantity,
       AVG(price_per_unit) AS avg_price
FROM Sales
GROUP BY category;

 Gives product count, total quantity sold, and average price in one query.

