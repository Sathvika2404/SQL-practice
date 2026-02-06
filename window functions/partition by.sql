
select * from students

-- partition by creates a window and then rows in the window will be assigned row_number, rank or dense_rank
select *, ROW_NUMBER() over(partition by subject order by marks desc ) as [row number] 
from students

select *, Rank() over(partition by subject order by marks desc ) as [rank] 
from students


select *, dense_Rank() over(partition by subject order by marks desc ) as [dense rank] 
from students

select *, rank() over(partition by student_name order by marks desc ) as [rank] 
from students















