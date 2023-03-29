SELECT name,  count(artist) FROM genres_artist 
JOIN artist ON artist.id = genres_artist.artist_id 
JOIN genre ON genre.id = genres_artist.genre_id 
GROUP BY name ;




SELECT  count(track.name) FROM track
JOIN album ON track.album_id  = album.id
WHERE release_year BETWEEN 2019 AND 2020;




SELECT album.name, avg(track.duration) FROM track
JOIN album ON track.album_id  = album.id
GROUP BY album.name;




SELECT nickname FROM albums_artist
JOIN artist ON albums_artist.artist_id = artist.id
JOIN album ON albums_artist.album_id = album.id 
WHERE release_year != 2020;




SELECT Сollection."name"  FROM "track_Сollection"
JOIN track ON "track_Сollection".track_id = track.id
JOIN "Сollection" ON "track_Сollection"."Сollection_id" = "Сollection".id
JOIN album ON track.album_id = album.id
JOIN albums_artist ON albums_artist.album_id = album.id
JOIN artist ON albums_artist.artist_id  = artist.id 
WHERE nickname = 'Eminem'
GROUP BY Сollection."name";




SELECT album.name FROM albums_artist
JOIN album ON albums_artist.album_id = album.id
JOIN artist ON albums_artist.artist_id = artist.id
JOIN genres_artist ON genres_artist.artist_id = artist.id
JOIN genre ON genres_artist.genre_id = genre.id
GROUP BY album.name
HAVING  (SELECT count(artist) FROM genres_artist HAVING count(artist)> 1) > 1;




SELECT track."name"  FROM track
LEFT JOIN  "track_Сollection" ON "track_Сollection".track_id = track.id
LEFT JOIN "Сollection" ON "track_Сollection"."Сollection_id" = "Сollection".id
WHERE "Сollection".id IS NULL;




SELECT nickname, duration FROM artist
JOIN albums_artist ON albums_artist.artist_id =  artist.id
JOIN album ON albums_artist.album_id = album.id
JOIN track ON album.id = track.album_id
WHERE duration = (SELECT min(track.duration) FROM track);
  




SELECT album.name, count(track.album_id) FROM album 
JOIN track ON track.album_id = album.id
GROUP BY album."name"
HAVING count(track.album_id) <= ALL (SELECT count(track.album_id) FROM album JOIN track ON track.album_id = album.id GROUP BY album."name")









