-- 1. Create a database named Assignment_2 and set it as the active database.

-- 2. Create a table named products with columns product_id (integer, primary key, auto increment), product_name (varchar 100), category (varchar 50), price (decimal 10,2), quantity (integer), supplier (varchar 100).

-- 3. Create a table named employees with columns employee_id (integer, primary key, auto increment), first_name (varchar 50), last_name (varchar 50), department (varchar 50), salary (decimal 10,2), city (varchar 50), experience_years (integer).

-- 4. Create a table named orders with columns order_id (integer, primary key, auto increment), customer_name (varchar 100), product_name (varchar 100), order_amount (decimal 10,2), order_city (varchar 50), status (varchar 30).

-- 5. Insert at least 10 records into each of the three tables products, employees and orders with realistic and varied data ensuring there are duplicate values in category, department, city and status columns for practice purposes.


-- 6. Write a query to retrieve all columns and all records from the employees table.

-- 7. Write a query to display only the first_name, department and salary columns from the employees table.

-- 8. Write a query to display only product_name, category and price from the products table.

-- 9. Write a query to display customer_name and order_amount from the orders table.

-- 10. Write a query to display a static column with the text "retail_store" as store_name alongside product_name and price from the products table.

-- 11. Write a query to display a static column with value 2024 as financial_year alongside employee first_name and salary from the employees table.

-- 12. Write a query to display a static column with the text "pending review" as remarks alongside all records from the orders table.

-- 13. Write a query to display the price of all products rounded to the nearest whole number from the products table.

-- 14. Write a query to display the salary of all employees rounded to zero decimal places from the employees table.

-- 15. Write a query to display order_amount rounded to 1 decimal place alongside customer_name from the orders table.

-- 16. Write a query to combine first_name and last_name of employees into a single column called full_name using the concat function.

-- 17. Write a query to combine product_name and category into one column called product_info separated by a hyphen using the concat function.

-- 18. Write a query to combine customer_name and order_city into a single column called customer_location separated by a comma and space using the concat function.

-- 19. Write a query to display all values of the product_name column converted to uppercase from the products table.

-- 20. Write a query to display first_name and department from the employees table with the department column values shown in uppercase.

-- 21. Write a query to display all unique values from the category column of the products table using distinct.

-- 22. Write a query to display all unique department names from the employees table using distinct.

-- 23. Write a query to display all unique city values from the employees table using distinct.

-- 24. Write a query to display all unique status values from the orders table using distinct.

-- 25. Write a query to retrieve all records from the employees table where the department is exactly equal to one specific department name present in your data.

-- 26. Write a query to retrieve all records from the products table where the category matches one specific category value present in your data.

-- 27. Write a query to retrieve all records from the orders table where the status column equals one specific status value present in your data.

-- 28. Write a query to retrieve all records from the employees table where the city matches one specific city value present in your data.

-- 29. Write a query to retrieve all employees from the employees table whose salary is greater than 50000.

-- 30. Write a query to retrieve all products from the products table whose price is less than 500.

-- 31. Write a query to retrieve all records from the orders table where order_amount is greater than or equal to 1000.

-- 32. Write a query to retrieve all employees from the employees table whose experience_years is less than or equal to 5.

-- 33. Write a query to retrieve all employees who belong to a specific department and have a salary greater than 40000 using AND.

-- 34. Write a query to retrieve all products that belong to a specific category and have a price less than 1000 using AND.

-- 35. Write a query to retrieve all orders where the status matches a specific value and the order_amount is greater than 500 using AND.

-- 36. Write a query to retrieve all employees who are from a specific city and have experience_years greater than 3 using AND.

-- 37. Write a query to retrieve all employees who belong to either of two specific departments using OR.

-- 38. Write a query to retrieve all products where the category is one specific value or the price is greater than 800 using OR.

-- 39. Write a query to retrieve all orders where the status is either of two specific status values present in your data using OR.

-- 40. Write a query to retrieve all employees whose city is one specific value or whose salary is less than 30000 using OR.


create schema if not exists Assignment__2;
use Assignment__2;

create table products(
product_id int primary key auto_increment,
product_name varchar(100),
category varchar(50),
price decimal(10,2),
quantity int,
supplier varchar(100)
);

create table employees(
employee_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50),
dept varchar(50),
salary decimal(10,2),
city varchar(50),
experience_years int
);

create table orders(
order_id int primary key auto_increment,
customer_name varchar(100),
product_name varchar(100),
order_amount decimal(10,2),
order_city varchar(50),
status varchar(30)
);

INSERT INTO products (product_name, category, price, quantity, supplier)
 VALUES ('Laptop', 'Electronics', 55000.00, 10, 'Dell'),
