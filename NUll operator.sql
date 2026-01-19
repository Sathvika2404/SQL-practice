--NUll operator

select * from employees

insert into employees values(9, 'Jay','', 'IT', 73000,'2022-04-04')

insert into employees values(10, 'nithin', 'shamani', '0',54000,'2021-02-22')

-- if you clearly observe the table NULL, 0, and blank space all are completely different

select * from employees where Department is Null

select * from employees where Department = Null

select * from employees where Department is not Null

select * from employees where not Department = Null




