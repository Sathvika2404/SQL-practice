-- sum, avg, count and group by

select * from sales

select sum(totalamount) as sumtotalamount, sum(quantity) as totalquantity from sales

select Avg(totalamount) as Avgtotalamount, Avg(quantity) as Avgquantity from sales


select  productID,
sum(totalamount) as sumtotalamount,
Avg(totalamount) as Avgtotalamount,
sum(quantity) as totalquantity,
Avg(quantity) as Avgquantity from sales 
group by productID

-- sum of quantity, sum amount, avg quantity, avg amount for distinct combination of store id and productID

select productID, storeId,
sum(totalamount) as sumtotalamount,
Avg(totalamount) as Avgtotalamount,
sum(quantity) as totalquantity,
Avg(quantity) as Avgquantity from sales 
group by productID, storeID

select count(*) as number_of_rows from sales 

--if there are any null values in a row count ignore and doesn't count it

select count(PaymentMethod) as number_of_rows from sales 

select
count(PaymentMethod) as number_of_rows, 
PaymentMethod from sales 
group by PaymentMethod --here, count calculate the non-null values in the payment method and ignores the null values

select count(*) as number_of_rows,
PaymentMethod from sales
group by PaymentMethod  -- COUNT(*) counts all rows in the group, including NULL values. Each PaymentMethod group includes its rows; NULL is treated as a separate group.
