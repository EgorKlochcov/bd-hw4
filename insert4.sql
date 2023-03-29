-- Жанры

INSERT INTO genre(name)
VALUES 
	('Rap'),
	('Rock&roll'),
	('POP'), 
	('R&B'), 
	('Jazz');



-- Артисты

INSERT INTO artist(nickname)
VALUES
	('Eminem'), 
	('2Pac'), 
	('ICE CUBE'),
	('Ornette Coleman'),
	('Elvis Presley'),
	('The Weeknd'),
	('Fergie'),
	('Nelly Furtado'),
	('Post Malone');






--Альбомы и трек из альбома

INSERT INTO album(name, release_year)
VALUES('Loose', 2006);

INSERT INTO track(name, duration, album_id)
VALUES
	('Promiscuous', 4, 1),
	('Say It Right', 3, 1);





INSERT INTO album(name, release_year)
VALUES('The Dutchess', 2006);

INSERT INTO track(name, duration, album_id)
VALUES
	('Fergalicious', 3, 2),
	('Glamorous', 4, 2),
	('London Bridge', 3, 2);





INSERT INTO album(name, release_year)
VALUES('After Hours', 2020);

INSERT INTO track(name, duration, album_id)
VALUES
	('Blinding Lights', 3, 3),
	('Heartless', 3, 3),
	('Save Your Tears', 3, 3);




INSERT INTO album(name, release_year)
VALUES ('From Elvis in Memphis', 1969);
	

INSERT INTO track(name, duration, album_id)
VALUES
	('In the Ghetto', 2, 4),
	('Power of My Love', 2, 4);





INSERT INTO album(name, release_year)
VALUES('The Shape of Jazz to Come', 1959);

INSERT INTO track(name, duration, album_id)
VALUES
	('Lonely Woman', 5, 5),
	('Peace', 9, 5);





INSERT INTO album(name, release_year)
VALUES('The Predator', 1992);

INSERT INTO track(name, duration, album_id)
VALUES
	('It Was a Good Day', 4, 6),
	('Check Yo Self', 3, 6);





INSERT INTO album(name, release_year)
VALUES('Me Against the World', 1995);

INSERT INTO track(name, duration, album_id)
VALUES
	('Heavy In The Game', 4, 7),
	('If I Die 2Nite', 4, 7),
	('Old School', 4, 7);





INSERT INTO album(name, release_year)
VALUES('The Eminem Show', 2002);

INSERT INTO track(name, duration, album_id)
VALUES
	('Till I Collapse', 5, 8),
	('Without Me', 5, 8);





INSERT INTO album(name, release_year)
VALUES('Beerbongs & Bentleys', 2018);

INSERT INTO track(name, duration, album_id)
VALUES
	('rockstar', 3, 9),
	('Better Now', 4, 9),
	('Spoil My Night', 3, 9);





--Сборники

INSERT INTO Сollection(name, release_year)
VALUES
	('Top of pop', 2020),
	('OLD SCHOOL', 2018),
	('Hip-Hop mix', 2010),
	('Gold Rap-Collection', 2022), 
	('Club Music', 2015),
	('The best songs of all time', 2005),
	('Classic', 1990),
	('Music for training', 2022);






--Связи жанр-артист
INSERT INTO genres_artist(genre_id,
artist_id)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 9),
	(2, 5),
	(3, 6),
	(3, 7),
	(3, 8),
	(3, 9),
	(4, 7),
	(4, 8),
	(5, 4);






--Связи артист-альбом
INSERT INTO albums_artist(album_id,
artist_id)
VALUES
	(1, 8),
	(2, 7),
	(3, 6),
	(4, 5),
	(5, 4),
	(6, 3),
	(7, 2),
	(8, 1),
	(9,9);





--Связи сборник-трек
INSERT INTO track_Сollection(track_id,
Сollection_id)
VALUES
	(1, 1),
	(2, 1),
	(4, 1),
	(6, 1),
	(8, 1),
	(21, 1),
	(22, 1);





INSERT INTO track_Сollection(track_id,
Сollection_id)
VALUES
	(13, 2),
	(14, 2),
	(15, 2),
	(16, 2),
	(17, 2);





INSERT INTO track_Сollection(track_id,
Сollection_id)
VALUES
	(1, 3),
	(2, 3),
	(4, 3),
	(13, 3),
	(14, 3),
	(18, 3);





INSERT INTO track_Сollection(track_id,
Сollection_id)
VALUES
	(13, 4),
	(14, 4),
	(15, 4),
	(16, 4),
	(17, 4),
	(18, 4),
	(19, 4),
	(20, 4);





INSERT INTO track_Сollection(track_id,
Сollection_id)
VALUES
	(1, 5),
	(2, 5),
	(3, 5),
	(4, 5),
	(5, 5);





INSERT INTO track_Сollection(track_id,
Сollection_id)
VALUES
	(10, 6),
	(12, 6),
	(14, 6),
	(15, 6),
	(18, 6);





INSERT INTO track_Сollection(track_id,
Сollection_id)
VALUES
	(9, 7),
	(10, 7),
	(11, 7),
	(12, 7);




INSERT INTO track_Сollection(track_id,
Сollection_id)
VALUES
	(13, 8),
	(14, 8),
	(15, 8),
	(18, 8),
	(21, 8),
	(22, 8);
	
