--1 Write an SQL query to find the names of customers who have placed an order.
--2. Find the list of customers who have not placed any orders.
--3. List all orders along with the product name and price.
--4. Find the names of customers and their orders, including customers who haven't placed any orders.
--5. Retrieve a list of products that have never been ordered.
--6. Find the total number of orders placed by each customer.
--7. Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.
use [sql basics]
select * from customers
select * from  orders
select * from products

--1
select  c.customerId,c.customername, o.orderId , o.customerid
from customers c
inner join orders o 
on c.customerid= o.customerid

--2
select c.* from customers 
left join orders
on orders.customerid=customers.customerid
where orders.customerid is null

--3
select o.orderid,o.productid, p.productname, p.price from orders o
inner join products p -- can i use left join here?
on o.productid=p.productid


--4
select  c.customername, o.orderId
from customers c
left join orders o 
on c.customerid= o.customerid

--5
select p.productname from products p
left join orders o
on p.ProductID=o.ProductID
where orderid is null


--6
select c.CustomerName, count(o.orderID) as [num of orders] from customers c
left join orders o
on c.customerID=o.customerID
group by c.CustomerName


--7

select c.customername, p.productname, o.orderdate from customers c
left join orders o
on c.customerID= o.customerID

left join products p
on o.productid=p.productid 



