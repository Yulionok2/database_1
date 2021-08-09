create table if not exists Performers (
	ID serial primary key,
	alias VARCHAR(30) not null unique
);

create table if not exists Music_genres (
	ID serial primary key,
	name genre VARCHAR(50) not null
);

create table if not exists GenersPerformers (
	performer_id integer references Performers(ID),
	gener_id integer references Music_genres(ID),
	constraint pk primary key (performer_id, gener_id)
);

create table if not exists Albums (
	ID serial primary key,
	album title VARCHAR(50) not null,
	released integer not null,
	number of tracks in a album integer not null
);

create table if not exists AlbumsPerformers (
	performer_id integer references Performers(ID),
	album_id integer references Albums(ID),
	constraint pa primary key (performer_id, album_id)
);

create table if not exists Tracks (
	ID serial primary key,
	name varchar(30) not null,
	track duration(sec) integer not null,
	album_id integer referance Albums(id) not null
);

create table if not exists Compilations (
	ID serial primary key,
	name varchar(30) not null,
	year of issue integer not null
); 

create table if not exists CompilationsTracks (
	compilation_id integer references Compilations(ID),
	track_id integer references Tracks(ID),
	constraint pa primary key (compilation_id, track_id)
);
