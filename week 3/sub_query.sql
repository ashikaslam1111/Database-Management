use hr;
select * from employees;

select * from employees
where employee_id != 107 and employee_id != 108 and 
salary >= (select salary from employees where employee_id = 107) and
salary <= (select salary from employees where employee_id = 108);


select max(salary) from employees
where job_id = 'IT_PROG';


select * from employees
where job_id != 'IT_PROG' and salary < (select max(salary) from employees
where job_id = 'IT_PROG');


select * from employees E1
where 3<=(select count(*)
from employees E2
where E1.salary > E2.salary
)
order by E1.salary;






select * from employees
where job_id != 'IT_PROG' and salary < any(select salary from employees
where job_id = 'IT_PROG');








use phitron;

create table student(
id int primary key,
age int);


insert into student values
(101,12),
(102,12),
(103,13);

select * from student E1
where 3<= (select count(*) from student E2
where E1.age <= E2.age  and E1.id != E2.id);

use hr;


select * from employees E1
where not exists(
select * from employees E2
where E2.salary > E1.salary and E2.department_id = E1.department_id
);







