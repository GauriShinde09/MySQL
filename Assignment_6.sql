-- 1. Create a schema named `sales_demo` and a table `sales_data` with appropriate columns for category, product, region, quantity, price, and sale_date 
create schema if not exists sales_demo;
use sales_demo;
create table sales_data(
sale_id int primary key auto_increment,
 category varchar(100),
 product varchar(50),
 region varchar(50),
 quantity int,
 price decimal(10,2),
 sale_date date
);
 -- 2. Insert at least 10 records into the `sales_data` table with different categories and regions 
INSERT INTO sales_data (category, product, region, quantity, price, sale_date) VALUES
('Electronics', 'Laptop', 'North', 5, 55000, '2024-01-10'),
('Electronics', 'Mobile', 'South', 10, 20000, '2024-01-12'),
('Furniture', 'Chair', 'East', 15, 1500, '2024-01-15'),
('Furniture', 'Table', 'West', 7, 5000, '2024-01-18'),
('Clothing', 'Shirt', 'North', 20, 800, '2024-01-20'),
('Clothing', 'Jeans', 'South', 12, 1200, '2024-01-22'),
('Electronics', 'Headphones', 'East', 25, 1500, '2024-01-25'),
('Furniture', 'Sofa', 'West', 3, 20000, '2024-01-28'),
('Clothing', 'Jacket', 'North', 8, 2500, '2024-02-01'),
('Electronics', 'Tablet', 'South', 6, 30000, '2024-02-05');

select* from sales_data;

-- 3. Display categories where the total quantity sold is greater than 10
select sale_id ,category 
from sales_data
where  quantity > 10;

-- 4. Show products having total quantity less than 5 
select sale_id ,product
from sales_data
where  quantity < 5;

 --  5. Find regions where total revenue exceeds 50000

SELECT region, SUM(quantity * price) AS total_revenue
FROM sales_data
GROUP BY region
HAVING SUM(quantity * price) > 50000;

-- 6. Display categories with average price greater than 10000 
SELECT category, AVG(price) AS avg_price
FROM sales_data
GROUP BY category
HAVING AVG(price) > 10000;


 -- 7. Show regions where the number of sales records is more than 2
select  region ,count(*) as total_record
from sales_data
group by region
having count(*) > 2;

-- 8. Find products where total revenue is greater than 30000
  
select region, sum(quantity * price) as total_revenue
from sales_data
group by region
having total_revenue > 50000;

-- 9. Display categories where total quantity is between 5 and 20

select category, sum(quantity) as total_quantity
from sales_data
group by category
having total_quantity between 5 and 20;

-- 10. Show regions where average quantity is less than 6
select region , avg(quantity) as avg_quantity
from sales_data
group by region
having avg_quantity <6;


-- 11. Find products where total quantity is equal to 5
select product , sum(quantity) as total_quantity
from sales_data
group by product
having total_quantity = 5;

-- 12. Display categories where total revenue is less than 40000
select category, sum(quantity * price) as total_revenue
from sales_data
group by category
having total_revenue < 40000;

-- 13. Show regions where the total number of products sold is greater than 3
select region,count(product) as total_product
from sales_data
group by region
having total_product >3;


-- 14. Find categories where average price is between 1000 and 20000

select category , avg(price) as avg_price
from sales_data
group by category
having avg_price between 1000 and 20000;

-- 15. Display products where total revenue is greater than 20000 and total quantity is greater than 3
select product,
 sum(price * quantity) as total_revenue,
 sum(quantity) as total_quantity
 from sales_data
 group by product
 having total_revenue > 20000 and total_quantity < 2;
 
-- 16. Show regions where total revenue is not equal to 50000
select region , sum(quantity * price) as total_revenue
from sales_data
group by region
having total_revenue != 50000;

-- 17. Find categories where total quantity is greater than 5 and average price is less than 15000
SELECT category,
SUM(quantity) AS total_quantity,
AVG(price) AS avg_price
FROM sales_data
GROUP BY category
HAVING SUM(quantity) > 5
AND AVG(price) < 15000;

-- 18. Display products where total quantity is less than 10 and revenue is greater than 10000
SELECT product,
SUM(quantity) AS total_quantity,
SUM(quantity * price) AS revenue
FROM sales_data
GROUP BY product
HAVING SUM(quantity) < 10
AND SUM(quantity * price) > 10000;

-- 19. Show regions where total quantity is greater than 8 and less than 20
SELECT region, SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY region
HAVING SUM(quantity) > 8 AND SUM(quantity) < 20;


-- 20. Find categories where total revenue is greater than 25000 and less than 100000
SELECT category, SUM(quantity * price) AS total_revenue
FROM sales_data
GROUP BY category
HAVING SUM(quantity * price) > 25000
AND SUM(quantity * price) < 100000; 

-- 21. Display products where the count of sales records is greater than 1

SELECT product, COUNT(*) AS total_records
FROM sales_data
GROUP BY product
HAVING COUNT(*) > 1;

-- 22. Show regions where average price is greater than 5000
SELECT region, AVG(price) AS avg_price
FROM sales_data
GROUP BY region
HAVING AVG(price) > 5000;

-- 23. Find categories where total quantity is not equal to 10
SELECT category, SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY category
HAVING SUM(quantity) != 10;

-- 24. Display products where total revenue is between 10000 and 60000

SELECT product, SUM(quantity * price) AS total_revenue
FROM sales_data
GROUP BY product
HAVING SUM(quantity * price) BETWEEN 10000 AND 60000;

-- 25. Show regions where total quantity is greater than 5 and average price is greater than 2000
SELECT region,
SUM(quantity) AS total_quantity,
AVG(price) AS avg_price
FROM sales_data
GROUP BY region
HAVING SUM(quantity) > 5
AND AVG(price) > 2000;

-- 26. Find categories where total revenue is less than 30000 and total quantity is greater than 3
SELECT category,
SUM(quantity * price) AS total_revenue,
SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY category
HAVING SUM(quantity * price) < 30000
AND SUM(quantity) > 3;

-- 27. Display products where average price is less than 20000
SELECT product, AVG(price) AS avg_price
FROM sales_data
GROUP BY product
HAVING AVG(price) < 20000;
-- 28. Show regions where total revenue is greater than 70000
SELECT region, SUM(quantity * price) AS total_revenue
FROM sales_data
GROUP BY region
HAVING SUM(quantity * price) > 70000;
-- 29. Find categories where total quantity is greater than 2 and count of records is greater than 1
SELECT category,
SUM(quantity) AS total_quantity,
COUNT(*) AS total_records
FROM sales_data
GROUP BY category
HAVING SUM(quantity) > 2
AND COUNT(*) > 1;
-- 30. Display products where total revenue is greater than 15000 and average quantity is greater than 3

SELECT product,
SUM(quantity * price) AS total_revenue,
AVG(quantity) AS avg_quantity
FROM sales_data
GROUP BY product
HAVING SUM(quantity * price) > 15000
AND AVG(quantity) > 3;





