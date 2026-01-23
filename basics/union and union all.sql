-- union and union all

select * from table1

select * from table2

--union
select c1 from table1
union 
select c1 from table2

/* UNION	
Removes duplicates
Sorting Implicit	
Performance	Slower	
*/

--union all
select c1 from table1
union all
select c1 from table2

/* union all
doesn't remove duplicates, includes all rows 
doesn't sort
performance is faster
*/
