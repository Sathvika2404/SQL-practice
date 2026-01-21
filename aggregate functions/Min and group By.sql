--Min and group By

select * from sales

select min(Quantity) as min_quantity from sales

select min(paymentmethod) as min_payment_method from sales

select min( saledate) as min_saledate from sales

-- select min toatl amount for each storeID

select min(totalamount), storeId from sales
group by storeID