--2.Название и продолжительность самого длительного трека
select Name, Duration from Songs
where Duration = (select max(Duration) from Songs);

--Название треков, продолжительность которых больше 3.5 минут
select Name, Duration from Songs
where Duration > 3.5;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
select Name from Collection
where Year_of >= '20180101' AND Year_of <= '20200101';

--Исполнители, чьё имя состоит из одного слова
select Name from Bands
where not Name like '% %';

--Название треков, которые содержат слово «мой» или «my»
select Name from Songs
where Name like '%мой%' or Name like '%my%';

--3.Количество исполнителей в каждом жанре
select g.name, count(Bands_id) from GenreBand sg
left join genre g on g.id = sg.genre_id
group by g.name;

--Количество треков, вошедших в альбомы 2019-2020 годов;
select count(*) Количество from songs s
left join album a on s.album_id = a.id
where DATE_PART('year', a.year_of::date) between 2019 and 2020;

--Средняя продолжительность треков по каждому альбому;
select a.name , avg(s.duration) from songs s
left join album a on s.album_id = a.id
group by a.name;

--Все исполнители, которые не выпустили альбомы в 2020 году;
select s.name from album a 
left join bandAlbum sa on sa.album_id = a.id
left join bands s on s.id = sa.album_id 
where not DATE_PART('year', a.year_of::date) = 2020
group by s.name;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct c.name from collection c
left join songcollection cs on cs.collection_id = c.id 
left join songs s on cs.song_id = s.id 
left join album a on s.album_id = a.id 
left join bandalbum sa on a.id = sa.album_id 
left join bands s2 on s2.id = sa.band_id
where s2.name like 'Duran Duran';