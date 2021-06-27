select
	e.gender,
    d.dept_name,
    round(avg(s.salary),2) as salary,
	YEAR(s.from_date) AS calendar_year
    
from
	t_salaries s
join
	t_employees e on s.emp_no = e.emp_no
join
	t_dept_emp de on de.emp_no = e.emp_no
join
	t_departments d on d.dept_no = de.dept_no
group by 
	d.dept_no, e.gender, calendar_year
having 
	calendar_year <= 2002
order by d.dept_no;