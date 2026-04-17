-- 1. Create a schema named `hostel_management` and switch to it 
create schema if not exists hotel__management;
use hotel__management;

-- 2. Create tables for students, rooms, fees, and attendance with appropriate fields
 create table students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    contact VARCHAR(15),
    course VARCHAR(50),
    join_date DATE,
    room_id INT
);

create table rooms (
    room_id INT PRIMARY KEY,
    room_no VARCHAR(10),
    capacity INT
);

create table fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    total_amount DECIMAL(10,2),
    paid_amount DECIMAL(10,2),
    remaining_amount DECIMAL(10,2),
    payment_date DATE,
    status VARCHAR(20)
);

create table attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    date DATE,
    status VARCHAR(10)  -- Present / Absent
);

-- 3. Insert at least 15 records into each table with realistic values
INSERT INTO students VALUES
(1,'Amit',21,'Male','Pune','9876543210','CS','2024-06-01',101),
(2,'Riya',22,'Female','Mumbai','9876543211','IT','2024-06-05',102),
(3,'Rahul',19,'Male','Nashik','9876543212','CS','2024-07-01',101),
(4,'Sneha',23,'Female','Nagpur','9876543213','ENTC','2024-06-10',103),
(5,'Karan',20,'Male','Pune','9876543214','IT','2024-07-15',102),
(6,'Pooja',21,'Female','Kolhapur','9876543215','CS','2024-06-20',101),
(7,'Vikas',24,'Male','Solapur','9876543216','ENTC','2024-07-25',103),
(8,'Neha',20,'Female','Thane','9876543217','IT','2024-06-18',102),
(9,'Arjun',22,'Male','Pune','9876543218','CS','2024-08-01',101),
(10,'Meena',19,'Female','Satara','9876543219','ENTC','2024-07-10',103),
(11,'Rohit',21,'Male','Amravati','9876543220','IT','2024-06-22',102),
(12,'Anjali',20,'Female','Latur','9876543221','CS','2024-07-05',101),
(13,'Sagar',23,'Male','Pune','9876543222','ENTC','2024-08-10',103),
(14,'Priya',19,'Female','Jalgaon','9876543223','IT','2024-06-30',102),
(15,'Nikhil',25,'Male','Akola','9876543224','CS','2024-07-12',101);

INSERT INTO rooms VALUES
(101,'A1',3),
(102,'A2',3),
(103,'A3',3),
(104,'B1',4),
(105,'B2',4),
(106,'B3',4),
(107,'C1',2),
(108,'C2',2),
(109,'C3',2),
(110,'D1',3),
(111,'D2',3),
(112,'D3',3),
(113,'E1',5),
(114,'E2',5),
(115,'E3',5);

INSERT INTO fees VALUES
(1,1,50000,40000,10000,'2024-06-10','Paid'),
(2,2,45000,20000,25000,'2024-06-15','Pending'),
(3,3,48000,48000,0,'2024-07-05','Paid'),
(4,4,52000,30000,22000,'2024-06-20','Pending'),
(5,5,47000,47000,0,'2024-07-18','Paid'),
(6,6,50000,25000,25000,'2024-06-25','Pending'),
(7,7,55000,55000,0,'2024-08-01','Paid'),
(8,8,46000,20000,26000,'2024-06-28','Pending'),
(9,9,49000,49000,0,'2024-08-05','Paid'),
(10,10,53000,30000,23000,'2024-07-15','Pending'),
(11,11,45000,45000,0,'2024-06-30','Paid'),
(12,12,47000,20000,27000,'2024-07-08','Pending'),
(13,13,52000,52000,0,'2024-08-12','Paid'),
(14,14,48000,30000,18000,'2024-07-02','Pending'),
(15,15,50000,50000,0,'2024-07-20','Paid');

INSERT INTO attendance VALUES
(1,1,'2026-04-01','Present'),
(2,2,'2026-04-01','Absent'),
(3,3,'2026-04-01','Present'),
(4,4,'2026-04-01','Present'),
(5,5,'2026-04-01','Absent'),
(6,6,'2026-04-01','Present'),
(7,7,'2026-04-01','Present'),
(8,8,'2026-04-01','Absent'),
(9,9,'2026-04-01','Present'),
(10,10,'2026-04-01','Absent'),
(11,11,'2026-04-01','Present'),
(12,12,'2026-04-01','Present'),
(13,13,'2026-04-01','Absent'),
(14,14,'2026-04-01','Present'),
(15,15,'2026-04-01','Present');


-- 4. Display all details of students
select * from students;

-- 5. Show only student names and their contact number
select name,contact
from students;
-- 6. Display students whose age is greater than 20
select name,age
from students
where age>20;
-- 7. Show students belonging to a specific city
select name,city
from students
where city="Pune";
-- 8. Retrieve students who joined after a particular date
select name,city
from students
where join_date="2024-06-05";
-- 9. Display rooms with capacity greater than 2
select room_no
from rooms
where capacity>2;
-- 10. Show students whose fee amount is between 20000 and 50000
select  * 
from fees
where paid_amount between 20000 and 50000; 
-- 11. Display student records sorted by age in ascending order
select * 
from students
order by age asc;
-- 12. Show fee records sorted by amount in descending order
select * 
from fees
order by total_amount desc;
-- 13. Retrieve top 5 highest fee-paying students
SELECT * FROM fees
ORDER BY total_amount DESC
LIMIT 5;
-- 14. Display the 3 youngest students
SELECT * FROM students
ORDER BY age ASC
LIMIT 3;

