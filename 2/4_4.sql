--Отримання факультету із найбільшою кількістю студентів:
SELECT faculty_name, COUNT(*) AS student_count
FROM student_info
GROUP BY faculty_name
ORDER BY student_count DESC
LIMIT 1;
