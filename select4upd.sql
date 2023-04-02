--1)
SELECT name,  count(artist) FROM genres_artist 
JOIN artist ON artist.id = genres_artist.artist_id 
JOIN genre ON genre.id = genres_artist.genre_id 
GROUP BY name ;



--2)
SELECT  count(track.name) FROM track
JOIN album ON track.album_id  = album.id
WHERE release_year BETWEEN 2019 AND 2020;



--3)
SELECT album.name, avg(track.duration) FROM track
JOIN album ON track.album_id  = album.id
GROUP BY album.name;




--4)
SELECT nickname FROM artist
WHERE nickname IN (
	SELECT nickname FROM artist
	JOIN albums_artist ON albums_artist.artist_id = artist.id
	JOIN album ON albums_artist.album_id = album.id
	WHERE release_year = 2020);



--5)
SELECT DISTINCT Сollection."name"  FROM "track_Сollection"
JOIN track ON "track_Сollection".track_id = track.id
JOIN "Сollection" ON "track_Сollection"."Сollection_id" = "Сollection".id
JOIN album ON track.album_id = album.id
JOIN albums_artist ON albums_artist.album_id = album.id
JOIN artist ON albums_artist.artist_id  = artist.id 
WHERE  nickname =  'Eminem';




--6)
SELECT DISTINCT album.name FROM album
JOIN albums_artist ON albums_artist.album_id = album.id
JOIN artist ON albums_artist.artist_id = artist.id
JOIN genres_artist ON genres_artist.artist_id = artist.id
GROUP BY album.name, genres_artist.artist_id 
HAVING count (genres_artist.genre_id) > 1;



--7)
SELECT track."name"  FROM track
LEFT JOIN  "track_Сollection" ON "track_Сollection".track_id = track.id
LEFT JOIN "Сollection" ON "track_Сollection"."Сollection_id" = "Сollection".id
WHERE "Сollection".id IS NULL;



--8)
SELECT nickname, duration FROM artist
JOIN albums_artist ON albums_artist.artist_id =  artist.id
JOIN album ON albums_artist.album_id = album.id
JOIN track ON album.id = track.album_id
WHERE duration = (SELECT min(track.duration) FROM track);
  



--9)
SELECT album.name FROM album 
JOIN track ON track.album_id = album.id 
GROUP BY album.id
HAVING count(track) = 
	(SELECT count(track.id) FROM track
	GROUP BY track.album_id 
	ORDER BY 1
	LIMIT 1);

