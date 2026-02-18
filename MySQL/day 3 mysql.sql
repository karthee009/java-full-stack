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
