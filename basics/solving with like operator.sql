
--solving with like operator

-- Create Employees table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees_US (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice',   'Smith',    'Finance'),
(2, 'Bob',     'Johnson',  'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana',   'Brown',    'Finance'),
(5, 'Edward',  'Jones',    'Engineering'),
(6, 'Fiona',   'Garcia',   'Marketing'),
(7, 'George',  'Miller',   'Finance'),
(8, 'Hannah',  'Wilson',   'Engineering');

select * from Employees_US


/*like operator can only be used with wildcards
 we have 2 wildcards.
 1. % - it may represent 0,1 or multiple characters
 2. _ - it exactly represents 1 character

QUESTIONS

 1. find the wmployees whose last name starts with 's'. */
 select firstname, lastname from Employees_US 
 where LastName like 's%'

 --2. find the employee whole firstname ends with 'a'
  select firstname, lastname from Employees_US 
 where firstName like '%a'

 --3. find the employee whose dept contains eng

 select * from employees_us
 where department like '%eng%'

 --4. find the employee whose lastname is 5 characters long
  select * from employees_us
 where LastName like '_____'

-- 5. find employee whode fname starts with c or d

select * from Employees_US
where FirstName like 'c%' or FirstName like 'd%'

select * from Employees_US
where FirstName like '[cd]%'


--6. find the employee whose lastname contains son
select * from employees_us
where LastName like '%son%'

--7. select empl whose fname has i letter in second position

select * from Employees_US
where FirstName like '_i%'

--8. find employee whose lastname starts with any letter between a nd l
select * from Employees_US where LastName like '[a-l]%'

--9. find the emp whose fname has no o
select * from Employees_US
where FirstName not like '%o%'

--10. find emp whose lname starts with a and 5 char long
select * from employees_us
 where LastName like '____a'

 --11. Find all employees whose Department starts with 'Mar' and ends with 'ing'.

select * from employees_us
 where Department like 'mar%ing'

--12. Find all employees whose FirstName has the letter 'a' in the third position.

select * from employees_us
 where firstName like '__a%'

--13. Find all employees whose LastName starts with 'Br' or 'Bl'.
select * from employees_us
 where LastName like 'br%' or LastName like 'bl%'

 -- 14. emp whose first name starts with vowel
 select * from employees_us
 where firstName like '[aeiou]%'

  -- 15. emp whose first name starts with a cons
   select * from employees_us
 where firstName like '[^aeiou]%'

  select * from employees_us
 where firstName not like '[aeiou]%'










