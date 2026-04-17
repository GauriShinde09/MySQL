-- 1. Create a schema named practice_db
create schema if not exists practice_db;
use practice_db;

-- 2. Create a table employee_data with columns: emp_id, emp_name, salary, joining_date
create table employee_data(
  emp_id int primary key auto_increment,
  emp_name varchar(100),
  salary decimal(10,2),
  joining_date date
);

-- 3. Insert at least 10 records into employee_data
INSERT INTO employee_data (emp_name, salary, joining_date) VALUES
('Amit Sharma', 45000.00, '2022-01-15'),
('Priya Verma', 52000.50, '2021-11-20'),
('Rahul Patil', 39000.75, '2023-03-10'),
('Sneha Kulkarni', 61000.00, '2020-07-25'),
('Rohan Gupta', 48000.25, '2022-09-05'),
('Neha Singh', 53000.80, '2021-06-18'),
('Vikas Joshi', 42000.00, '2023-01-12'),
('Pooja Desai', 57000.60, '2020-12-30'),
('Karan Mehta', 46000.90, '2022-05-22'),
('Anjali Nair', 50000.00, '2021-08-14');



-- 4. Display all records from employee_data
select* from employee_data;

-- 5. Display the square of the salary for all employees

select
emp_name,
salary,
power(salary,2) as doubled_salary
from employee_data;

-- 6. Display the square root of the salary values

select
emp_name,
sqrt(salary) as square_salary
from employee_data;


-- 7. Display the absolute value of salary after subtracting 5000

select 
emp_name,
salary,
abs(salary-5000) as abs_salary
from employee_data;

-- 8. Round the salary to the nearest integer

select
emp_name,
salary,
round(salary,-2) as rounded_salary
from  employee_data;

-- 9. Round the salary up to the nearest thousand
SELECT emp_name, salary,
CEIL(salary / 1000) * 1000 AS rounded_salary
FROM employee_data;

-- 10. Round the salary down to the nearest thousand
SELECT emp_name, salary,
floor(salary / 1000) * 1000 AS rounded_salary
FROM employee_data;

-- 11. Display the remainder when salary is divided by 1000
select
emp_name,
salary,
mod(salary , 1000) as reminder_salary
from employee_data;

-- 12. Display the power of salary raised to 2

select 
emp_name,
salary,
power(salary,2) as power_salary
from employee_data;

-- 13. Display the length of each employee name

select
emp_name,
length(emp_name) as length_name
from employee_data;

-- 14. Convert all employee names to uppercase
select
emp_name,
upper(emp_name) as upper_name
from employee_data;

-- 15. Convert all employee names to lowercase
select
emp_name,
lower(emp_name) as lower_name
from employee_data;

-- 16. Display the first 3 characters of each employee name

SELECT emp_name, LEFT(emp_name, 3) AS first_3_chars
FROM employee_data;
-- 17. Display the last 2 characters of each employee name
SELECT emp_name, right(emp_name, 2) AS last_2_chars
FROM employee_data;
-- 18. Concatenate employee name with salary

select 
 emp_id,
 concat(emp_name, ' ', salary ) as concat_col
 from employee_data;

-- 19. Replace a specific character in employee names with another character
select 
 emp_id,
 emp_name,
 replace(emp_name, 'a','@') as replace_col
 from  employee_data;

-- 20. Trim extra spaces from employee names
select 
 emp_id,
 emp_name,
 trim(emp_name) as remove_w
 from employee_data;


-- 21. Display employee names in reverse order

select 
emp_name,
reverse(emp_name)
from employee_data;


-- 22. Find the position of a specific character in employee names
SELECT emp_name, INSTR(emp_name, 'a') AS position
FROM employee_data;

-- 23. Extract a substring from employee names starting from position 2
select substring(emp_name,2) as sub from employee_data;


-- 24. Display the current date
select 
curdate();

-- 25. Display the current time
select current_time();

-- 26. Extract the year from joining_date

select 
 emp_name,
 year(joining_date)
 FROM employee_data;

-- 27. Extract the month from joining_date
select 
 emp_name,
 month(joining_date) as joining_month
 FROM employee_data;


-- 28. Extract the day from joining_date
select 
 emp_name,
day(joining_date) as joining_month
 FROM employee_data;

-- 29. Display the day name of joining_date
SELECT emp_name, joining_date, DAYNAME(joining_date) AS day_name
FROM employee_data;

-- 30. Display the month name of joining_date
SELECT emp_name, joining_date, monthname(joining_date) AS day_name
FROM employee_data;

-- 31. Add 10 days to joining_date

select 
 emp_name,
  date_add(joining_date, interval 10 day) as delivery_date
  from employee_data;

-- 32. Subtract 5 days from joining_date
select 
 emp_name,
 joining_date,
  date_sub(joining_date, interval 5 day) as delivery_date
 from employee_data;
  

-- 33. Find the difference in days between current date and joining_date
select
joining_date,
curdate(),
datediff(curdate(),joining_date) as gap
from employee_data;

-- 34. Format joining_date in 'DD-MM-YYYY' format
SELECT emp_name, DATE_FORMAT(joining_date, '%d-%m-%Y') AS formatted_date
FROM employee_data;

-- 35. Display the last day of the month for each joining_date

SELECT emp_name, joining_date, LAST_DAY(joining_date) AS last_day
FROM employee_data;
-- 36. Add 2 months to joining_date
select 
 emp_name,
 joining_date,
  date_add(joining_date, interval 2 month) as 2_month_add
 from employee_data;

-- 37. Subtract 1 year from joining_date
select 
 emp_name,
 joining_date,
  date_sub(joining_date, interval 2 year) as 2_year_sub
 from employee_data;
-- 38. Display the week number of joining_date
SELECT emp_name, joining_date, WEEK(joining_date) AS week_number
FROM employee_data;

-- 39. Display the quarter of joining_date
SELECT emp_name, joining_date, QUARTER(joining_date) AS quarter
FROM employee_data;
-- 40. Convert joining_date into a string format*
SELECT emp_name, CAST(joining_date AS CHAR) AS date_string
FROM employee_data;

