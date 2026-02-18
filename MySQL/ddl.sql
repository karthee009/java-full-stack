create database details;
use details;

CREATE TABLE Student (
    st_id INT,
    st_name VARCHAR(50),
    st_age INT,
    st_gender VARCHAR(10),
    st_department VARCHAR(50),
    st_mark INT
);

CREATE TABLE Staff (
    staff_id INT,
    staff_name VARCHAR(50),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    phone VARCHAR(15)
);

CREATE TABLE Product (
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT
);

CREATE TABLE Customer (
    customer_id INT,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE
);

INSERT INTO Student VALUES
(1, 'Arun', 20, 'Male', 'CSE', 85),
(2, 'Priya', 19, 'Female', 'ECE', 90),
(3, 'Karthik', 21, 'Male', 'MECH', 78),
(4, 'Divya', 20, 'Female', 'IT', 88),
(5, 'Suresh', 22, 'Male', 'CIVIL', 70);

INSERT INTO Staff VALUES
(101, 'Ravi', 'Lecturer', 35000, '9876543210'),
(102, 'Meena', 'Assistant Prof', 45000, '9123456789'),
(103, 'Kumar', 'HOD', 65000, '9988776655'),
(104, 'Anitha', 'Clerk', 25000, '9090909090'),
(105, 'Rajesh', 'Lab Assistant', 28000, '9012345678');

INSERT INTO Product VALUES
(201, 'Laptop', 'Electronics', 55000, 10),
(202, 'Mouse', 'Accessories', 500, 50),
(203, 'Keyboard', 'Accessories', 800, 30),
(204, 'Mobile', 'Electronics', 20000, 15),
(205, 'Printer', 'Electronics', 12000, 5);

INSERT INTO Customer VALUES
(301, 'Ramesh', 'ramesh@gmail.com', '9876501234', 'Chennai'),
(302, 'Sneha', 'sneha@gmail.com', '9123409876', 'Coimbatore'),
(303, 'Vijay', 'vijay@gmail.com', '9988774455', 'Madurai'),
(304, 'Lakshmi', 'lakshmi@gmail.com', '9090876543', 'Salem'),
(305, 'Ajay', 'ajay@gmail.com', '9011223344', 'Trichy');

INSERT INTO Employee VALUES
(401, 'Manoj', 'HR', 40000, '2022-06-15'),
(402, 'Deepa', 'Finance', 48000, '2021-03-10'),
(403, 'Sanjay', 'IT', 60000, '2020-11-25'),
(404, 'Nisha', 'Marketing', 45000, '2023-01-05'),
(405, 'Rahul', 'Sales', 42000, '2022-09-18');

-- employe table 
select * from employee;
alter table employe rename  to employee;
insert into employee VALUES (450,'hema chandran',"developer",66000,'2020-11-26');
update employee SET	emp_name = "pradeep ranganathan" where emp_id=401;  
delete from employee where emp_name="pradeep ranganathan";
drop table employee;
update  employee  set emp_name="null" where emp_id=401;

-- student table 
select * from student_details;
alter  table student rename to student_details;
update student_details set st_name="THALAPATHY" where st_id=1;
insert into student_details VALUES (6,"MK STALIN",20,"Male","MECH",35);
delete from student_details where st_id=6;
drop table student;

-- staff table
select * from staff_details;
alter table staff rename to staff_details;
update staff_details set staff_name="kartheeswaran" where  staff_id=101;
insert into staff_details values (106,"hema chandran","lecturer",30000.00,5426421567);
delete from staff_details where staff_id=106;
drop table staff_details;

-- product table

select * from product_details;
alter table product rename to product_details;
insert into product_details values (206,"Iphone 17pro max","electronics",15700,9);
update product_details set product_name = "samsung s23 ultra" where product_id = 202;
delete from product_details where product_id=206;
drop table product_details;


