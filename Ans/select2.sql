
-- 1. From the following table return complete information about the employees. 
select * from employees;
-- 2. From the following table, write a  query to find the salaries of all employees. Return salary.  
select FIRST_NAME, LAST_NAME, SALARY from employees; 
-- 3. From the following table, write a  query to find the unique designations of the employees. Return job name.  
select distinct JOB_TITLE from jobs; 
-- 4. From the following table, write a  query to list the employees’ names, increase their salary by 15%, and express the number of Dollars.   
select concat(First_name," ", Last_name)  'Full Name', concat("$ ",(SALARY*0.15 + SALARY)) as 'Increased Salary' from employees;
-- 5. From the following table, write a  query to list the employee's name and job name as a format of "Employee & Job".  
select concat(First_name," ", Last_name, " & ", job_id) from employees; 
-- 6. Write a query to produce the output of employees as follows.  
select * from employees;
-- 7. From the following table, write a  query to find those employees with a hire date in the format like February 22, 1991.
-- Return employee ID, employee name.
select DATE_FORMAT(hire_date, "%M %d, %Y") from employees;
-- 8. From the following table, write a  query to count the number of characters except the spaces. 
-- for each employee name. Return employee name length.  
select concat(first_name," ",last_name),length(first_name)+length(last_name) from employees;
-- 9. From the following table, write a  query to find the employee ID, salary, and commission of all the employees. 
select EMPLOYEE_ID, SALARY,COMMISSION_PCT from employees;
 
-- 10. From the following table, write a  query to find the unique department with jobs. Return department ID, Job name. 
select distinct DEPARTMENT_ID,department_name from departments;
-- 11. From the following table, write a  query to find those employees who do not belong to the department 2001. Return complete information about the employees.
select * from employees where DEPARTMENT_ID != 2001;
-- 12. From the following table, write a  query to find those employees who joined before 1991. Return complete information about the employees.  
select * from employees where year(hire_date) < 1991; 
-- 13. From the following table, write a  query to calculate the average salary of employees who work as analysts. Return average salary. 
 select * from employees where JOB_ID like '%analysts%';
-- 14. From the following table, write a  query to find the details of the employee ‘AMIT’. 
select * from employees where First_NAME = "AMIT";
-- 15. From the following table, write a  query to identify employees whose commissions exceed their salaries. Return complete information about the employees.  
select * from employees where COMMISSION_PCT>SALARY;
-- 16. From the following table, write a  query to identify those employees whose salaries exceed 3000 after receiving a 25% salary increase. 
-- Return complete information about the employees.  
select * from employees where SALARY+SALARY*0.25>SALARY; 
-- 17. From the following table, write a  query to find the names of the employees whose length is six. Return employee name.  
select First_name from employees where length(first_name)=6;
-- 18. From the following table, write a  query to find out which employees joined in the month of January. Return complete information about the employees.   
select * from employees where month(hire_date) = 1;
-- 19. From the following table, write a  query to separate the names of employees and their managers by the string 'works for'. 

select concat(First_name," ",last_name," works for ", manager_ID) from employees;
-- 20. From the following table, write a  query to find those employees whose designation is ‘CLERK’. Return complete information about the employees.  
select * from employees where JOB_ID like '%CLERK%';
-- 21. From the following table, write a  query to identify employees with more than 27 years of experience. Return complete information about the employees.   
select * from employees where year(current_date())-year(hire_date)>27;
-- 22. From the following table, write a  query to find those employees whose salaries are less than 3500. Return complete information about the employees.  
select * from employees where SALARY<3500;
-- 23. From the following table, write a  query to find the employee whose designation is ‘ANALYST’. Return employee name, job name and salary. 
 select * from employees where JOB_ID like "%ANALYST%";
-- 24.From the following table, write a  query to identify those employees who joined the company in 1991. Return complete information about the employees.  
select * from employees where year(hire_date)=1991; 
-- 25. From the following table, write a  query to find those employees who joined before 1st April 1991. Return employee ID, employee name, hire date and salary.  
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,HIRE_DATE,SALARY from employees where HIRE_DATE<'1991-04-01';
-- 26. From the following table, write a  query to identify the employees who do not report to a manager. Return employee name, job name.  
select * from employees where MANAGER_ID = 0;
-- 27. From the following table, write a  query to find the employees who joined on the 1st of May 1991. Return complete information about the employees.  
select * from  employees where HIRE_DATE = "1991-04-01";
-- 28. From the following table, write a  query to identify the experience of the employees who work under the manager whose ID number is 68319. 
-- Return employee ID, employee name, salary, experience.   
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,(current_date())-year(hire_date) as 'experience in year' from employees where MANAGER_ID = 68319;
-- 29. From the following table, write a  query to find out which employees earn more than 100 per day as a salary. 
-- Return employee ID, employee name, salary, and experience.  
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,(current_date())-year(hire_date) as 'experience in year' from employees where SALARY/30 >100;
-- 30. From the following table, write a  query to identify those employees who retired after 31-Dec-99, completing eight years of service. Return employee name.  

select FIRST_NAME,LAST_NAME from employees as e, job_history as j
where e.EMPLOYEE_ID = j.EMPLOYEE_ID
and j.END_DATE > "1999-12-31";
-- 31. From the following table, write a  query to identify the employees whose salaries are odd. Return complete information about the employees.
select * from employees where salary%2!=0;
-- 32. From the following table, write a  query to identify employees whose salaries contain only three digits. Return complete information about the employees.
select salary from employees where length(floor(salary)) =3;
-- 33. From the following table, write a  query to find those employees who joined in the month of APRIL. Return complete information about the employees.   
select * from employees where month(hire_date) = 4;
-- 34. From the following table, write a  query to find out which employees joined the company before the 19th of the month. Return complete information about the employees. 
  select * from employees where day(hire_date) < 19;
-- 35. From the following table, write a  query to identify those employees who have been working as a SALESMAN and month portion of the experience is more than 10. 
-- Return complete information about the employees.  
select * from employees where job_id like '%MAN%' and (current_date())-year(hire_date) > 10;
