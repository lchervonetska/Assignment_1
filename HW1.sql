CREATE DATABASE p12;
USE p12;

CREATE TABLE students (
  student_id INT PRIMARY KEY,
  name     VARCHAR(20),
  faculty VARCHAR(20),
  year INT
);


INSERT INTO students VALUES (1,"Liliia Chervonetska", "AI", 2028),
(2,"Daryna Danyliuk", "SE", 2028),
(3,"Mariia Osinnia", "SE", 2028),
(4,"Nataliia Shakula", "BE", 2028),
(5,"Alyna Bondar", "EBD", 2027),
(6,"Anastasiia Gordienko", "AI", 2027),
(7,"Maryna Ksevich", "AI", 2028),
(8,"Shon Dankevych", "LAW", 2029);

SELECT * FROM students;


CREATE TABLE courses (
  course_id     INT PRIMARY KEY,
  name  VARCHAR(100),
  credits INT
);



INSERT INTO courses VALUES
  (101,"Discrete Mathematics",6),
  (102,"R for Data Science",3),
  (103,"English for Professional and Study Purposes I",4),
  (104,"Databases",4),
  (105,"Machine Learning",6),
  (106,"Techniques of Propaganda and Counterpropaganda",3),
  (107,"Algorithms and Data Structures for Engineers",5),
  (108,"Applied Linear Algebra",4);
  
  
SELECT * FROM courses;




CREATE TABLE teachers (
  teacher_id     INT PRIMARY KEY,
  name  VARCHAR(100),
  course_id INT,
  room_id INT
);



INSERT INTO teachers VALUES
  (11,"Serge Yakovliev",101,201),
  (12,"Ihor Miroshnychenko",102,202),
  (13,"Nariia Chynus",103,203),
  (14,"Angelina Shynkarenko",104,204),
  (15,"Roman Mishchenko",105,205),
  (16,"Serg Yarov",106,206),
  (17,"Matviy Strechen",107,201),
  (18,"Tetiana Proschenko",108,202);

  SELECT * FROM teachers;
  
  
  CREATE TABLE enrollments (
  enrollment_id     INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  grade INT
);



INSERT INTO enrollments VALUES
  (111, 1, 101, 100),
  (112, 1, 102, 95),
  (113, 2, 108, 88),
  (114, 3, 106, 76),
  (115, 4, 106, 92),
  (116, 5, 108, 90),
  (117, 6, 107, 67),
  (118, 7, 101, 80),
  (119, 8, 103, 96),
  (120, 8, 102, 90);


  SELECT * FROM enrollments;
  
CREATE TABLE rooms (
  room_id     INT PRIMARY KEY,
  building VARCHAR(50),
  number INT,
  capacity INT
);


INSERT INTO rooms VALUES
  (201,"Mykoly Shpaka 3", 1, 20),
  (202,"Mykoly Shpaka 3", 2, 20),
  (203,"Mykoly Shpaka 4", 3, 15),
  (204,"Feofania", 4, 30),
  (205,"Feofania", 5, 20),
  (206,"Feofania", 6, 15);
  
  SELECT * FROM rooms;
  

WITH AverageScore AS(
SELECT 
  s.name AS student_name,
  s.faculty, 
  s.year AS graduation_year,
  c.name AS course_name,
  t.name AS teacher_name,
  r.building,
  r.number AS room_number,
  e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN teachers t ON c.course_id = t.course_id
JOIN rooms r ON t.room_id = r.room_id)
SELECT student_name, faculty,graduation_year, AVG(grade) AS average_grade
FROM AverageScore
WHERE faculty = "AI"
GROUP BY student_name, faculty,graduation_year;



