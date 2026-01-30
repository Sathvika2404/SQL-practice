
-- Question set 1
/*
questions are about employees table from sql basics database

1) How do you select all columns from the Employees table?
2) How do you select only the FirstName and Last Name columns from the Employees table?
3) How do you find all employees who work in the 'IT' department?
4) How do you select employees with a salary greater than 70,000?
5) How do you sort the results by Last Name in ascending order?
6) How do you select distinct departments from the Employees table?
7) How do you count the number of employees in each department?
8) How do you find the maximum salary in the Employees table?
9) How do you find the average salary of employees in the 'Finance' department?
10) How do you select employees whose last name starts with 'M'?
*/


select * from employees --1.

select firstname, lastname from employees --2

select employeeid, firstname, lastname from employees where department ='IT' --3

select * from employees where salary>70000 --4

select * from employees 
order by lastname          --5

select distinct(department) from Employees --6

select department, count(employeeid)  from employees 
group by Department                                  --7

select max(salary) as MAX_SALARY from Employees --8

select avg(salary) as AVG_SALARY from Employees where Department ='finance' --9

select * from Employees where lastname like 'm%'











