Basic queries
1) select name from students;
2) select * from students where Age>=30;
3) select name from students where Gender="F" and Age>=30;
4) select points from students where name="Alex";
5) insert into students(Name, Age, Gender, Points) values('Dana', '21', 'F', '750');
6) update students set Points=Points+5 where name='Basma';
7) update students set Points=Points-5 where name='Alex';
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
