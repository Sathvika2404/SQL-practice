/* Where Clause*/

select * from employee_records where employeeId=2;

select employeeId, firstname from employee_records where employeeId=2;

select * from employee_records where salary>=75000

select * from employee_records where salary<75000

select distinct * from employee_records where salary<75000

select distinct firstname, lastname, salary from employee_records where salary<=75000