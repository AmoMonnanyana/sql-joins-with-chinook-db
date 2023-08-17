SELECT COUNT(*) AS number_of_genres FROM genres; 
SELECT COUNT(*) AS number_of_artists FROM artists;
SELECT COUNT(*) AS number_of_playlists FROM playlists;

SELECT * FROM albums WHERE ArtistId =149

SELECT * from playlists

select * from playlists where Name LIKE '%s'

select * from artists where Name like 'A%'

select * from albums where ArtistId = 150

--find all the albums for a given artist
SELECT Name, AlbumId, Title from artists
JOIN albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId = 17

-- find all the songs for a given genre
SELECT * FROM genres
Join tracks on genres.GenreId = tracks.GenreId
where genres.GenreId = 5;

select * from tracks where GenreId = 5;


--find all the songs in a playlist by playlist name
SELECT * from playlists;
SELECT * from tracks;
SELECT * from playlist_track;

 
select * from playlists
join playlist_track 
on playlist_track.PlaylistId = playlists.PlaylistId
join tracks 
on playlist_track.TrackId = tracks.TrackId
where playlists.Name = "Music"

--find all the artists for a given genre
select DISTINCT(artists.Name) from genres
join tracks on genres.GenreId = tracks.GenreId
join albums on tracks.AlbumId = albums.AlbumId
join artists on artists.ArtistId = albums.ArtistId
where genres.Name = "Rock"