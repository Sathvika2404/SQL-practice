-- insert into values

select * from employees

insert into Employees(EmployeeID, FirstName, LastName, Department, Salary, HireDate) values (6, 'Raj', 'Ambani','it',67000,'2023-04-20')

insert into employees( EmployeeID, FirstName, LastName) values(7,'Rohit','Mehra') -- inserting values to only specific columns

insert into employees values(8, 'Mahesh', 'Narang', 'HR', 73000,'2024-01-21')

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='Employees'