

CREATE ROLE column_restrictions;

GRANT SELECT, INSERT, UPDATE on students, teachers to APKN321V18;

GRANT column_restrictions TO APKN321V18;
GRANT SELECT (stipendiya, group_name) ON groups TO column_restrictions;
GRANT UPDATE (stipendiya, group_name) ON groups TO column_restrictions;
GRANT SELECT (faculty_name) ON faculty TO column_restrictions;
GRANT UPDATE (faculty_name) ON faculty TO column_restrictions;

GRANT SELECT on session, lessons to APKN321V18;

GRANT SELECT on student_info to APKN321V18;
