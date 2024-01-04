SELECT course, COUNT(*) AS count_students
FROM students
GROUP BY course;