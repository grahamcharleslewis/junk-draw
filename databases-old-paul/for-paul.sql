SELECT artists.Name AS Artist, albums.Title AS Album, tracks.Name AS Track
FROM artists, albums, tracks 
WHERE artists.Name = 'AC/DC'
AND albums.ArtistId = artists.ArtistId
AND tracks.AlbumId = albums.AlbumId
