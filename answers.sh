Basic queries
1) SELECT name FROM students;
2) SELECT * FROM students WHERE Age>=30;
3) SELECT name FROM students WHERE Gender="F" and Age>=30;
4) SELECT points FROM students WHERE name="Alex";
5) INSERT INTO students(Name, Age, Gender, Points) VALUES('Dana', '21', 'F', '750');
6) UPDATE students SET Points=Points+5 WHERE name='Basma';
7) UPDATE students SET Points=Points-5 WHERE name='Alex';

Creating Table
8) CREATE TABLE graduates(
	ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name Text NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
   );
9) INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM students WHERE name="Layal";
10) UPDATE graduates set Graduation='08/09/2018' WHERE name='Layal';
11) DELETE FROM students WHERE name='Layal';

Joins
12) SELECT e.name, c.name as Company, c.date from employees e INNER JOIN companies c where e.Company=c.name;
13) SELECT name from (SELECT e.name, c.name, c.date from employees e INNER JOIN companies c where e.Company=c.name) where date<=2000;
14) SELECT comp from (SELECT e.name, c.name as comp, c.date from employees e INNER JOIN companies c where e.Company=c.name), employees e where comp=e.Company AND e.Role='Graphic Designer';
