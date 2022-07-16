--write a SQL query that lists the names of any songs that have danceability, energy, and valence greater than 0.75.
--Your query should output a table with a single column for the name of each song.
SELECT name
FROM songs
WHERE danceability > .75
    and energy > .75
    and valence > .75;