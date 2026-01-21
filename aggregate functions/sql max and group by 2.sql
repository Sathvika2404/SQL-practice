--sql max and group by 1

select * from sales

select max(totalAmount) as maximum_amount from sales 

select max(saleDate) as recent_saleDate from sales --MAX() on a DATE column returns the latest chronological date, not alphabetical order.

select max(paymentmethod) from sales --It returns the lexicographically greatest value (dictionary order).

-- maximum quantity sold for each productID

select sum(quantity), productID from sales
group by ProductID

-- max total amount for all dist dates in saledate column
select * from sales

select distinct max(totalamount), saledate from sales
group by saledate




































