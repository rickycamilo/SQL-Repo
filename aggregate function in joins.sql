select
	e.gender,
    avg (s.salary) as average_salary
from
	employees e
join
	salaries s on e.emp_no = s.emp_no
group by 
	gender;
