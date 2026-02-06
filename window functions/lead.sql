create database profit

use profit

-- Create a table to store monthly profit data for different products
CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);

-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);


select * from profitData

-- recalling case statement
select *, 
case
    when profit<1500 then 'low sales'
    when profit > 1499 and profit <2000 then 'moderate sales'
    else 'high sales'
end
    from profitdata

--to add a new column that shows next month profit for each product

select * , lead(Profit) over(partition by product order by monthnumber) as [next month profit] from profitdata

/* we don't want product column in the output but we want each month's total profit to be shown by 
month number and month name also a new column should be added to show next monthstotal profit*/

select monthnumber, MonthName,sum(profit)as [total profit], lead(sum(profit)) over(order by monthnumber) as [next_month_Total_profit]
from profitdata
group by monthnumber, MonthName 










