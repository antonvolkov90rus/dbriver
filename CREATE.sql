-- Создание таблицы Жанры
CREATE TABLE Genres (
genre_id SERIAL PRIMARY KEY ,
name VARCHAR(255) NOT NULL UNIQUE
);
--Создание таблицы Исполнители
CREATE TABLE Artists(
artist_id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL UNIQUE
);
--Создание таблицы Альбомы
CREATE TABLE Albums(
album_id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL UNIQUE,
release_year INT CHECK (release_year >= 1900 AND release_year <= EXTRACT(YEAR FROM CURRENT_DATE))
);
--Создание таблицы Треки
CREATE TABLE Tracks(
track_id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL UNIQUE,
duration INT check (duration >= 1 and duration <= 600),
album_ld SERIAL REFERENCES Albums(album_id)
);
--Создание таблицы Сборники
CREATE TABLE Compilations(
compilation_id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL UNIQUE,
release_year INT
);
--Создание таблицы для связи Исполнители и Жанры
CREATE TABLE Artists_Genres(
genre_id SERIAL references Genres(genre_id),
artist_id SERIAL references Artists(artist_id),
primary key(genre_id, artist_id)
);

--Создание таблицы для связи Исполнители и Альбомы
CREATE TABLE Artists_Albums(
artist_id SERIAL REFERENCES Artists(artist_id),
album_id SERIAL REFERENCES Albums(album_id),
PRIMARY KEY(artist_id,album_id)
);
--Создание таблицы для связи Треки и Сборники
CREATE TABLE Tracks_Compilations(
track_id SERIAL REFERENCES Tracks(track_id),
compilation_id SERIAL REFERENCES Compilations(compilation_id),
PRIMARY KEY(track_id,compilation_id)
);

