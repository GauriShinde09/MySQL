-- 1. Create a database named Assignment4_26032026.

-- 2. Create a table Customers with columns:
--    CustomerID (INT, PK), CustomerName (VARCHAR), Age (INT), City (VARCHAR), JoinDate (DATE).

-- 3. Insert    10 records    into Customers.

-- 4. Create a table Products with columns:
--    ProductID, ProductName, Category, Price.

-- 5. Insert    10 records    into Products.

-- 6. Create a table Orders with columns:
--    OrderID, CustomerID, ProductID, Quantity, OrderDate.

-- 7. Insert    10 records    into Orders.

-- 8. Add a column Email to Customers.

-- 9. Update price of a specific product.

-- 10. Delete an order where OrderID = 3.

-- 11. Display all customer names and cities.

-- 12. Show product names and prices.

-- 13. Display all orders with quantity greater than 2.

-- 14. Show customers who belong to a specific city.

-- 15. Display products whose price is between 100 and 500.

-- 16. Display product name and price after adding 10% tax.

-- 17. Show total cost for each order (Price × Quantity).

-- 18. Display customer name along with years since joining.

-- 19. Show product price after applying a discount of 20%.

-- 20. Display quantity and double of quantity for each order.

-- 21. Display all products sorted by price (low to high).

-- 22. Display customers sorted by name in reverse alphabetical order.

-- 23. Show orders sorted by quantity (highest first).

-- 24. Display products sorted by category and then price.

-- 25. Show top 5 most expensive products.

-- 26. Count number of customers in each city.

-- 27. Find average product price in each category.

-- 28. Find maximum quantity ordered for each product.

-- 29. Count number of orders per customer.

-- 30. Find total quantity sold per product.

-- 31. Categorize products:

--  Price > 500 → Expensive
--  200–500 → Moderate
--  < 200 → Budget

-- 32. Display order status:

--  Quantity ≥ 5 → Bulk
--  Otherwise → Regular

-- 33. Categorize customers based on age:

--  < 25 → Young
--  25–40 → Adult
--  > 40 → Senior

-- 34. Show discount label:

--  Price ≥ 500 → High Discount Eligible
--  Otherwise → Standard

-- 35. Categorize orders by quantity level (custom logic).

-- 36. Display product names and their prices arranged from highest to lowest.

-- 37. Show each category with total number of products and arrange alphabetically.

-- 38. Display product name with price after adding 15% tax and show only those above 300.

-- 39. Show each product with the highest quantity ordered for it.

-- 40. Display customer names and assign label “Premium” if age > 35, otherwise “Standard”, and arrange by name.

-- 41. Show cities having more than 2 customers.

-- 42. Display order details along with total cost and arrange by total cost.

-- 43. Show category-wise average price and display only those above 250.

-- 44. Display product and total quantity sold, arranged from highest to lowest.

-- 45. Display product names and assign labels:

--  Above 700 → Luxury
--  300–700 → Mid-Range
--  Below 300 → Affordable  


create schema if not exists Assignment_4;
use Assignment_4;

create table Customers(
customer_id int primary key auto_increment,
customer_name varchar(100),
Age int,
City varchar(50),
Join_date date
);

create table Products(
Products_id int primary key auto_increment,
product_name varchar(100),
Category varchar(50),
Price decimal(10,2)
);

create table orders(
order_id int primary key auto_increment,
customer_id int,
product_id int,
Quantity int,
Order_Date date
);

INSERT INTO Customers (customer_name, Age, City, Join_date) VALUES
('Amit Sharma', 25, 'Mumbai', '2022-01-15'),
('Neha Patil', 28, 'Pune', '2021-03-20'),
('Raj Verma', 30, 'Delhi', '2020-11-10'),
('Sneha Iyer', 27, 'Bangalore', '2023-01-05'),
('Karan Mehta', 26, 'Mumbai', '2022-08-25'),
('Priya Nair', 29, 'Chennai', '2021-06-18'),
('Rohit Singh', 31, 'Delhi', '2020-09-12'),
('Anjali Desai', 24, 'Pune', '2023-02-10'),
('Vikas Gupta', 35, 'Jaipur', '2019-07-22'),
('Pooja Kulkarni', 26, 'Mumbai', '2022-04-30');

INSERT INTO Products (product_name, Category, Price) VALUES
('Laptop', 'Electronics', 55000.00),
('Mouse', 'Electronics', 500.00),
('Keyboard', 'Electronics', 1200.00),
('Shirt', 'Clothing', 1500.00),
('Jeans', 'Clothing', 2000.00),
('Mixer', 'Home Appliances', 3000.00),
('Fan', 'Home Appliances', 2500.00),
('Notebook', 'Stationery', 120.00),
('Pen', 'Stationery', 50.00),
('Watch', 'Accessories', 2500.00);

