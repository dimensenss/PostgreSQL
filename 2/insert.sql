INSERT INTO Faculty (id_faculty, faculty_name)
VALUES (1, 'Faculty of Mathematics'),
       (2, 'Faculty of Physics'),
       (3, 'Faculty of Computer Science');
INSERT INTO Groups (id_group, group_name, stipendiya, id_faculty)
VALUES (101, 'Math-101', 5000, 1),
       (102, 'Math-102', 5000, 1),
       (201, 'Physics-201', 4500, 2),
       (202, 'Physics-202', 4500, 2),
       (301, 'CS-301', 6000, 3),
       (302, 'CS-302', 6000, 3);
INSERT INTO Lessons (id_lessons, lesson_name)
VALUES (1, 'Mathematical Analysis'),
       (2, 'Linear Algebra'),
       (3, 'Theoretical Mechanics'),
       (4, 'Electrodynamics'),
       (5, 'Computer Algorithms'),
       (6, 'Programming Languages'),
       (7, 'Database Systems'),
       (8, 'Artificial Intelligence');
INSERT INTO Teachers (id_teacher, lastname, name, surname, date_of_birth, post, cafedra)
VALUES (1, 'Ivanov', 'Ivan', 'Ivanovich', '1980-05-15', 'Professor', 'Mathematics'),
       (2, 'Petrov', 'Petr', 'Petrovich', '1975-02-20', 'Associate Professor', 'Physics'),
       (3, 'Sidorov', 'Sergey', 'Viktorovich', '1985-08-08', 'Assistant Professor', 'Computer Science'),
       (4, 'Kozlov', 'Kirill', 'Sergeevich', '1990-10-12', 'Lecturer', 'Computer Science');
INSERT INTO Students (id_student, lastname, name, surname, date_of_birth, id_group, course, stud_number)
VALUES (1, 'Semenov', 'Semen', 'Semenovich', '2000-01-01', 101, 1, 12345),
       (2, 'Ivanova', 'Irina', 'Ivanovna', '2001-02-02', 101, 1, 12346),
       (3, 'Petrov', 'Petr', 'Petrovich', '2000-03-03', 102, 1, 12347),
       (4, 'Kozlova', 'Ksenia', 'Sergeevna', '2001-04-04', 102, 1, 12348),
       (5, 'Sidorova', 'Svetlana', 'Viktorovna', '2000-05-05', 201, 2, 12349),
       (6, 'Ivanov', 'Igor', 'Igorevich', '2001-06-06', 201, 2, 12350);
INSERT INTO Session (id_group, id_lesson, id_teacher, exam_date)
VALUES (101, 1, 1, '2023-06-01'),
       (101, 2, 1, '2023-06-10'),
       (102, 1, 1, '2023-06-05'),
       (102, 2, 1, '2023-06-15'),
       (201, 3, 2, '2023-06-07'),
       (201, 4, 2, '2023-06-17'),
       (202, 3, 2, '2023-06-09'),
       (202, 4, 2, '2023-06-19'),
       (301, 3, 3, '2023-06-12'),
       (301, 6, 4, '2023-06-22'),
       (302, 5, 3, '2023-06-14'),
       (302, 6, 4, '2023-06-24');
INSERT INTO Groups (id_group, group_name, stipendiya, id_faculty)
VALUES (109, 'Group 109', 2000, 3);

INSERT INTO Students (id_student, lastname, name, surname, date_of_birth, id_group, course, stud_number)
VALUES (103, 'Petrov', 'Ivan', 'Ivanovich', '2002-08-09', 109, 1, 12351),
       (104, 'Semenova', 'Ekaterina', 'Sergeevna', '2002-11-12', 109, 1, 12352),
       (105, 'Kuznetsov', 'Maxim', 'Alexandrovich', '2001-03-18', 109, 2, 12353),
       (106, 'Ivanova', 'Maria', 'Alexandrovna', '2001-05-20', 109, 2, 12354);
INSERT INTO Session (id_group, id_lesson, id_teacher, exam_date)
VALUES (109, 1, 3, '2023-06-03'),
       (109, 2, 4, '2023-06-13'),
       (109, 3, 2, '2023-06-23');