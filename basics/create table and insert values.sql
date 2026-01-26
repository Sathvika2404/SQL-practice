
--create table and insert values into
create database student
use student
create table student_details ( student_name nvarchar(256),
gender nchar(1),
age tinyint,
event_date date,
distance decimal(5,2))

select * from student_details

--insert values single rows
insert into student_details( student_name, gender, age,event_date, distance)
values ( 'raj mehra', 'm', 25, '2024-08-03', 123.11)

insert into student_details( student_name, gender, age,event_date, distance)
values ('nithin Singh','M', 32, '2023-12-06' ,119.09)

--insering multiple rows
insert into student_details( student_name, gender, age,event_date, distance)
values ( 'mayank', 'm', 18,'2024-02-02', 115.35),
('mahesh','m',34, '2023-11-09',324.66)

--brush up how to update info in a table
update student_details set event_date= '2023-11-08' where event_date='2023-11-09'


select * from student_details

--inserting only data of 2 columns in a row
insert into student_details(student_name, gender) values( 'priya', 'f')

--inserting only data of 2 columns in 3 rows

insert into student_details( age, event_date) 
values (34,'2023-10-04'),
(43, '2019-01-01'),
(19,'2022-08-08')

