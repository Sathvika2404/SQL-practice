-- questions set 2

/*
1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000? ~ ~
2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
3. How do you select employees who do not work in the 'Finance' department? ~
4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department? ~ ~
5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000? ~
6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department? ~ ~
8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
9. How do you select employees who work in the 'IT' department and either have a salary greater than 75,000 or have the first name 'Laura'
10. How do you find employees who do not work in the 'HR' or 'IT' departments?
*/
select * from Employees order by Salary

select * from employees where Department = 'IT' and salary > 75000 --1

select * from employees where Department = 'HR' or salary < 60000 --2

select * from employees where not Department = 'finance'  --3

select * from employees where Department = 'Finance' and salary between 60000 and 70000 --4

select * from employees where Department = 'IT' and  salary <= 80000 --5

select * from employees where Department in ('hr','finance') and salary>65000 --6

select * from employees where lastname like 'd%' and not department like 'HR' --7

select * from employees where not Department like 'IT' and salary > 70000 --8

select * from employees where Department = 'IT' and (salary> 75000 or FirstName like 'laura') --9

select * from employees where not Department in ('hr','it') --10













