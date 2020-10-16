Basic Queries
1-SELECT name FROM students
2-SELECT * FROM students WHERE Age>30
3-SELECT name FROM students WHERE Gender like 'F' AND Age=30
4-SELECT Points FROM students WHERE name like 'alex'
5-INSERT INTO students(name,Age,Gender,Points)VALUES('Ali',26,'M',300)
6-UPDATE students SET	Points = 30+(SELECT Points from students WHERE name like 'Basma') WHERE name like 'Basma'
7-UPDATE students SET	Points = (SELECT Points from students WHERE name like 'Alex')-10 WHERE name like 'Alex'