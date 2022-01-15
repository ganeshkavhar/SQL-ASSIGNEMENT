1.--	Display details of jobs where the minimum salary is greater than 10000.
    SELECT * FROM EMPLOYEES
    WHERE SALARY>10000;
    
2.--	Display the first name and join date of the employees who joined between 2002 and 2005.
        SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES
        WHERE TO_CHAR(HIRE_DATE,'YYYY') BETWEEN 2002 AND 2005;

3.	-- Display first name and join date of the employees who is either IT Programmer or Sales Man.
        SELECT FIRST_NAME,HIRE_DATE
        FROM EMPLOYEES
        WHERE  JOB_ID='SALESMAN';
        
        SELECT FIRST_NAME,HIRE_DATE
        FROM EMPLOYEES
        WHERE  JOB_ID='IT_PROG';
        
4.--	Display employees who joined after 1st January 2008.
        SELECT * FROM EMPLOYEES
        WHERE TO_CHAR(HIRE_DATE,'DD-YYYY')>'1-2008';
        --may not work--
         SELECT * FROM EMPLOYEES
         WHERE HIRE_DATE>'1-2008';
        
5.--	Display details of employee with ID 150 or 160.
        SELECT * FROM EMPLOYEES
        WHERE EMPLOYEE_ID=150 OR EMPLOYEE_ID=160;
        
6.--	Display first name, salary, commission pct, and hire date for employees with salary less than 10000.
        SELECT FIRST_NAME,SALARY,COMMISSION_PCT,HIRE_DATE FROM EMPLOYEES
        WHERE SALARY<10000;
        
7 --7.	Display job Title, the difference between minimum and maximum salaries for
--jobs with max salary in the range 10000 to 20000.
    SELECT JOB_ID,MAX(SALARY),MIN(SALARY) 
    FROM EMPLOYEES
    GROUP BY JOB_ID
    HAVING  MAX(SALARY)BETWEEN 10000 AND 20000;

8.--Display details of jobs in the descending order of the title.
    SELECT JOB_ID FROM EMPLOYEES
    ORDER BY JOB_ID DESC;
    
9.--	Display employees where the first name or last name starts with S
    SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEES
    WHERE FIRST_NAME LIKE 'S%';
    
10.--	Display employees who joined in the month of May.
    SELECT * FROM EMPLOYEES
    WHERE TO_CHAR(HIRE_DATE,'MON')='MAY';
    
11.--	Display details of the employees where commission percentage is null and salary in the range 5000 to 10000
--and department is 30.
    SELECT * FROM EMPLOYEES
    WHERE COMMISSION_PCT IS NULL 
    AND SALARY BETWEEN 5000 TO 10000,DEPARTMENT_ID=30;
    

12.--	Display first name and date of first salary of the employees.
    SELECT FIRST_NAME,HIRE_DATE FROM EMPLOYEES;
    
    SELECT * FROM EMPLOYEES;
    
13.--	Display first name and experience of the employees.
    SELECT FIRST_NAME;
    
14.--Display first name of employees who joined in 2001.
    SELECT FIRST_NAME FROM EMPLOYEES
    WHERE TO_CHAR(HIRE_DATE,'YYYY')='2001';
    
15.--	Display first name and last name after converting the first letter of each name to upper case and 
--the rest to lower case.

    SELECT INITCAP(FIRST_NAME),INITCAP(LAST_NAME) 
    FROM EMPLOYEES;
    
16.--	Display the first word in job title.
    SELECT SUBSTR(JOB_ID,1,1)
    FROM EMPLOYEES;
    
17.	--Display the length of first name for employees where last name contain character ‘b’ after 3rd position.
    SELECT LENGTH(FIRST_NAME),LAST_NAME FROM EMPLOYEES
    WHERE LAST_NAME LIKE('%___b%');
    
    SELECT LAST_NAME  
    FROM EMPLOYEES;
18.--	Display first name in upper case and email address in lower case for employees  
--where the first name and email address are same irrespective of the case.
    SELECT UPPER(FIRST_NAME),LOWER(EMAIL),FIRST_NAME,EMAIL FROM EMPLOYEES;
    
19.--	Display employees who joined in the current year.   
    SELECT * FROM EMPLOYEES
    WHERE TO_CHAR(HIRE_DATE,'YYYY')='SYSYEAR';
    
    SELECT * FROM EMPLOYEES
    WHERE TO_CHAR(HIRE_DATE,'YYYY')='SYSYEAR';

20.--	Display the number of days between system date and 1st January 2011.
    SELECT ;
    
21.--	Display how many employees joined in each month of the current year.
     SELECT to_char(hire_date,'mm'),COUNT(*)
     FROM EMPLOYEES
     where  to_char(hire_date,'YYYY')in('sysyear')
     GROUP BY to_char(hire_date,'mm')
     order by to_char(hire_date,'mm');  
     
     SELECT TO_CHAR(HIRE_DATE,'MM'),COUNT(*)
     FROM EMPLOYEES
     WHERE TO_CHAR(HIRE_DATE,'YYYY')IN('SYSYEAR')
     GROUP BY TO_CHAR(HIRE_DATE,'MM')
     ORDER BY TO_CHAR(HIRE_DATE,'MM');
     
22.--	Display manager ID and number of employees managed by the manager.
    SELECT MANAGER_ID,COUNT(*)
    FROM EMPLOYEES
    GROUP BY MANAGER_ID;

23.--	Display employee ID and the date on which he ended his previous job.
    SELECT EMMPLOYEE_ID,HIRE_DATE FROM EMPLOYEES
    WHERE ;

24.--	Display number of employees joined after 15th of the month.
        
    SELECT * FROM EMPLOYEES
    WHERE TO_CHAR(HIRE_DATE,'DD')>'15';
    
25.--	Display the country ID and number of cities we have in the country.
    --SELECT COUNTRY_ID,COUNT(CITIES)
    --FROM EMPLOYEES
    --GROUP BY COUNTRY_ID;
    
26.--	Display average salary of employees in each department who have commission percentage.
    SELECT DEPARTMENT_ID,AVG(SALARY)
    FROM EMPLOYEES
    WHERE COMMISSION_PCT IS NOT NULL
    GROUP BY DEPARTMENT_ID;
    

27.--	Display job ID, number of employees, sum of salary, and difference between highest salary and
--lowest salary of the employees of the job.

    SELECT JOB_ID,COUNT(*),SUM(SALARY),
    MAX(SALARY)-MIN(SALARY) AS DIFF
    FROM EMPLOYEES
    GROUP BY JOB_ID;
    
28.--	Display years in which more than 10 employees joined.
    SELECT TO_CHAR(HIRE_DATE,'YYYY'),COUNT(*)
    FROM EMPLOYEES
    GROUP BY TO_CHAR(HIRE_DATE,'YYYY')
    HAVING COUNT(*)>10;
    
29.--	Display departments in which more than five employees have commission percentage.
    SELECT DEPARTMENT_ID FROM EMPLOYEES
    WHERE COMMISSION_PCT IS NOT NULL
    GROUP BY DEPARTMENT_ID
    HAVING COUNT(COMMISSION_PCT)>5;
30.--	Display employee ID for employees who did more than one job in the past
    
    
    
     

    
        
        
        
        
        
    
