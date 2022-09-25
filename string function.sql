
select * from dlithe.dbo.S_HREMPLOYEES sh ;

SELECT UPPER(FIRST_NAME) As (FNAME)from dlithe.dbo.S_HREMPLOYEES;

SELECT LOWER(first_name) from dlithe.dbo.S_HREMPLOYEES;

SELECT TOP 10(salary) from dlithe.dbo.S_HREMPLOYEES;

SELECT RTRIM(FIRST_NAME) from dlithe.dbo.S_HREMPLOYEES; 

SELECT LTRIM(FIRST_NAME) from dlithe.dbo.S_HREMPLOYEES; 

SELECT SUBSTRING('steven',2,5) from dlithe.dbo.S_HREMPLOYEES; 

SELECT LEN(department_id) from dlithe.dbo.S_HREMPLOYEES; 

SELECT REPLACE('steven','t','l') from dlithe.dbo.S_HREMPLOYEES; 

SELECT CHARINDEX('v','steven') from dlithe.dbo.S_HREMPLOYEES;

SELECT EMPLOYEE_ID,
CASE 
	when salary>10000 then 'salary is more than 10000'
	when salary<10000 then 'salary is less then 10000'
	else 'salary is 10000'
end as salary
FROM dlithe.dbo.S_HREMPLOYEES;





