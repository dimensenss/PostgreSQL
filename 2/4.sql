SELECT *, AGE(CAST(CONCAT(year_of_enrollment, '-09-01') AS DATE), Date_of_birth) AS age_student_enrollment
FROM Students
WHERE  EXTRACT(year FROM AGE(CAST(CONCAT(year_of_enrollment, '-09-01') AS DATE), Date_of_birth)) < 18;





