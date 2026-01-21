-- Having VS Where

select * from sales 
where productID=1 -- where clause is used to filter out the data from the database

select * from sales 




select productID ,
sum(totalAMount) as SumSales 
from sales 
group by productID having sum(totalAMount)>300

/* WHERE filters rows.
HAVING filters groups.

SQL execution order:
FROM
→ WHERE
→ GROUP BY
→ HAVING
→ SELECT
→ ORDER BY


WHERE

Runs before aggregation

Works on individual rows

Cannot use aggregate functions (SUM, AVG, COUNT, etc.)

Filters rows before any grouping.




HAVING

Runs after aggregation

Works on groups

Can use aggregate functions



Rule you should internalize

If the condition involves aggregates → HAVING
If it involves raw column values → WHERE

No exceptions.
*/



