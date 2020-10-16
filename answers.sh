Basic Queries
1-SELECT name FROM students
2-SELECT * FROM students WHERE Age>30
3-SELECT name FROM students WHERE Gender like 'F' AND Age=30
4-SELECT Points FROM students WHERE name like 'alex'
5-INSERT INTO students(name,Age,Gender,Points)VALUES('Ali',26,'M',300)
6-UPDATE students SET	Points = 30+(SELECT Points from students WHERE name like 'Basma') WHERE name like 'Basma'
7-UPDATE students SET	Points = (SELECT Points from students WHERE name like 'Alex')-10 WHERE name like 'Alex'
Creating Table
CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	TEXT,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO graduates(name,Age,Gender,Points) select name,Age,Gender,Points FROM students WHERE name like 'layal'
UPDATE graduates SET Graduation = '08/09/2018' WHERE name like 'Layal'
DELETE FROM students WHERE name like 'Layal'