-- 15. Show students ordered by city and then by name
SELECT * FROM students
ORDER BY city ASC, name ASC;

-- 16. Display total fee collected from all students
SELECT SUM(paid_amount) AS total_fee
FROM fees;

-- 17. Show average fee paid by students
SELECT AVG(paid_amount) AS avg_fee
FROM fees;

-- 18. Find the maximum and minimum fee amounts
SELECT MAX(total_amount) AS max_fee,
       MIN(total_amount) AS min_fee
FROM fees;

-- 19. Display total number of students in each room
SELECT room_id, COUNT(*) AS total_students
FROM students
GROUP BY room_id;

-- 20. Show total fees collected for each city
SELECT s.city, SUM(f.paid_amount) AS total_fee
FROM students s
JOIN fees f ON s.student_id = f.student_id
GROUP BY s.city;

-- 21. Display student names with a label indicating whether their fee is high or low based on a threshold
SELECT s.name,
CASE 
    WHEN f.total_amount > 50000 THEN 'High'
    ELSE 'Low'
END AS fee_label
FROM students s
JOIN fees f ON s.student_id = f.student_id;

-- 22. Categorize rooms as “Small”, “Medium”, or “Large” based on capacity
SELECT room_no,
CASE
    WHEN capacity <= 2 THEN 'Small'
    WHEN capacity = 3 THEN 'Medium'
    ELSE 'Large'
END AS room_type
FROM rooms;
-- 23. Show attendance status as “Good” or “Poor” based on percentage
SELECT student_id,
CASE
    WHEN (SUM(status='Present')/COUNT(*))*100 >= 75 THEN 'Good'
    ELSE 'Poor'
END AS attendance_status
FROM attendance
GROUP BY student_id;

-- 24. Classify students based on age groups (teen, adult, senior)
SELECT name,
CASE
    WHEN age < 20 THEN 'Teen'
    WHEN age BETWEEN 20 AND 23 THEN 'Adult'
    ELSE 'Senior'
END AS age_group
FROM students;


-- 25. Display fee status as “Paid” or “Pending”
SELECT student_id, status
FROM fees;

-- 26. Display rooms where the number of students exceeds a certain limit
SELECT room_id, COUNT(*) AS total_students
FROM students
GROUP BY room_id
HAVING COUNT(*) > 2;
-- 27. Show cities where average fee is greater than a specific value
SELECT s.city, AVG(f.total_amount) AS avg_fee
FROM students s

GROUP BY s.city
HAVING AVG(f.total_amount) > 45000;

-- 28. Retrieve rooms having less than 2 students
SELECT room_id, COUNT(*) AS total_students
FROM students
GROUP BY room_id
HAVING COUNT(*) < 2;
-- 29. Display students whose total attendance is above a threshold
SELECT student_id, COUNT(*) AS total_present
FROM attendance
WHERE status='Present'
GROUP BY student_id
HAVING COUNT(*) > 1;

-- 30. Show categories where total fee collected is above 100000

SELECT s.city, SUM(f.paid_amount) AS total_fee
FROM students s
JOIN fees f ON s.student_id = f.student_id
GROUP BY s.city
HAVING SUM(f.paid_amount) > 100000;

-- 31. Display student name along with annual fee including an additional 10% charge
SELECT s.name, f.total_amount,
       f.total_amount * 1.10 AS annual_fee
FROM students s
JOIN fees f ON s.student_id = f.student_id;

-- 32. Show remaining fee after deducting paid amount
SELECT student_id,
       total_amount - paid_amount AS remaining_fee
FROM fees;

-- 33. Calculate attendance percentage for each student
SELECT student_id,
       (SUM(status='Present') / COUNT(*)) * 100 AS attendance_percent
FROM attendance
GROUP BY student_id;
-- 34. Display total payable amount after applying discount
SELECT student_id,
       total_amount * 0.90 AS discounted_fee
FROM fees;
-- 35. Show difference between maximum and minimum fee

SELECT MAX(total_amount) - MIN(total_amount) AS difference
FROM fees;
-- 36. Display students who have made at least one fee payment
SELECT name
FROM students
WHERE student_id IN (
    SELECT student_id 
    FROM fees 
    WHERE paid_amount > 0
);
-- 37. Show students who are not assigned to any room

SELECT * FROM students
WHERE room_id IS NULL;
-- 38. Retrieve rooms that have at least one student

SELECT room_id, room_no
FROM rooms
WHERE room_id IN (
    SELECT room_id FROM students
);
-- 39. Display students whose fee is higher than the average fee
SELECT r.room_id, r.room_no
FROM rooms r
WHERE EXISTS (
    SELECT 1 FROM students s
    WHERE s.room_id = r.room_id
);
-- 40. Show students who exist in both attendance and fee records
SELECT name
FROM students
WHERE student_id IN (SELECT student_id FROM fees)
AND student_id IN (SELECT student_id FROM attendance);








