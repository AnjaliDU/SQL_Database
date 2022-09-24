--reference table - department - child table (so better to take this table first)
--refered table   - employee   - parent table

create table department
(
 dept_id int primary key,
 department varchar(50),
 location varchar(50) default 'Bangalore'
);
insert into department
values(10,'HR','Mumbai'),(20,'Accounting','kolkata'),(30,'HR','Chennai');
insert into department(dept_id,department) values(40,'sales');
select * from department;

create table employee
(
 emp_id int primary key,
 emp_name varchar(50) not null,
 dept_id int foreign key references department(dept_id),
 age int check(age>=20)
);
insert into employee
values(1,'Raj',10,24),(2,'Ram',30,20),(3,'Krish',50,22),(4,'john',40,35),(5,'merry',50,42);
select * from employee;

update employee
set dept_id=20 where emp_id=5;

drop 
--- we can update parent table 