INSERT INTO orders (customer_id, product_id, Quantity, Order_Date) VALUES
(1, 1, 1, '2023-06-01'),
(2, 2, 2, '2023-06-02'),
(3, 3, 1, '2023-06-03'),
(4, 4, 3, '2023-06-04'),
(5, 5, 2, '2023-06-05'),
(6, 6, 1, '2023-06-06'),
(7, 7, 4, '2023-06-07'),
(8, 8, 5, '2023-06-08'),
(9, 9, 10, '2023-06-09'),
(10, 10, 2, '2023-06-10');


select * from Customers;
select * from Products;
select * from orders;

ALTER TABLE Customers
ADD Email VARCHAR(100);

set SQL_SAFE_UPDATES = 0;
UPDATE Products
SET Price = 60000
WHERE product_name = 'Laptop';

set SQL_SAFE_UPDATES = 1;

DELETE FROM orders
WHERE order_id=3;

SELECT customer_name,city
FROM Customers;

SELECT *
FROM orders
WHERE Quantity >2;

select * 
from customers
where city = "Mumbai";

select * 
from products 
where price between 100 and 500 ;

SELECT product_name, Price * 1.10 AS price_with_tax
from Products;

SELECT customer_name, TIMESTAMPDIFF(YEAR, Join_date, CURDATE()) AS years_since_join
FROM Customers;

SELECT product_name, Price * 0.80 AS discounted_price
FROM Products;

SELECT Quantity, Quantity * 2 AS double_quantity
FROM orders;

SELECT *
FROM Products
ORDER BY Price ASC;

SELECT *
FROM Customers
ORDER BY customer_name DESC;

SELECT *
FROM orders
ORDER BY Quantity DESC;

SELECT *
FROM Products
ORDER BY Category ASC, Price ASC;

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 5;

SELECT City, COUNT(*) AS total_customers
FROM Customers
GROUP BY City;

SELECT Category, AVG(Price) AS avg_price
FROM Products
GROUP BY Category;

SELECT product_id, MAX(Quantity) AS max_quantity
FROM orders
GROUP BY product_id;

SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;

SELECT product_id, SUM(Quantity) AS total_quantity
FROM orders
GROUP BY product_id;

SELECT order_id, Quantity,
CASE
    WHEN Quantity >= 5 THEN 'Bulk'
    ELSE 'Regular'
END AS order_type
FROM orders;

SELECT product_name,
CASE
    WHEN Price > 500 THEN 'Expensive'
    WHEN Price BETWEEN 200 AND 500 THEN 'Moderate'
    ELSE 'Budget'
END AS category_label
FROM Products;

SELECT customer_name, Age,
CASE
    WHEN Age < 25 THEN 'Young'
    WHEN Age BETWEEN 25 AND 40 THEN 'Adult'
    ELSE 'Senior'
END AS age_group
FROM Customers;

SELECT product_name, Price,
CASE
    WHEN Price >= 500 THEN 'High Discount Eligible'
    ELSE 'Standard'
END AS discount_label
FROM Products;

SELECT order_id, Quantity,
CASE
    WHEN Quantity >= 8 THEN 'High'
    WHEN Quantity BETWEEN 4 AND 7 THEN 'Medium'
    ELSE 'Low'
END AS quantity_level
FROM orders;

SELECT order_id, Quantity,
CASE
    WHEN Quantity >= 8 THEN 'High'
    WHEN Quantity BETWEEN 4 AND 7 THEN 'Medium'
    ELSE 'Low'
END AS quantity_level
FROM orders;

SELECT product_name, Price
FROM Products
ORDER BY Price DESC;

SELECT Category, COUNT(*) AS total_products
FROM Products
GROUP BY Category
ORDER BY Category ASC;

SELECT product_name, Price * 1.15 AS price_with_tax
FROM Products
WHERE Price * 1.15 > 300;

SELECT product_id, MAX(Quantity) AS max_quantity
FROM orders
GROUP BY product_id;

SELECT customer_name,
CASE
    WHEN Age > 35 THEN 'Premium'
    ELSE 'Standard'
END AS customer_type
FROM Customers
ORDER BY customer_name ASC;

SELECT product_id, SUM(Quantity) AS total_quantity
FROM orders
GROUP BY product_id
ORDER BY total_quantity DESC;

SELECT product_name,
CASE
    WHEN Price > 700 THEN 'Luxury'
    WHEN Price BETWEEN 300 AND 700 THEN 'Mid-Range'
    ELSE 'Affordable'
END AS price_category
FROM Products;
