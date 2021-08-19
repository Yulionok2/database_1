#1.количество исполнителей в каждом жанре;
SELECT gener_id, COUNT(performer_id) 
    FROM GenersPerformers
    GROUP BY gener_id

#2.количество треков, вошедших в альбомы 2019-2020 годов;
SELECT Albums.album_title, Albums.released, COUNT(Tracks.id)
    FROM Albums
    JOIN Tracks ON Albums.id = Tracks.album_id 
    WHERE Albums.released >= 2019 AND Albums.released <= 2020
    GROUP BY Albums.album_title, Albums.released

#3.средняя продолжительность треков по каждому альбому;
SELECT Albums.album_title, AVG(Tracks.track_duration_sec) 
	FROM Albums
	JOIN Tracks ON Albums.id = Tracks.album_id 
	GROUP BY Albums.album_title

#4.все исполнители, которые не выпустили альбомы в 2020 году;
SELECT Performers.alias, Albums.released
    FROM Performers 
    JOIN AlbumsPerformers ON Performers.ID = AlbumsPerformers.performer_id
    JOIN Albums ON AlbumsPerformers.album_id = Albums.ID
    WHERE Albums.released != 2020

#5.названия сборников, в которых присутствует конкретный исполнитель;
SELECT Compilations.name
	FROM Compilations
	JOIN CompilationsTracks ON Compilations.ID = CompilationsTracks.compilation_id
	JOIN Tracks ON Tracks.ID = CompilationsTracks.track_id
	JOIN Albums ON Albums.ID = Tracks.album_id
	JOIN AlbumsPerformers ON AlbumsPerformers.album_id = Albums.ID
	JOIN Performers ON Performers.ID = AlbumsPerformers.performer_id
	WHERE Performers.alias LIKE '%%Maneskin%%'

#6.название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT Albums.album_title
     FROM Albums
     JOIN AlbumsPerformers ON AlbumsPerformers.album_id = Albums.ID
     JOIN Performers ON Performers.ID = AlbumsPerformers.performer_id
     JOIN GenersPerformers ON GenersPerformers.performer_id = Performers.ID
     GROUP BY Performers.alias, Albums.album_title
     HAVING count(GenersPerformers.gener_id) > 1

#7.наименование треков, которые не входят в сборники;
SELECT Tracks.name
	FROM Tracks
	JOIN CompilationsTracks ON CompilationsTracks.track_id = Tracks.ID
	WHERE CompilationsTracks IS NULL

#8.исполнителя(-ей), написавшего самый короткий по продолжительности трек;
SELECT Performers.alias, Tracks.track_duration_sec
	FROM Performers
	JOIN AlbumsPerformers ON Performers.ID = AlbumsPerformers.performer_id
	JOIN Tracks ON AlbumsPerformers.album_id = Tracks.album_id
	WHERE Tracks.track_duration_sec IN (SELECT MIN(track_duration_sec) FROM Tracks)

#9.название альбомов, содержащих наименьшее количество треков;
SELECT Albums.album_title, COUNT(Tracks.ID)
	FROM Albums
	JOIN Tracks ON Tracks.album_id = Albums.ID
	GROUP BY Albums.album_title
	HAVING COUNT(Tracks.id) IN (
        SELECT COUNT(Tracks.id)
        FROM Albums
		JOIN Tracks ON Tracks.album_id = Albums.ID
		GROUP BY Albums.album_title
        ORDER BY count(Tracks.id) LIMIT 1)
