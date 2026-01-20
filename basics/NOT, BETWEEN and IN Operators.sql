 -- NOT, BETWEEN and IN Operators
  select * from employees where not firstname= 'john' 

  select * from employees where not Lastname= 'miller' 

  select * from employees where salary not between 75000 and 60000

    select * from employees where not salary  between 75000 and 60000


    select * from employees where department in ('hr','it')

    select * from employees where not department in ('hr','it')

    select * from employees where department not in ('hr','it')
