
-- 1. Open MySQL Workbench and create a new connection named `Assignment_Connection` 

-- 2. Create a new database named `Assignment1_db` and verify it appears in the schema list.

-- 3. Write a query to display all existing databases on your MySQL server, then switch to `Assignment1_db` as the active database.


-- 4. Inside `Assignment1_db`, create a table named `students` with the following columns — `student_id` (integer, primary key, auto increment), `full_name` (variable character, 100), `age` (integer), `email` (variable character, 150).

-- 5. Create a table named `courses` with columns — `course_id` (integer, primary key, auto increment), `course_name` (variable character, 100), `duration_weeks` (integer), `fee` (decimal with 8 digits, 2 after decimal).

-- 6. Create a table named `enrollments` with columns — `enrollment_id` (integer, primary key, auto increment), `student_id` (integer), `course_id` (integer), `enrollment_date` (date).


-- 7. Write a query to display the full structure of the `students` table, showing all column names, data types, and constraints.

-- 8. Write a query to view the structure of the `courses` table and identify which column is set as the primary key.


-- 9. Write a query to retrieve and display all records from the `students` table.

-- 10. Write a query to display all records from the `courses` table showing only `course_name` and `fee` columns.


-- 11. Insert 4 student records into the `students` table with realistic values for name, age, and email.

-- 12. Insert 3 records into the `courses` table with course names like `Python`, `Data Science`, and `Web Development` along with appropriate duration and fee values.


-- 13. Add a new column named `phone_number` of type variable character (15) to the **end** of the `students` table, then verify the change using a structure query.


-- 14. Add a new column named `gender` of type variable character (10) in the `students` table, placed **after** the `age` column.


-- 15. Update the `age` of the student whose `student_id` is `2` to `22`, then display the updated record.

-- 16. Update the `fee` of the course named `Data Science` to `25000.00` and verify the change.


-- 17. Rename the column `full_name` to `student_name` in the `students` table and confirm the change by describing the table.

-- 18. Rename the column `duration_weeks` to `course_duration` in the `courses` table.


-- 19. Change the data type of the `phone_number` column in the `students` table from variable character (15) to variable character (20).

-- 20. Change the data type of the `age` column in the `students` table from integer to `TINYINT` and verify using the describe command.
-- hye-jfah-mfo


create database Assingnment__1;

use Assingnment__1;

create table student(
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(100),
  age INT ,
  email  VARCHAR(150)
);

create table course(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100),
duration_weeks INT,
fee DECIMAL(8.2)
);

create table enrollments(
enrollments_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
course_id INT,--
enrollment_date DATE
);
describe student;
describe course;
select * from student;
select * from course; 

INSERT INTO student (student_id,full_name,age, email )
VALUES (1 , 'GAURI', 21,'gauri@123.com'),
(2 , 'RAM', 23,'ram@123.com'),
(3 , 'RAJ',14,'dev@124.com'),
(4 , 'ANJALI',35,'siya@123.com');
select * from student;

INSERT INTO course (course_id,course_name,duration_weeks,fee)
VALUES (101 , 'Python', 4 ,23.34),
(102 , 'Data Science', 12 ,123.34),
(103, 'Web Devlopment', 5 ,45.12);
select * from course;
ALTER table student
ADD COLUMN phone_number VARCHAR(15);
select * from student;

ALTER table student
ADD COLUMN gender varchar(15) AFTER age ;
 
select * from student;

UPDATE student SET age = 22 WHERE student_id = 2;
select * from student;
set SQL_SAFE_UPDATES = 0;
UPDATE course SET fee = 25000.00 WHERE course_name= 'Data Science';

set SQL_SAFE_UPDATES = 1;
select * from course;

ALTER TABLE student
RENAME COLUMN full_name TO student_name;
DESCRIBE student;

ALTER TABLE course
RENAME COLUMN  duration_weeks TO course_duration;
DESCRIBE course;

ALTER TABLE student
MODIFY phone_number VARCHAR(20);

ALTER TABLE student
MODIFY age TINYINT;
DESCRIBE student;