SELECT AVG(r.rating)
FROM ratings r
JOIN movies m on m.id = r.movie_id
WHERE m.year = 2012;