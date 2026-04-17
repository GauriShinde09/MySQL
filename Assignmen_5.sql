create schema if not exists hospital_management;
create schema if not exists flight_booking;
use flight_booking;

create table doctors(
doctor_id int primary key auto_increment,
full_name varchar(100),
sepcialization varchar(50),
experience_year int,
consultation_fee decimal(10.2),
Join_date date,
City varchar(50)
);

CREATE TABLE patients(
patient_id INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(100),
age INT,
blood_group VARCHAR(5),
city VARCHAR(50),
admission_date DATE,
ward VARCHAR(50)
);

CREATE TABLE flights(
flight_id INT PRIMARY KEY AUTO_INCREMENT,
airline_name VARCHAR(100),
origin VARCHAR(50),
destination VARCHAR(50),
fare DECIMAL(10,2),
departure_date DATE,
total_seats INT
);

CREATE TABLE hotels(
hotel_id INT PRIMARY KEY AUTO_INCREMENT,
hotel_name VARCHAR(100),
city VARCHAR(50),
star_rating INT,
price_per_night DECIMAL(10,2),
check_in_date DATE,
available_rooms INT
);

CREATE TABLE books(
book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100),
author VARCHAR(100),
genre VARCHAR(50),
price DECIMAL(10,2),
published_date DATE,
stock_quantity INT
);

CREATE TABLE courses(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100),
instructor VARCHAR(100),
duration_hours INT,
fee DECIMAL(10,2),
start_date DATE,
platform VARCHAR(50)
);

INSERT INTO doctors (full_name, sepcialization,experience_year, city, consultation_fee)
 VALUES (' Amit Sharma', 'Cardiologist',12, 'Mumbai', 800),
(' Neha Patil', 'Dermatologist',5, 'Pune', 600),
(' Raj Verma', 'Orthopedic',24, 'Delhi', 900),
(' Sneha Iyer', 'Pediatrician',15, 'Bangalore', 700),
(' Karan Mehta', 'Neurologist',10, 'Mumbai', 1200),
(' Priya Nair', 'Gynecologist', 11,'Chennai', 750);

INSERT INTO patients (full_name, age, blood_group, city, admission_date, ward)
 VALUES ('Rohit Singh', 30, 'A+', 'Mumbai', '2023-06-01', 'ICU'),
('Anjali Desai', 25, 'B+', 'Pune', '2023-06-02', 'Genral'),
('Vikas Gupta', 40, 'O+', 'Delhi', '2023-06-03', 'ICU'),
('Pooja Kulkarni', 28, 'AB+', 'Mumbai', '2023-06-04', 'Genral'),
('Kiran Rao', 35, 'A-', 'Bangalore', '2023-06-05', 'ICU');

INSERT INTO flights (airline_name, origin, destination, fare, departure_date, total_seats) 
VALUES ('IndiGo', 'Mumbai', 'Delhi', 4500, '2023-07-01', 180),
('Air India', 'Delhi', 'Bangalore', 6000, '2023-07-02', 200),
('SpiceJet', 'Pune', 'Chennai', 4000, '2023-07-03', 150),
('Vistara', 'Bangalore', 'Mumbai', 5500, '2023-07-04', 170);

INSERT INTO hotels (hotel_name, city, star_rating, price_per_night, check_in_date, available_rooms) 
VALUES ('Grand Palace', 'Mumbai', 5, 8000, '2023-08-01', 20),
('City Inn', 'Pune', 3, 3000, '2023-08-02', 15),
('Royal Stay', 'Delhi', 4, 5000, '2023-08-03', 10),
('Comfort Suites', 'Bangalore', 4, 4500, '2023-08-04', 12),
('Budget Lodge', 'Chennai', 2, 2000, '2023-08-05', 25);

INSERT INTO books (title, author, genre, price, published_date, stock_quantity)
 VALUES('The Alchemist', 'Paulo Coelho', 'Fiction', 400, '2010-01-01', 50),
('Atomic Habits', 'James Clear', 'Self-help', 500, '2018-05-10', 40),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 450, '2005-03-15', 35),
('Wings of Fire', 'A.P.J Abdul Kalam', 'Biography', 350, '1999-07-01', 30),
('Harry Potter', 'J.K Rowling', 'Fantasy', 600, '2000-06-26', 60),
('Think and Grow Rich', 'Napoleon Hill', 'Motivation', 300, '1937-01-01', 25);

INSERT INTO courses (course_name, instructor, duration_hours, fee, start_date, platform)
 VALUES ('Web Development', 'John Doe', 40, 5000, '2023-09-01', 'Udemy'),
('Data Science', 'Jane Smith', 60, 8000, '2023-09-05', 'Coursera'),
('Python Basics', 'Alex Johnson', 30, 3000, '2023-09-10', 'Udemy'),
('Digital Marketing', 'Emily Clark', 25, 4000, '2023-09-12', 'Skillshare'),
('SQL Mastery', 'David Lee', 35, 4500, '2023-09-15', 'Coursera');

select*
from doctors
where sepcialization ='Cardiologist';

select full_name , ward
from patients
where ward ='ICU';

select*
from flights
where origin = 'Mumbai';

SELECT *
FROM hotels
WHERE star_rating = 5;

select*
from books
where price < 500;

select*
from courses
where fee > 3000;

select *
from doctors 
where consultation_fee between 500 and 1500;

select *
from flights 
where fare between 3000 and 10000; 

select *
from hotels
where price_per_night between 2000 and 8000;

select *
from doctors 
where city ='Delhi' and experience_year >10;

select *
from patients
where age > 60 or blood_group ='O+';

select*
from books
where genre='Fiction' or price < 300;

SELECT *
FROM courses
WHERE platform IN ('Udemy', 'Coursera', 'edX');

SELECT *
FROM doctors
WHERE sepcialization IN ('Neurologist', 'Orthopedic', 'Dermatologist');

SELECT *
FROM flights
WHERE destination IN ('Delhi', 'Bangalore', 'Hyderabad');

SELECT *
FROM hotels
WHERE city IN ('Mumbai', 'Jaipur', 'Shimla');

select * from doctors
where full_name like 'dr. r%';



insert into books(title, author, genre, price, published_date, stock_quantity) values
('the mu wrold', 'r. k. murti', 'fiction', 850.00, '2018-06-10', 35);
select * from books
where title like '%mu%';


select * from hotels
where hotel_name like '%inn';


select * from courses
where course_name like'%data%';


select * from flights
where airline_name like 'air%';


select * from doctors
where Join_date < current_date;


select * from patients
where admission_date >= current_date - interval 30 day;


select * from courses
where start_date>=current_date-interval 60 day;


select * from flights
where departure_date between current_date and current_date + interval 15 day;


select upper(full_name) as full_name,
sepcialization
from doctors;


select upper(title),
round(price,-1)as rounded_price
from books;


select upper(hotel_name),
round(price_per_night,-2)as rounded_price
from hotels;


select full_name,
round( consultation_fee/1.2,2) as rounded_fee
from doctors;


select course_name,
duration_hours/4 as weekly_effforts
from courses;


select airline_name,
fare,
fare * 1.18 as fare_with_tax
from flights;

