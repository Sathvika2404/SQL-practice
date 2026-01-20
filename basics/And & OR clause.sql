/* And & OR clause */

--  write a query to select employee record where the last name of  employee is miller

select * from Employee_records where lastname = 'miller'

--  write a query to select employee record where the last name of  employee is miller and id is 3

select * from Employee_records where lastname = 'miller' and employeeid=3

--  write a query to select employee record where the employee is either from HR or from IT

select * from Employee_records where department= 'HR' or department= 'IT';

--  write a query to select employee record where the employee is either from HR or from IT and salary is 60k

select * from Employee_records where (department= 'HR' or department= 'IT') and salary=60000




