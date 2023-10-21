create database phitron;
use phitron;

create table students(
roll int primary key,
name varchar(10)
);
create table result(
roll int primary key,
gread float
);
drop table result;
insert into students values
(101,'aslam'),
(102,'monir'),
(103,'pappu');

insert into result values
(103,4.00),
(101,4.94),
(102,4.50);
truncate table result;
select *from students;
select * from result;


select students.roll,students.name,result.gread from students,result
where students.roll=result.roll;

/* -----------------------------*/
use hr;
 
select employees.employee_id,employees.first_name,departments.department_name from employees,departments
where employees.department_id = departments.department_id;

/* with join statement */

select employees.employee_id,employees.first_name,departments.department_name 
from employees join departments using(department_id);


select employees.employee_id,employees.first_name,departments.department_name 
from employees join departments on (employees.department_id= departments.department_id);

/* self join */

select e.first_name,m.first_name
from employees e join   employees m on(e.manager_id = m.employee_id);



-- practice day module 10.5

select employees.first_name,employees.last_name,departments.department_name
from employees 
join departments using (department_id)
where employees.last_name = 'king';

















