create table customer
(
 cust_id int, 
 cust_name varchar(100), 
 cust_mob varchar(15), 
 cust_country varchar(50)
);
insert into customer 
values(1,'John','123123123','India'),(2,'Merry','45654646','US'),(3,'Raj','78978999','London'),
(4,'Ram','3452879','India'),(5,'Krish','18924567','UK'),(6,'John','123123123','India'),(7,'Merry','45654646','US');

select * from customer;

create table order1
(
 order_id int,
 cust_id int,
 order_date date
);
insert into order1
values(101,1,'02-03-2022'),(101,1,'02-03-2022'),(102,2,'04-12-2022'),(102,2,'12-03-2022'),
(103,3,'12-05-2022'),(103,3,'11-03-2022'),(104,4,'08-06-2022'),(104,4,'12-08-2022'),(105,5,'10-01-2022'),(105,5,'02-03-2022');
 
select * from order1;


-----------------------------------------Inner Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer as cust
inner join order1 as od 
on cust.cust_id=od.cust_id;

-----------------------------------------Left Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer as cust
left join order1 as od 
on cust.cust_id=od.cust_id;

-----------------------------------------Right Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer as cust
right join order1 as od 
on cust.cust_id=od.cust_id;

----------------------------------------Full Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer as cust
full join order1 as od 
on cust.cust_id=od.cust_id;

-----------------------------------------Cross Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer as cust,order1 as od;  

------------------------------------------------------------assignment-----------------------------------------------
create table Employee_J
(
 emp_id int, 
 emp_name varchar(100), 
 zip_code int
);
insert into Employee_J
values(1,'John',1234),(2,'Merry',4567),(3,'Raj',1234),
(4,'Ram',577535),(5,'Krish',4567),(6,'Jaksen',577535),(7,'Virat',12312),(8,'Michel',9876);

select * from Employee_J;


create table Adress_table
(
 zip_code int,
 city varchar(50),
 country varchar(50)
);
insert into Adress_table
values(577535,'mlk','India'),(1234,'Mumbai','India'),(4567,'New York','USA'),(12312,'chicago','USA'),(3198,'xyz','abc');
select * from Adress_table;

-----------------------------------------Inner Join
select emp.emp_id,emp.emp_name,emp.zip_code,ad.city,ad.country
from Employee_J as emp
inner join Adress_table as ad 
on emp.Employee_J=ad.Adress_table;

-----------------------------------------Left Join
select emp.emp_id , emp.emp_name , emp.zip_code, ad.zip_code,ad.city,ad.country
from Employee_J as emp
left join Adress_table as ad 
on emp.Employee_J=ad.Adress_table;

-----------------------------------------Right Join
select emp.emp_id , emp.emp_name , emp.zip_code, ad.zip_code,ad.city,ad.country
from Employee_J as emp
right join Adress_table as ad 
on emp.Employee_J=ad.Adress_table;

------------------------------------------Full Join
select emp.emp_id , emp.emp_name , emp.zip_code, ad.zip_code,ad.city,ad.country
from Employee_J as emp
Full join Adress_table as ad 
on emp.Employee_J=ad.Adress_table;

------------------------------------------Cross Join
select emp.emp_id , emp.emp_name , emp.zip_code, ad.zip_code,ad.city,ad.country
from Employee_J as emp, Adress_table as ad ;

select REPLACE(replace(cust_name,'a','@'),'s','$') from customer; 



