--Задание 2
--Название и продолжительность самого длительного трека
SELECT title, duration
FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);
--Название треков, продолжительность которых не менее 3,5 минут
SELECT title
FROM tracks
WHERE duration >= 210;
--Названия сборников, вышедших в период с 2018 по 2020 годы включительно
SELECT title
FROM compilations
WHERE release_year BETWEEN 2018 AND 2020;
--Исполнители, чьё имя состоит из одного слова
SELECT name
FROM artists
WHERE name NOT LIKE '% %';
--Название треков, которые содержат слова «мой» или «my»
SELECT title
FROM tracks
WHERE LOWER(title) LIKE '%мой%' OR LOWER(title) LIKE '%my%';

--Задание 3
--Количество исполнителей в каждом жанре
SELECT g.name AS genre_name, COUNT(ag.artist_id) AS artist_count
FROM genres g
LEFT JOIN artists_genres ag ON g.genre_id = ag.genre_id
GROUP BY g.name;
--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(*) AS track_count
FROM tracks t
JOIN albums a ON t.album_ld = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;
-- Средняя продолжительность треков по каждому альбому
SELECT a.title AS album_title, AVG(t.duration) AS avg_duration
FROM albums a
JOIN tracks t ON a.album_id = t.album_ld
GROUP BY a.title;
--Все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT a.name AS artist_name
FROM artists a
WHERE a.artist_id NOT IN (
    SELECT aa.artist_id
    FROM artists_albums aa
    JOIN albums al ON aa.album_id = al.album_id
    WHERE al.release_year = 2020
);
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT DISTINCT c.title AS compilation_title
FROM compilations c
JOIN tracks_compilations tc ON c.compilation_id = tc.compilation_id
JOIN tracks t ON tc.track_id = t.track_id
JOIN albums al ON t.album_ld = al.album_id
JOIN artists_albums aa ON al.album_id = aa.album_id
JOIN artists a ON aa.artist_id = a.artist_id
WHERE a.name = 'Krek';
