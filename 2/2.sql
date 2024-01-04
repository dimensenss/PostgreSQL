--Выбрать суммарную стипендию группы '109' факультета 'АП'.
SELECT COUNT(id_student) AS students_count, groups.stipendiya, SUM(stipendiya )
FROM faculty, groups,students
WHERE faculty.id_faculty = groups.id_faculty
AND groups.id_group = students.id_group
AND faculty_name  = 'АП' AND groups.id_group = 109
GROUP BY groups.stipendiya