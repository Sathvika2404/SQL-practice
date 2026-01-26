--Copy data from one table to another

--case 1: the new table simply doesn't exist
-- case 2: new table sturcure/ new table exists

--case1:
select * from sales

select * into new_table_1 from sales
-- this statement will result in the creation of new table 1 which will be having sturucture and records both same as that of sales table

---------certain columns only to be copied
drop table new_table_1


select productid, quantity into new_table_1 from sales

select * from new_table_1

-- case 2: new table sturcure/ new table exists

select top 0 * into new_table_2 from sales

select * from new_table_2

-- now copying data from one existing table to another existing table
insert into new_table_2 select * from sales

select * from new_table_2