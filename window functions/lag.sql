
-- to add a new column to show previous value profit for each product

select *, lag(profit) over(order by monthnumber) as [previous month profit]
from profitdata -- this output is wrong without partition, previous month value can be incorrect



select *, lag(profit) over(partition by product order by monthnumber) as [previous month profit]
from profitdata


/*We don't want product column inthe output but we want each month's total profit to be show by 
monthnumber & monthname, Also a new column should be added to show previous  month's total profit*/


select monthnumber, 
	monthname, 
	sum(profit) as [total profit], 
	lag(sum(profit)) over(order by monthnumber) as [previous month profit]
from profitdata
group by monthnumber, monthname



