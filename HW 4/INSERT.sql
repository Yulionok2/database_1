INSERT INTO Performers(alias)
	VALUES('Miyagi'), ('Little Big'), ('Artik & Asti'), ('Maneskin'),
	('GAYAZOV$BROTHER$'), ('Jony'), ('Zivert'), ('Andy Panda');

INSERT INTO Music_genres(name_genre)
	VALUES('Hip-Hop'), ('Electonic music'), ('Pop music'), ('Rock'),
	('Rap'), ('Deep house');
	
INSERT INTO Albums(album_title, released)
	VALUES('Yamakasi', 2020), ('Список твоих мыслей', 2019), ('ANTIPOSITIVE, PT.2', 2018), ('Teatro d`ira - Vol.I', 2021),
	('Сияй', 2018), ('Uno', 2020), ('Кредо', 2019), ('7(part 1)', 2019);
	
INSERT INTO Tracks(name, track_duration_sec, album_id)
	VALUES('Atlant', 187, 1), ('Minor', 175, 1), ('Под гипнозом', 208, 3), 
	('Love your voice', 150, 6),('Skibidi', 163, 8), ('I wanna be your slave', 153, 4), 
	('Там ревели горы', 176, 1), ('До встречи на танполе', 205, 5), ('Zitti e buoni', 192, 4),
	('Аллея', 143, 6), ('Зелёные волны', 223, 7), ('Лали', 148, 6),
	('Ёще хочу', 205, 7), ('Uno', 159, 2), ('Кредо', 202, 5);
	
INSERT INTO Compilations(name, year_of_issue)
	VALUES('TOP_2019', 2019), ('Summer tracks', 2021), ('Perfomers of the year', 2018), 
	('Playlist of the day', 2020),('A PARTY', 2019), ('Fire', 2020), 
	('Russian hits', 2018), ('Cheerful morning', 2021);

INSERT INTO GenersPerformers(performer_id, gener_id)
	VALUES(1, 1), (2, 3), (2, 4), (3, 3),(3, 6), 
	(4, 4), (5, 1), (5, 6), (6, 3), (7, 3), (8, 1);
 
INSERT INTO AlbumsPerformers(performer_id, album_id)
	VALUES(1, 1), (2, 6), (3, 8), (4, 4), 
	(5, 7), (6, 2), (7, 5), (8, 1);
	
	
INSERT INTO CompilationsTracks(compilation_id, track_id)
	VALUES(1, 4), (1, 15), (1, 3), (2, 7), (2, 8), 
	(3, 3), (3, 13), (4, 12), (4, 7), (4, 5),
	(5, 5), (5, 12), (5, 10), (6, 1), (6, 2),
	(7, 11), (7, 13), (8, 6), (8, 2), (8, 11);
	
