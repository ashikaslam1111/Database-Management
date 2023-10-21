use phitron;

create table employees(
employee_id int primary key,
name varchar(30) not null,
email varchar(50) not null,
phone varchar(11),
hire_date int,
salary int,
department_id int
);
 
create table department (
department_id int ,
department_name varchar(30)
 );
alter table department 
add constraint primary key(department_id);
alter table employees
add constraint fk_dpr foreign key (department_id) references department(department_id);



/* ******************** data inserting section  ********************/


insert into   department 
values
(12,'cse1');
insert into   department 
values
(13,'cse2');

select * from department;

drop table employees;
insert into employees values
(1,'aslam','hell@1','019000',12,200,12);
insert into employees values
(2,'aslam','hell@1','019000',12,2000,13);
select * from employees;
set sql_safe_updates = 0;


set sql_safe_updates = 1;
update employees
set hire_date = (select hire_date where employee_id=1) /*  not working  */
where employee_id = 2;


drop table employees;




 
select hire_date from employees where employee_id  = 2;



























  




