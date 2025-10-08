USE p13;


INSERT INTO students VALUES (1,"Liliia Chervonetska", "AI", 2028),
(2,"Daryna Danyliuk", "SE", 2028),
(3,"Mariia Osinnia", "SE", 2028),
(4,"Nataliia Shakula", "BE", 2028),
(5,"Alyna Bondar", "EBD", 2027),
(6,"Anastasiia Gordienko", "AI", 2027),
(7,"Maryna Ksevich", "AI", 2028),
(8,"Shon Dankevych", "AI", 2029);


INSERT INTO courses VALUES
  (101,"Discrete Mathematics",6),
  (102,"R for Data Science",3),
  (103,"English for Professional and Study Purposes I",4),
  (104,"Databases",4),
  (105,"Machine Learning",6),
  (106,"Techniques of Propaganda and Counterpropaganda",3),
  (107,"Algorithms and Data Structures for Engineers",5),
  (108,"Applied Linear Algebra",4);
  
  
  INSERT INTO teachers VALUES
  (11,"Serge Yakovliev",101,201),
  (12,"Ihor Miroshnychenko",102,202),
  (13,"Nariia Chynus",103,203),
  (14,"Angelina Shynkarenko",104,204),
  (15,"Roman Mishchenko",105,205),
  (16,"Serg Yarov",106,206),
  (17,"Matviy Strechen",107,201),
  (18,"Tetiana Proschenko",108,202);
  
  
  INSERT INTO enrollments VALUES
  (111, 1, 101, 100),
  (112, 1, 102, 95),
  (113, 2, 108, 88),
  (114, 3, 106, 90),
  (115, 4, 106, 92),
  (116, 5, 108, 90),
  (117, 6, 107, 96),
  (118, 7, 101, 85),
  (119, 8, 103, 96),
  (120, 8, 102, 90);
  
  
  INSERT INTO rooms VALUES
  (201,"Mykoly Shpaka 3", 1, 20),
  (202,"Mykoly Shpaka 3", 2, 20),
  (203,"Mykoly Shpaka 4", 3, 15),
  (204,"Feofania", 4, 30),
  (205,"Feofania", 5, 20),
  (206,"Feofania", 6, 15);
  
  
  