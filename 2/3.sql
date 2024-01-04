--Выбрать список групп факультета 'АП' с указанием численности студентов в каждой группе.
SELECT Groups.Group_name, COUNT(Students.id_student)
FROM Groups
JOIN Faculty ON Groups.id_faculty = Faculty.id_faculty
JOIN Students ON Groups.id_group = Students.id_group
WHERE Faculty.faculty_name = 'АП'
GROUP BY Groups.Group_name;