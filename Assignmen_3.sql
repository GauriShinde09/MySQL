-- 1. Create a new database called Assignment_3_24032026.
-- 2.  Make it the active database.
-- 3. Create a table named employees with columns for id, name, age, salary, department, and hire_date.
-- 4. Create a table named students with columns for roll_no, name, marks, city, and date_of_birth.
-- 5. Insert five records into the employees table with realistic data.
-- 6. Insert three records into the students table with different cities and marks.
-- 7. Retrieve all employees who work in the 'HR' department.
-- 8. Retrieve all students whose marks are greater than 75.
-- 9. Retrieve all employees whose salary is less than 50000.
-- 10. Retrieve all employees who work in 'Finance' and have age greater than 30.
-- 11. Retrieve all students who are from 'Mumbai' or have marks greater than 80.
-- 12. Retrieve all employees whose salary is between 30000 and 70000.
-- 13. Retrieve all students whose marks are between 60 and 90.
-- 14. Retrieve all employees whose department is either 'IT', 'HR', or 'Sales'.
-- 15. Retrieve all students whose city is one of 'Delhi', 'Pune', or 'Chennai'.
-- 16. Retrieve all employees whose name starts with the letter 'A'.
-- 17. Retrieve all students whose name contains the word 'kumar'.
-- 18. Retrieve all employees whose department name ends with 'ing'.
-- 19. Retrieve all employees who were hired before today's date.
-- 20. Retrieve all employees who were hired in the last 90 days.
-- 21. Retrieve all employees showing their name and the number of days they have worked since joining.
-- 22. Retrieve all student names converted to uppercase along with their marks.
-- 23. Retrieve all employees showing their salary rounded to the nearest thousand.
-- 24. Retrieve all employees showing their monthly salary calculated from the annual salary.
-- 25. Retrieve all employees whose annual salary divided by 12 is greater than 5000.
-- 26. Retrieve all employees showing a column that multiplies their age by 100 as a score.
-- 27. Retrieve all students with a column that shows true or false based on whether their marks are greater than or equal to 50.
-- 28. Retrieve all employees showing a column that evaluates whether their salary is above 40000 as a boolean result.
-- 29. Retrieve all students whose date_of_birth is before a date that is 18 years subtracted from the current date.
-- 30. Retrieve all employees showing their name, department, and a column that displays whether their salary multiplied by 1.1 exceeds 55000.

create schema if not exists Assignment__3;
use Assignment__3;

create table employeess(
employees_id int primary key auto_increment,
name varchar(100),
age int,
salary decimal(10,2),
dept varchar(50),
hire_date date
);

create table student(
roll_no int primary key auto_increment,
name varchar(100),
marks int,
city varchar(50),
date_of_birth date
);

INSERT INTO employeess (name, age, salary, dept, hire_date) VALUES
('Amit Sharma', 25, 50000.00, 'IT', '2022-06-15'),
('Neha Patil', 28, 45000.00, 'HR', '2021-03-20'),
('Raj Verma', 30, 60000.00, 'Finance', '2020-11-10'),
('Sneha Iyer', 27, 52000.00, 'IT', '2023-01-05'),
('Karan Mehta', 26, 48000.00, 'Marketing', '2022-08-25');

INSERT INTO student (name, marks, city, date_of_birth) VALUES
('Rohit', 85, 'Mumbai', '2003-05-12'),
('Priya', 78, 'Pune', '2004-09-18'),
('Anjali', 92, 'Delhi', '2003-12-01'),
('Kiran', 67, 'Bangalore', '2002-07-25'),
('Sneha', 88, 'Hyderabad', '2003-03-14');

select * from employeess;

select *
from employeess
where dept = 'HR';

select * 
from student 
where marks > 75;

select *
from employeess
where salary < 50000;

INSERT INTO employeess (name, age, salary, dept, hire_date) VALUES
('Gauri shinde', 55, 50000.00, 'Finance', '2024-06-15'),
('Neha Patil', 35, 45000.00, 'Finance', '2025-03-20');

select * 
from student
where dept = 'Finance' and age > 30;

select * 
from student
where city ='Mumbai' and marks >80;

select * 
from employeess
where salary between 30000 and 70000;

select * 
from student
where marks between 60 and 90;

SELECT *
FROM employeess
WHERE dept IN ('IT', 'HR', 'Sales');

select * 
from student 
where city IN ('Delhi','Pune','Chennai');

SELECT *
FROM employeess
where name like 'A%';

SELECT *
FROM student
WHERE name LIKE '%kumar%';

SELECT *
FROM employeess
where dept like '%ing';

select *
from employeess
where hire_date < curdate();

 select *
 from employeess
 where hire_date > date_sub(curdate(),interval 90 day);
 
 SELECT name, DATEDIFF(CURDATE(), hire_date) AS days_worked
FROM employeess;
 
SELECT marks ,upper(name) AS Name
FROM student;

 select name , round(salary , -3) AS rounded_salary
 from employeess;
 
 select name , (salary/12) AS monthly_income
 from employeess;
 
  select name , (salary/12) >= 5000 AS Highest_income
 from employeess;
 
 select name, (age *100) AS score
 from employeess;
 
 select name , marks >= 50 AS Grade
 from student;
 
 select name, salary >40000  AS SALARY
 from employeess;
 
 SELECT *
FROM student
WHERE date_of_birth < (CURDATE() - INTERVAL 18 YEAR);

 select name, dept, (salary * 1.1) > 55000 AS Updated_salary
  from employeess;
 

