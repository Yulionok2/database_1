SELECT album_title, released FROM Albums
    WHERE released = 2018;

SELECT name, track_duration_sec FROM Tracks
    WHERE ORDER BY track_duration_sec DESC;

SELECT name, track_duration_sec FROM Tracks
    WHERE track_duration_sec > 210;

SELECT name, year_of_issue FROM Compilations
    WHERE year_of_issue BETWEEN 2018 AND 2020;

SELECT alias FROM Performers
    WHERE alias NOT LIKE '%% %%';

SELECT name FROM Tracks
    WHERE name LIKE '%%мой%%' OR name LIKE '%%my%%';