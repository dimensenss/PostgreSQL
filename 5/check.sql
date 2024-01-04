--1
SELECT *
FROM students

SELECT *
FROM teachers

INSERT into students values (100, 'Galkin', 'Sergiy', 'Oleksandrovich', '2000-01-01', 101, 1, 12355, 2023)
INSERT into teachers values (5, 'Galkin', 'Sergiy', 'Oleksandrovich', '1980-05-15', 'Docent', 'Data Bases')
UPDATE teachers SET post = 'Teacher' WHERE id_teacher = 1
UPDATE students SET date_of_birth = '1999-01-01' WHERE id_student = 1

--2
SELECT group_name, stipendiya
FROM groups

SELECT faculty_name
FROM faculty

UPDATE groups SET stipendiya = 10000 WHERE group_name = 'PH-201'
UPDATE faculty SET faculty_name = 'AAA' WHERE faculty_name = 'КН'
INSERT into groups values (10, 'Name_of_group', 1000)
INSERT into faculty values (10, 'Name_of_faculty')

--3
SELECT id_group, exam_date
FROM session, lessons
WHERE session.id_lesson = lessons.id_lessons
AND lesson_name = 'Mathematical Analysis'

UPDATE session SET exam_date = '2023-01-01' WHERE id_group = 101