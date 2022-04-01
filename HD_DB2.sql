CREATE TABLE if not exists Genre(
	id serial PRIMARY KEY,
	name varchar (256) NOT NULL);

CREATE TABLE if not exists Artists(
	id serial PRIMARY KEY,
	name varchar (256) NOT NULL);

CREATE TABLE if not exists Albums(
	id serial PRIMARY KEY,
	name varchar(256) NOT NULL,
	start_year int NOT NULL);

CREATE TABLE if not exists Tracks (
	id serial PRIMARY KEY,
	album_id int REFERENCES Albums(id) NOT NULL, 
	name varchar(256) NOT NULL,
	duration int NOT NULL);

create TABLE if not exists  Collections(
	id serial PRIMARY KEY,
	name varchar(256) NOT NULL,
	start_year int NOT NULL);

CREATE TABLE if not exists Genre_Artists(
	id_genre int REFERENCES Genre (id),
	id_artist int REFERENCES Artists (id),
	CONSTRAINT pk_ga PRIMARY KEY (id_genre, id_artist));

CREATE TABLE if not exists Album_Artists(
	id_album int REFERENCES Albums (id),
	id_artist int REFERENCES Artists (id),
	CONSTRAINT pk_aa PRIMARY KEY (id_album, id_artist));
	
create TABLE if not exists  Collections_Tracks(
	id_collection int REFERENCES Collections(id),
	id_track int references Tracks(id),
	CONSTRAINT pk_ct PRIMARY KEY (id_collection, id_track));


				   
			      
