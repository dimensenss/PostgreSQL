SELECT department.name, location.regional_group, STDDEV(employee.salary)
FROM department, location, employee
WHERE department.location_id = location.location_id
AND department.department_id = employee.department_id
GROUP BY department.name, location.regional_group
HAVING STDDEV(employee.salary) < 2000;