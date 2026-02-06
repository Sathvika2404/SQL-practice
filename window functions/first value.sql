
create database [window functions]

use [window functions]

CREATE TABLE EmployeeSalaries (
EmployeeID INT,
EmployeeName VARCHAR(50), Salary INT, Department VARCHAR(50)
);


INSERT INTO Employeesalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');


select * from EmployeeSalaries


select *, 
FIRST_VALUE(salary) over(order by salary ) as [min salary]
from EmployeeSalaries


--name of the employee with minimum salary
select *, 
FIRST_VALUE(employeename) over(order by salary ) as [min salary emp]
from EmployeeSalaries

--name of the department with minimum salary
select *, 
FIRST_VALUE(department) over(order by salary ) as [min salary dept]
from EmployeeSalaries



select *, 
first_value(employeeID) over(partition by department order by salary) as [first_value]
from EmployeeSalaries


select *, 
first_value(employeeID) over(partition by department order by salary desc) as [first_value]
from EmployeeSalaries




select *, 
first_value(employeeID) over(partition by department order by salary desc) as [first_value id],
first_value(employeename) over(partition by department order by salary desc) as [first_value name]
from EmployeeSalaries




