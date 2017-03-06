-- 10: Find all students who do not appear in the like table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.
-- Write the SQL in the file sql/10-not-liked.sql

SELECT student.name, student.grade FROM student
LEFT OUTER JOIN student_like a
ON student.id = a.liker_id or student.id = a.likee_id
WHERE a.liker_id IS NULL AND a.likee_id IS NULL
ORDER BY student.grade, student.name; 
