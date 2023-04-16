-- 1) Display the total number of records in the Emp table?
use hr;
select * from employees;
select count(*) from employees; -- 107 records


-- 2) Display emp table with salary descending order?
select * from employees;
select * from employees order by SALARY desc;

-- 3) Display all the records in emp table order by ascending deptno, descending salary?
select * from employees;
select * from employees order by DEPARTMENT_ID asc, SALARY desc;

-- 4) Display all employees with how many years they have been servicing in the company?
select * from employees;
select *,year(curdate())-year(Hire_date) as 'service year' from employees;

-- Date diff 
select *,year(curdate())-year(Hire_date) as 'service year' from employees;
-- Arithmetic operators :-

-- Select hire_date + 1 from employees limit 1;
select *, Hire_date + 1 from employees limit 1;
-- Select hire_date + interval 1 month from employees limit 1;
select *, date_sub(HIRE_DATE, INTERVAL 1 month) as 'interval' from employees;
-- Select hire_date - interval 1 year from employees limit 1;
select *, date_sub(HIRE_DATE, INTERVAL -1 year) as 'interval' from employees;
-- Function :- 

-- datediff() : return the number of days between two days
	
Select datediff('2023-04-16','2023-03-12') As Difference;

-- 5) Add 3 months with hiredate in the EMP table and display the result?
select *, date_add(HIRE_DATE, INTERVAL 3 month) as 'result' from employees;

-- 6) Find the date, 15 days after today’s date.
select date_add(curdate(), INTERVAL 15 day) as 'results';

-- 7) Write a query to display the current date?
select current_date() ;
-- 8) Display a distinct job from the emp table?
select distinct job_id from employees ;

-- 9) Display all the records in the emp table where the employee was hired after 28-SEP-81 and before 03-DEC-81?

select * from employees where HIRE_DATE> 1981-09-28 and HIRE_DATE < 1981-12-03;


-- 10) Write a query that displays the employee’s names with the first letter capitalized and all 
-- other letters lowercase for all employees whose name starts with J, A, or M

select concat(upper(substring(First_NAME,1,1)),lower(substring(First_name,2))," ",last_name) as 'Full Name'
 from employees where substring(First_NAME,1,1) = 'J' or substring(First_NAME,1,1) = 'A' or substring(First_NAME,1,1) = 'M';
-- 11) Display all jobs that are in department 10. Include the location of the department in the output.
select * from jobs where JOB_ID = any(select JOB_ID from employees where DEPARTMENT_ID = 10);
-- 12) Write a query to display the employee name, department name of all employees who earn a commission
select concat(FIRST_NAME," ",LAST_NAME) 'Full Name',DEPARTMENT_ID from employees where COMMISSION_PCT>0;
-- 13) Display the empno, ename, sal, and salary increased by 15%.
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME, SALARY+ SALARY*.15 as 'increased salary' from employees;
-- 14) Display ename, sal, grade. Use emp, salgrade table
select * from employees;
-- 			Salary > 15000 Grade A
-- 			Salary > 10000 and < 15000 Grade B
-- 			Salary between  5000 abd 10000  Grade C
-- 			Salary < 5000 Grade D
-- 			
-- 			And Sort on the basis of Grades
select *, case 
when SALARY > 15000 then "Grade A"
when SALARY >10000 and SALARY < 15000 then 'Grade B'
when SALARY between 5000 and 10000 then 'Grade C'
else 'Grade D'
end as 'Grade'
from employees;