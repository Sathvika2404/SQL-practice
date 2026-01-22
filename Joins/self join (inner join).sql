--self join (inner join)

select * from table1

select * from table1 a
inner join table1 b
on a.c1=b.c1

-- inner join is joining the same table. it ignores null values