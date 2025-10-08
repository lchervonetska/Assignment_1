
WITH AverageScore AS(
SELECT 
  s.name AS student_name,
  s.faculty, 
  s.year AS graduation_year,
  c.name AS course_name,
  c.credits,
  t.name AS teacher_name,
  r.building,
  r.number AS room_number,
  e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN teachers t ON c.course_id = t.course_id
JOIN rooms r ON t.room_id = r.room_id)
SELECT * FROM (
    SELECT student_name, faculty, graduation_year, 
           ROUND(SUM(grade*credits)/SUM(credits), 2) AS average_grade
    FROM AverageScore
    WHERE faculty = "AI"
    GROUP BY student_name, faculty, graduation_year
    HAVING average_grade > 86
    ORDER BY average_grade DESC
    LIMIT 2
) AS AI_Top
UNION ALL
SELECT * FROM (
    SELECT student_name, faculty, graduation_year, 
           ROUND(SUM(grade*credits)/SUM(credits), 2) AS average_grade
	FROM AverageScore
    WHERE faculty = "SE"
    GROUP BY student_name, faculty, graduation_year
    HAVING average_grade > 86
    ORDER BY average_grade DESC
    LIMIT 2
    ) AS SE_Top
ORDER BY average_grade DESC