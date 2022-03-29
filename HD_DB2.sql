CREATE TABLE if not exists Genre(
	id serial PRIMARY KEY,
	name varchar (256) NOT NULL);

CREATE TABLE if not exists Artists(
	id serial PRIMARY KEY,
	genre_id int REFERENCES Genre(id) NOT NULL,
	name varchar (256) NOT NULL);

CREATE TABLE if not exists Albums(
	id serial PRIMARY KEY,
	artist_id int REFERENCES Artists(id) NOT NULL,
	name varchar(256) NOT NULL,
	start_year varchar(4) NOT NULL);

CREATE TABLE if not exists Tracks (
	id serial PRIMARY KEY,
	album_id int REFERENCES Albums(id) NOT NULL, 
	name varchar(256) NOT NULL,
	duration time NOT NULL);
				   
			      