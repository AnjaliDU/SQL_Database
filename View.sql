select * from customer;
select * from order1;

create view customer_view AS
select order_id,cust_id,order_date
from customer;
select * from customer_view;

create view order_view AS
select order_id,cust_id,order_date
from order1;
select * from order_view;


------------------------------insert
insert into customer_view
values(8,'mona','52903567','UK');

------------------------------update
update customer_view
set cust_country='India'
where cust_id=8;

------------------------------DELETE 
delete customer_view
where cust_id=6;

------------------------------inner join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer_view as cust
inner join order_view as od 
on cust.cust_id=od.cust_id;

-----------------------------------------Left Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer_view as cust
left join order_view as od 
on cust.cust_id=od.cust_id;

-----------------------------------------Right Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer_view as cust
right join order_view as od 
on cust.cust_id=od.cust_id;

----------------------------------------Full Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer_view as cust
full join order_view as od 
on cust.cust_id=od.cust_id;

-----------------------------------------Cross Join
select cust.cust_id,cust.cust_name,cust.cust_mob,cust.cust_country,od.order_id,od.order_date
from customer_view as cust,order_view as od;