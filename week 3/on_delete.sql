--  module 11 -----
 -- on delete -- keyword ---
use phitron;
create table student(
sno int primary key,
sname varchar(20),
age int
);

create table course(
cno int primary key,
cname varchar(20)
);


create table enroll(
sno int,
cno int,
jdate date,
primary key(sno,cno),
foreign key(sno) 
          references student(sno)
          on delete cascade,
          
foreign key (cno)
            references course(cno)
            on delete cascade
            
);


insert into  student values
(1,'antik',17),
(2,'ramya',18),
(3,'ram',16);
select * from student;

insert into course values
(101,'c'),
(102,'c++'),
(103,'dbms');
select * from course;



insert into enroll values
(1,101,"5-1-20"),
(1,102,"5-1-20"),
(2,103,"5-1-20");

select * from enroll;

set sql_safe_updates  = 0;
delete from student 
where sname = "ramya";
select * from enroll;


