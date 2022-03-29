CREATE TABLE if not exists Genre(
	id SERIAL PRIMARY KEY,
	name varchar (256) NOT NULL);

CREATE TABLE if not exists Artists(
	id SERIAL PRIMARY KEY,
	genre_id int REFERENCES Genre(id) NOT NULL,
	name varchar (256) NOT NULL);

CREATE TABLE if not exists Albums(
	id SERIAL PRIMARY KEY,
	artist_id int REFERENCES Artists(id) NOT NULL,
	name varchar(256) NOT NULL,
	start_year varchar(4) NOT NULL);

CREATE TABLE if not exists Tracks (
	id SERIAL PRIMARY KEY,
	album_id int REFERENCES Albums(id) NOT NULL, 
	name varchar(256) NOT NULL,
	duration time NOT NULL);
				   
			      
