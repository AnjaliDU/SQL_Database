--Dense_rank: gives same row number to the same value, leaving no holes
--Rank: gives same row number to the same value, leaving holes
--Row_number: gives a unique value to each row

select * from Employee_details ed;

-------------------------------------------------Dense rank
SELECT * FROM (
SELECT DENSE_RANK () OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY  DESC) AS DRNK,SALARY,DEPARTMENT_ID
FROM DBO.S_HREMPLOYEES sh 
)

-------------------------------------------------Dense rank with where clause
SELECT * FROM (
SELECT DENSE_RANK () OVER (PARTITION BY DEPARTMENT_ID ORDER BY HIRE_DATE  ASC) AS DRNK,SALARY,DEPARTMENT_ID,HIRE_DATE
FROM DBO.S_HREMPLOYEES sh 
WHERE DEPARTMENT_ID=90
)X
WHERE DRNK=1

-------------------------------------------------RANK 
select Employee_id,first_name,job_id,department_id,
rank() over (order by department_id desc)
select * from DBO.S_HREMPLOYEES;

select *,rank() over (partition by department order by salary desc) as rank
from Employee_details;

-------------------------------------------------row number
SELECT * FROM (
SELECT row_number () OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY  DESC) AS DRNK,SALARY,DEPARTMENT_ID
FROM DBO.S_HREMPLOYEES sh 
)

select *,row_number() over (partition by department order by salary desc) as rowNumber
from Employee_details;

-----------------------------------------------------------------------------------------------------------------------------
select Employee_id,first_name,job_id,department_id,
row_number() over(order by department_id) as RowNumber,
rank() over(order by department_id) as Rankk,
dense_rank() over(order by department_id) as DenseRank
from DBO.S_HREMPLOYEES;

----we should give order by, partition by is optional