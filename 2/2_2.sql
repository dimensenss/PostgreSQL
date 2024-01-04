--Вибрати студентів першокурсників та відсортувати прізвища за алфавітом
SELECT *
FROM student_info
WHERE course = 1 
ORDER BY lastname ASC;