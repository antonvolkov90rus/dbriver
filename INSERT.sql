--Добавление альбомов
INSERT INTO Albums (album_id, title, release_year) VALUES
(1, 'Istoriya_etogo_mira', 2000),
(2, 'Kamnem_po_golove', 1996),
(3, 'Doma', 2009),
(4, 'Oskolki', 2010),
(5, 'Ona', 2021),
(6, 'Ineya', 2019),
(7, 'King_of_blue', 1959),
(8, 'Pearl', 1971),
(9, 'Мои мечты', 2018),
(10, 'Печаль', 2018),
(11, 'Занесло', 2021);
--Добавление жанров
INSERT INTO Genres ("name") VALUES
('Rok'),
('Rap'),
('Pop'),
('Jazz'),
('Blues');
--Добавление исполнителей
INSERT INTO Artists ("name") VALUES
('Kino'),
('Korol i shut'),
('Guf'),
('Krek'),
('Natan'),
('Dve mashi'),
('Miles Davis'),
('Janis Joplin'),
('Светлана Лобода');
--Связь исполнителей с жанрами
INSERT INTO Artists_Genres (genre_id, artist_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(5, 8),
(3, 9);
--Связь исполнителей с альбомами
INSERT INTO Artists_Albums (artist_id, album_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(4, 9),
(4, 10),
(9, 10),
(9, 11);
--Добавление треков
INSERT INTO Tracks (title, album_ld, duration) VALUES
('Кукушка', 1, 395),
('Троллейбус', 1, 174),
('Садовник', 2, 222),
('Рыбак', 2, 77),
('Заходит Луна', 3, 217),
('Было давно', 3, 233),
('Улицы', 4, 207),
('Ответь мне', 4, 253),
('Покажи мне любовь', 5, 152),
('Камни', 5, 148),
('Босая', 6, 203),
('Лето у виска', 6, 228),
('So what', 7, 565),
('All blues', 7, 600),
('Move over', 8, 224),
('Half Moon', 8, 234),
('Мой путь', 9, 137),
('Мой друг самый лучший', 10, 195),
('Твои глаза', 11, 215),
('Парень', 11, 213);
--Добавление сборников
INSERT INTO Compilations (title, release_year) VALUES
('Rok_only', 2018),
('Rap_only', 2019),
('Pop_only', 2020),
('Jazz_only', 1960),
('Blues_only', 1972),
('Best wishes', 1981),
('Все для тебя', 2021),
('Лучшие хиты', 1998);
--Добавление связи Треки и Сборники
INSERT INTO Tracks_Compilations (compilation_id, track_id) VALUES
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(3, 58),
(3, 59),
(3, 60),
(3, 61),
(4, 62),
(4, 63),
(5, 64),
(5, 65),
(6, 66),
(6, 67);
