SELECT total/so_count
FROM (
  SELECT COUNT(so.order_id) AS so_count, SUM(total) AS total
  FROM employee e
  JOIN department d ON e.department_id = d.department_id
  JOIN location l ON d.location_id = l.location_id
  JOIN customer c ON c.salesperson_id = e.employee_id
  JOIN sales_order so ON so.customer_id = c.customer_id
  WHERE l.regional_group = 'BOSTON'
) subquery;

