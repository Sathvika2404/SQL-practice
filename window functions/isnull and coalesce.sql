CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);


select * from Customers

--isnull -> replaces a null value with a value

select isnull(null, '1st null value') -- if null value is found, replace with 1st null value 

select isnull('abc', null) -- (if abc is found, return null otherwise, return abc)

select coalesce('x', 'y','z') -- it returns the 1st non null value

select coalesce(null, 'y','z') -- output y

select coalesce(null, null,'z') -- output z


select * from Customers

select customerId, isnull(email, 'email NA') as email, isnull(phonenumber, 'phno NA') as phonenumber 
from customers

select customerId,
    coalesce(email, phonenumber, 'Contact NA') as contactDetails
from Customers

