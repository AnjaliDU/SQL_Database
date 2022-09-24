SELECT * FROM dlithe.dbo.S_HREMPLOYEES  
WHERE EMPLOYEE_ID = 116;

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE SALARY >= 10000;

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE SALARY <=10000;

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE DEPARTMENT_ID <> 60;

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE FIRST_NAME LIKE 'a%' or FIRST_NAME  LIKE 'b%';

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE FIRST_NAME LIKE 'alana' and LAST_NAME LIKE 'walsh';

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE FIRST_NAME NOT LIKE 'a%' and LAST_NAME NOT LIKE 'b%';

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE FIRST_NAME NOT LIKE 'a%' and LAST_NAME NOT LIKE 'w%';

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE HIRE_DATE BETWEEN '2008/01/01' AND '2009/01/01';

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE SALARY IS NULL ;

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE DEPARTMENT_ID IS NOT NULL ;

SELECT * FROM dlithe.dbo.S_HREMPLOYEES 
WHERE DEPARTMENT_ID IN (50,60,90);