('Mouse', 'Electronics', 500.00, 50, 'Logitech'),
('Keyboard', 'Electronics', 1200.00, 30, 'HP'),
('Shirt', 'Clothing', 1500.00, 20, 'Zara'),
('Jeans', 'Clothing', 2000.00, 15, 'Levis'),
('Mixer', 'Home Appliances', 3000.00, 12, 'Philips'),
('Fan', 'Home Appliances', 2500.00, 18, 'Usha'),
('Notebook', 'Stationery', 120.00, 100, 'Classmate'),
('Pen', 'Stationery', 50.00, 200, 'Reynolds'),
('Water Bottle', 'Accessories', 300.00, 40, 'Milton');

INSERT INTO employees (first_name, last_name, dept, salary, city, experience_years)
 VALUES ('Amit', 'Sharma', 'IT', 50000.00, 'Mumbai', 3),
('Neha', 'Patil', 'HR', 40000.00, 'Pune', 2),
('Raj', 'Verma', 'IT', 55000.00, 'Mumbai', 4),
('Sneha', 'Iyer', 'Finance', 60000.00, 'Delhi', 5),
('Karan', 'Mehta', 'HR', 42000.00, 'Pune', 3),
('Priya', 'Nair', 'IT', 58000.00, 'Bangalore', 4),
('Rohit', 'Singh', 'Finance', 62000.00, 'Delhi', 6),
('Anjali', 'Desai', 'Marketing', 45000.00, 'Mumbai', 2),
('Vikas', 'Gupta', 'Marketing', 47000.00, 'Pune', 3),
('Pooja', 'Kulkarni', 'IT', 59000.00, 'Bangalore', 5);

INSERT INTO orders (customer_name, product_name, order_amount, order_city, status) 
VALUES ('Rahul', 'Laptop', 55000.00, 'Mumbai', 'Delivered'),
('Simran', 'Mouse', 500.00, 'Pune', 'Pending'),
('Arjun', 'Keyboard', 1200.00, 'Mumbai', 'Delivered'),
('Meera', 'Shirt', 1500.00, 'Delhi', 'Cancelled'),
('Ravi', 'Jeans', 2000.00, 'Pune', 'Pending'),
('Kavya', 'Mixer', 3000.00, 'Bangalore', 'Delivered'),
('Aman', 'Fan', 2500.00, 'Delhi', 'Cancelled'),
('Nisha', 'Notebook', 120.00, 'Mumbai', 'Pending'),
('Deepak', 'Pen', 50.00, 'Pune', 'Delivered'),
('Sonal', 'Water Bottle', 300.00, 'Bangalore', 'Pending');

select * from employees;

select first_name, dept, salary from employees;
select customer_name , order_amount from orders;
SELECT 'retail_store' AS store_name, product_name, price
FROM products;

SELECT 2024 AS financial_year, first_name, salary
FROM employees;
SELECT 'pending review' AS remarks, order_id, customer_name, product_name, order_amount, order_city, status
FROM orders;

SELECT product_name, ROUND(price) AS rounded_price
FROM products;

SELECT first_name, ROUND(salary, 0) AS rounded_salary
FROM employees;

SELECT customer_name, ROUND(order_amount, 1) AS rounded_amount
FROM orders;

SELECT concat(first_name,' ',last_name) AS full_name
FROM employees;

SELECT concat(product_name,' - ',category) AS product_info
FROM products;

SELECT concat(customer_name,' , ',order_city) AS customer_location
FROM orders;
 
 SELECT upper(product_name) AS product_name
 FROM products;
 
 SELECT first_name, upper(dept) AS dept
 FROM employees;
 
 SELECT DISTINCT category
FROM products;

SELECT DISTINCT dept
FROM employees;

SELECT DISTINCT city
FROM employees;

SELECT DISTINCT status
FROM orders;

SELECT *
FROM employees
WHERE dept = 'IT';
 
 SELECT *
FROM products
WHERE category = 'Electronics';

 SELECT *
FROM orders
WHERE status= 'Delivered';

SELECT *
FROM employees
WHERE city= 'Mumbai';

SELECT *
FROM employees
WHERE salary > 50000;

SELECT * 
FROM products
WHERE price <500;

SELECT *
FROM orders
WHERE order_amount >=1000;

SELECT *
FROM employees
WHERE experience_years <= 5;

SELECT *
FROM employees
WHERE dept ='IT' AND salary >40000;

SELECT *
FROM products
WHERE category ='Stationery' AND price<1000;

SELECT *
FROM orders
WHERE status ='Pending' AND order_amount<500;

SELECT *
FROM employees
WHERE city ='Mumbai' AND experience_years  >3;


SELECT *
FROM employees
WHERE dept='IT' OR dept='Electronics';

SELECT *
FROM products
WHERE category = 'Electronics' OR price > 800;

SELECT *
FROM orders
WHERE status = 'Pending' OR status = 'Delivered';

SELECT *
FROM employees
WHERE city = 'Mumbai' OR salary < 30000;