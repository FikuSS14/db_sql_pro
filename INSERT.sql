--название групп
insert into Bands(Name)
values ('Duran Duran');

insert into Bands(Name)
values ('A-ha');

insert into Bands(Name)
values ('Pet Shop Boys');

insert into Bands(Name)
values ('Modern Talking');

--название жанров
insert into Genre(Name)
values ('Rock');

insert into Genre(Name)
values ('Metal');

insert into Genre(Name)
values ('Jazz');

--название альбомов
insert into Album(Name, Year_of)
values ('Hunting High and Low', '31.05.1985');

insert into Album(Name, Year_of)
values ('Scoundrel Days', '06.10.1986');

insert into Album(Name, Year_of)
values ('Stay on These Roads', '01.05.1988');

--название треков
insert into Songs(Album_id, Name, Duration)
values (1,'Crying my In The Rain', 4);

insert into Songs(Album_id, Name, Duration)
values (1,'Lifelines', 3);

insert into Songs(Album_id, Name, Duration)
values (2,'Summer Moved On', 4);

insert into Songs(Album_id, Name, Duration)
values (2,'What There Is', 2);

insert into Songs(Album_id, Name, Duration)
values (3,'Little Black Heart', 5);

insert into Songs(Album_id, Name, Duration)
values (3,'Velvet', 6);

--название сборников
insert into Collection(Name, Year_of)
values('Random Collection_1', '20200922');

insert into Collection(Name, Year_of)
values('Random Collection_2', '20210205');

insert into Collection(Name, Year_of)
values('Random Collection_3', '20190511');

insert into Collection(Name, Year_of)
values('Random Collection_4', '20230114');

--Присоединение артистов к жанру
insert into GenreBand(Genre_id, Bands_id)
values('1', '1');

insert into GenreBand(Genre_id, Bands_id)
values('2', '2');

insert into GenreBand(Genre_id, Bands_id)
values('3', '3');

--Присоединение артистов и альбомов
insert into BandAlbum(Band_id, Album_id)
values('1', '1');

insert into BandAlbum(Band_id, Album_id)
values('2', '2');

insert into BandAlbum(Band_id, Album_id)
values('3', '3');

--Присоединение названия треков и сборников
insert into SongCollection(Song_id, Collection_id)
values('1', '1');

insert into SongCollection(Song_id, Collection_id)
values('2', '2');

insert into SongCollection(Song_id, Collection_id)
values('3', '3');