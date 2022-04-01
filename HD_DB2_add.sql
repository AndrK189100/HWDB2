CREATE TABLE if not exists Employees(
	id int PRIMARY KEY,
	name varchar(256) NOT NULL);

CREATE TABLE if not exists Departaments(
	id int PRIMARY KEY,
	name varchar(256) NOT NULL);

ALTER TABLE if exists Employees ADD COLUMN if not exists 
	department int REFERENCES Departaments(id);

ALTER TABLE if exists Departaments ADD COLUMN if not exists
	manager int REFERENCES Employees(id);
