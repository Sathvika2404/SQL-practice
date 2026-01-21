--Having

select * from sales

--total sales, total quality, avg sales, avg quantity for each distinct product

select productID, sum(totalAmount) as totalsales,
avg(totalamount) as avgsales,
 sum(quantity) as totalquantity,
avg(quantity) as avgquantity 
from sales 
group by productID



select productID, sum(totalAmount) as totalsales,
avg(totalamount) as avgsales,
 sum(quantity) as totalquantity,
avg(quantity) as avgquantity 
from sales 
group by productID
having avg(quantity) >7










