select * from students

-- row number ->  in case of a tie, row numbers are assigned randomly
select *, ROW_NUMBER() over(order by marks desc) as [row number]
from students

-- rank -> if there is a tie, next rank/ranks will be skipped
select * , rank () over(order by marks desc) as rank
from students

--dense rank -> if there is a tie, rank/ranks will not be skipped
select * , dense_rank() over(order by marks desc) as [dense rank]
from students

---------------------------------------

select *, ROW_NUMBER() over(order by marks ) as [row number]
from students

select * , rank () over(order by marks ) as rank
from students

select * , dense_rank() over(order by marks ) as [dense rank]
from students









