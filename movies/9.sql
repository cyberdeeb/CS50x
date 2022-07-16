SELECT p.name
FROM people p
JOIN stars s on s.person_id = p.id
JOIN movies m on m.id = s.movie_id
WHERE m.year = 2004
order by p.birth;