-- conceftual 3.1 ############################################################

use hr;


select * from employees
where first_name = 'Steven'
limit 2;


select * from employees
where salary>(
             select salary from employees
where first_name = 'Steven'
limit 1 offset 1);
--    qusetion 2 done 1 was so easy so i did not do it

-- scaller subquerry return only one row 

select * from employees
where (department_id,salary)in
(select department_id ,max(salary)
from employees
group by department_id);

-- 3 done


-- co related sub query where the outer query and the inner qurey are cnnected with each other

select department_id, avg(salary) from employees
group by department_id;









select department_id ,max(salary)
from employees
group by department_id;




select * from employees
order by department_id asc;



-- now for the queston 4


select * from employees e1
where salary>  (select avg(salary) from employees e2 where e1.department_id = e2.department_id)
order by department_id;