-- customer
select * from customer_details;
alter table customer_details add column purchasing_amount varchar(10);
alter table customer rename to customer_details;
insert into customer_details values (306,"paramesh","paramesh2@gmail.com",2346975549,"thirunelveli");
update customer_details set customer_name = "maatu ravi" where customer_id = 302;
delete from product_details where product_id=206;
update customer_details set purchasing_amount = 1999 where customer_id=301;
update customer_details set purchasing_amount = 2999 where customer_id=302;
update customer_details set purchasing_amount = 3999 where customer_id=303;
update customer_details set purchasing_amount = 4999 where customer_id=304;
update customer_details set purchasing_amount = 5999 where customer_id=305;
update customer_details set purchasing_amount = 7999 where customer_id=306; 
drop table product_details;





-- day 3 

-- operators in mysql


-- assignment operator
select salary + 1000 from employee;
select salary - 1000 from employee;
select salary * 10 from employee;
select salary / 10 from employee;
select salary % 10 from employee;

-- comparison operator

select * from employee where salary = 48000;
select * from employee where salary <> 48000;
select * from employee where salary < 48000;
select * from employee where salary > 60000;
select * from employee where salary >=60000;
select * from employee where salary <= 48000;

-- logical operator
select * from employee;
select * from employee where salary > 40000 and  department="it";
select * from employee where salary > 40000 or  department="it";
update employee set salary = salary + 3000 where department="finance";


--  student table --


select * from student_details;

select st_mark + 3 from student_details;
select st_mark - 3 from student_details;
select st_mark * 3 from student_details; 
select st_mark / 3 from student_details;
select st_mark % 3 from student_details;

-- comparison operator

select * from student_details;
select * from student_details where st_mark = 90;
select * from student_details where st_mark < 90;
select * from student_details where st_mark > 90;
select * from student_details where st_mark <= 90;
select * from student_details where st_mark >= 90;

-- logical operator

select * from student_details where st_mark > 85 and st_department = "it";
select * from student_details where st_mark > 85 or st_department = "it"; 

-- staff_details
select * from staff_details;

select salary + 599 from staff_details;
select salary - 599 from staff_details;
select salary / 599 from staff_details;
select salary % 599 from staff_details;

-- comparison operator
select * from staff_details where salary = 35000;
select * from staff_details where salary < 35000;
select * from staff_details where salary > 35000;
select * from staff_details where salary <= 35000;
select * from staff_details where salary >= 35000;


-- logical operator

select * from staff_details where salary > 35000 and designation = "hod";
select * from staff_details where salary > 35000 or designation = "hod";

-- customer details 
select * from customer_details;
 select purchasing_amount + 1000 from customer_details;
 select purchasing_amount - 1000 from customer_details;
 select purchasing_amount * 1000 from customer_details;
 select purchasing_amount / 1000 from customer_details;
 select purchasing_amount % 1000 from customer_details;
 
 -- comparison operator
 select * from customer_details where purchasing_amount = 3000;
 select * from customer_details where purchasing_amount > 3000;
 select * from customer_details where purchasing_amount < 3000;
 select * from customer_details where purchasing_amount <= 3000;
 select * from customer_details where purchasing_amount >= 3000;
 
 -- logical operator
 select * from customer_details where purchasing_amount >=3000 and city = "salem";  
 select * from customer_details where purchasing_amount >=3000 or city = "chennai";
 

-- product_details

select * from product_details;
update product_details set price = 125000 where product_name="samsung s23 ultra";

-- assignment operator

select price + 199 from product_details;
select price - 199 from product_details;
select price * 199 from product_details;
select price / 199 from product_details;
select price % 199 from product_details;

-- comparison operator

select * from product_details where price < 30000;
select * from product_details where price > 30000;
select * from product_details where price <= 30000;
select * from product_details where price >= 30000;
select * from product_details where price = 30000;

-- logical operator
select * from product_details where price >=30000 and category="accessories";
select * from product_details where price >=30000 or category="accessories";
