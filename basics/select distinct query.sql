create table employee_records(employeeid int primary key,firstname Nvarchar(50), lastname Nvarchar(50), department Nvarchar(50), salary decimal (10,2));
insert into employee_records(employeeId, firstname, lastname, department, salary) values(1,'John', 'Miller', 'HR', 60000),(2,'jane','smith', 'finance',75000), (3, 'John', 'Miller', 'HR', 60000), (4, 'Emily', 'Davis', 'IT', 85000), (5, 'Michael', 'Brown', 'Finance', 75000), (6, 'Jane', 'Smith', 'Finance', 75000);

select * from employee_records

/* select unique rows*/
select distinct firstname, lastname from employee_records
select distinct salary from employee_records
select distinct * from employee_records /*all the rows were displayed because there is now complete row that is repeating the other row.*/
