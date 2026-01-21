-- group By examples

select * from sales

select paymentmethod,
sum(totalamount) as sumsales from sales
group by paymentmethod

