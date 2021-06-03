Basic queries
1) SELECT name FROM students;
2) SELECT * FROM students WHERE Age>=30;
3) SELECT name FROM students WHERE Gender="F" and Age>=30;
4) SELECT points FROM students WHERE name="Alex";
5) INSERT INTO students(Name, Age, Gender, Points) VALUES('Dana', '21', 'F', '750');
6) UPDATE students SET Points=Points+5 WHERE name='Basma';
7) UPDATE students SET Points=Points-5 WHERE name='Alex';

Creating Table
1) CREATE TABLE graduates(
	ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Name Text NOT NULL UNIQUE,
	Age INTEGER,
	Gender TEXT,
	Points INTEGER,
	Graduation TEXT
   );
2) INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM students WHERE name="Layal";
3) UPDATE graduates set Graduation='08/09/2018' WHERE name='Layal';
4) DELETE FROM students WHERE name='Layal';

Joins
5) SELECT e.name, c.name as Company, c.date from employees e INNER JOIN companies c where e.Company=c.name;
6) SELECT name from (SELECT e.name, c.name, c.date from employees e INNER JOIN companies c where e.Company=c.name) where date<=2000;
7) SELECT comp from (SELECT e.name, c.name as comp, c.date from employees e INNER JOIN companies c where e.Company=c.name), employees e where comp=e.Company AND e.Role='Graphic Designer';

Count & Filter
1) SELECT name, Points FROM students WHERE Points=(SELECT max(Points) FROM students);
2) SELECT avg(Points) FROM students;
3) SELECT count() as studentsAbove500 FROM students WHERE Points=500;
4) SELECT name FROM students WHERE name like '%s%';
5) SELECT * FROM students ORDER BY Points DESC;
