CREATE DATABASE p13;
USE p13;

CREATE TABLE students (
  student_id INT PRIMARY KEY,
  name     VARCHAR(20),
  faculty VARCHAR(20),
  year INT
);

CREATE TABLE courses (
  course_id     INT PRIMARY KEY,
  name  VARCHAR(100),
  credits INT
);

CREATE TABLE teachers (
  teacher_id     INT PRIMARY KEY,
  name  VARCHAR(100),
  course_id INT,
  room_id INT
);

CREATE TABLE enrollments (
  enrollment_id     INT PRIMARY KEY,
  student_id INT,
  course_id INT,
  grade INT
);


CREATE TABLE rooms (
  room_id     INT PRIMARY KEY,
  building VARCHAR(50),
  number INT,
  capacity INT
);
