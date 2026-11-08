-- Write your query below

SELECT employees.employee_id,
CASE
  WHEN employees.employee_id %2 != 0
  AND employees.name NOT LIKE 'M%'
  THEN salary
  ELSE 0
  END AS bonus
FROM employees
ORDER BY employee_id;