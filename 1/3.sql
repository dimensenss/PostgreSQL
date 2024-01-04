SELECT 
    e.employee_id, 
    e.last_name, 
    e.first_name, 
    e.hire_date, 
    e.salary 
FROM employee AS e

WHERE e.salary = 
	(
	SELECT MAX(e2.salary) 
	FROM employee e2 WHERE 
		DATE_TRUNC('year', AGE(CURRENT_DATE, e2.hire_date)) = 
		DATE_TRUNC('year', AGE(CURRENT_DATE, e.hire_date))
	);