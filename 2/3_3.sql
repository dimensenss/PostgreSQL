--Отримання списку студентів, які мають однакові прізвища і навчаються на різних факультетах:
SELECT faculty_name, lastname
FROM student_info
WHERE lastname IN (
    SELECT lastname
    FROM student_info
    GROUP BY lastname
    HAVING COUNT(DISTINCT faculty_name) > 1
);
