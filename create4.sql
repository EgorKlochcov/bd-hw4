CREATE TABLE IF NOT EXISTS Genre (id serial PRIMARY KEY,
name varchar(30) UNIQUE
);

CREATE TABLE IF NOT EXISTS Artist (id serial PRIMARY KEY,
nickname varchar(30) UNIQUE
);

CREATE TABLE IF NOT EXISTS Genres_Artist (Genre_id integer REFERENCES Genre(id),
Artist_id integer REFERENCES Artist(id),
CONSTRAINT pk PRIMARY KEY (Genre_id,
Artist_id)
);

CREATE TABLE IF NOT EXISTS Album (id serial PRIMARY KEY,
name varchar(60) UNIQUE,
release_year integer NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums_Artist (Album_id integer REFERENCES Album(id),
Artist_id integer REFERENCES Artist(id),
CONSTRAINT pk2 PRIMARY KEY (Album_id,
Artist_id)
);

CREATE TABLE IF NOT EXISTS Track (id serial PRIMARY KEY,
name varchar(60) UNIQUE,
duration integer NOT NULL,
Album_id integer REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Сollection (id serial PRIMARY KEY,
name varchar(60) UNIQUE,
release_year integer NOT NULL
);

CREATE TABLE IF NOT EXISTS Track_Сollection (Track_id integer REFERENCES Track(id),
Сollection_id integer REFERENCES Сollection(id),
CONSTRAINT pk3 PRIMARY KEY (Track_id,
Сollection_id)
);