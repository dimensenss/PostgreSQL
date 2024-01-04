CREATE VIEW student_info AS
SELECT Faculty.faculty_name, Students.course, Groups.group_name,Students.lastname, Students.name, Students.surname
FROM Faculty
JOIN Groups ON Faculty.id_faculty = Groups.id_faculty
JOIN Students ON Groups.id_group = Students.id_group;