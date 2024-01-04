CREATE TABLE Faculty (
    id_faculty INT ,
    faculty_name VARCHAR(255) NOT NULL,
    CONSTRAINT pk_faculty PRIMARY KEY (id_faculty),
    CONSTRAINT unique_faculty UNIQUE (faculty_name)
);

CREATE TABLE Groups (
    id_group INT,
    group_name TEXT NOT NULL,
    stipendiya INT NOT NULL,
    id_faculty INTEGER,
    CONSTRAINT pk_groups PRIMARY KEY (id_group),
    CONSTRAINT unique_groups UNIQUE (group_name,id_faculty),
	
    CONSTRAINT fk_groups_faculty FOREIGN KEY (id_faculty)REFERENCES Faculty (id_faculty)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Lessons (
    id_lessons INT,
    lesson_name TEXT NOT NULL,
    CONSTRAINT pk_lessons PRIMARY KEY (id_lessons)
);

CREATE TABLE Teachers (
    id_teacher INT  ,
    lastname TEXT NOT NULL,
    name TEXT NOT NULL,
    surname TEXT NOT NULL,
    date_of_birth DATE NOT NULL,
    post TEXT NOT NULL,
    cafedra TEXT NOT NULL,
    CONSTRAINT pk_teachers PRIMARY KEY (id_teacher),
    CONSTRAINT unique_fio_teachers UNIQUE (lastname,name,surname,date_of_birth)
);

CREATE TABLE Students (
    id_student INT,
    lastname TEXT NOT NULL,
    name TEXT NOT NULL,
    surname TEXT NOT NULL,
    date_of_birth DATE NOT NULL,
    id_group INTEGER,
    course INTEGER NOT NULL,
    stud_number INTEGER NOT NULL UNIQUE,
    year_of_enrollment INTEGER,
    CONSTRAINT pk_students PRIMARY KEY (id_student),
    CONSTRAINT unique_fio_students UNIQUE (lastname,name,surname,date_of_birth),
	
    CONSTRAINT fk_students_groups FOREIGN KEY (id_group) REFERENCES Groups (id_group)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Session (
    id_group INTEGER,
    id_lesson INTEGER,
    id_teacher INTEGER,
    exam_date DATE NOT NULL,
    CONSTRAINT pk_session PRIMARY KEY (id_group, id_lesson, id_teacher, exam_date),
	
    CONSTRAINT fk_session_groups FOREIGN KEY (id_group) REFERENCES Groups (id_group)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	
    CONSTRAINT fk_session_lessons FOREIGN KEY (id_lesson) REFERENCES Lessons (id_lessons)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	
    CONSTRAINT fk_session_teachers FOREIGN KEY (id_teacher) REFERENCES Teachers (id_teacher)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);