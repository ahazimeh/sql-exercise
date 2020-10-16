Basic Queries
1-SELECT Name FROM students
2-SELECT * FROM students WHERE Age>30
3-SELECT Name FROM students WHERE Gender like 'F' AND Age=30
4-SELECT Points FROM students WHERE Name like 'alex'
5-INSERT INTO students(Name,Age,Gender,Points)VALUES('Ali',26,'M',300)
6-UPDATE students SET	Points = 30+(SELECT Points from students WHERE Name like 'Basma') WHERE Name like 'Basma'
7-UPDATE students SET	Points = (SELECT Points from students WHERE Name like 'Alex')-10 WHERE Name like 'Alex'
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
1-INSERT INTO graduates(Name,Age,Gender,Points) select Name,Age,Gender,Points FROM students WHERE Name like 'layal'
2-UPDATE graduates SET Graduation = '08/09/2018' WHERE Name like 'Layal'
3-DELETE FROM students WHERE Name like 'Layal'
Joins
1-SELECT e.Name,e.company,date FROM employees as e JOIN companies as c on e.Company = c.Name
2-
    method1:SELECT Name FROM employees WHERE Company in(SELECT Name FROM companies WHERE date<2000)
    method2:SELECT employees.Name FROM employees JOIN companies on date<2000 AND employees.Company = companies.Name
3-
    method1:SELECT Company FROM employees WHERE Role like 'Graphic Designer' GROUP By Company HAVING employees.Company in(SELECT Name FROM companies)
    method2:SELECT Company FROM employees JOIN companies on employees.Company = companies.Name AND employees.Role like 'Graphic Designer' GROUP By Company
Count & Filter
1-SELECT Name FROM students WHERE students.Points in(SELECT max(Points) FROM students)
2-SELECT round(avg(Points)) FROM students
3-SELECT count(Name) FROM students WHERE Points = 500
4-SELECT Name FROM students WHERE Name like '%s%'
5-SELECT Name FROM students ORDER By Points DESC