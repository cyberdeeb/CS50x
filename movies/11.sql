--write a SQL query to list the titles of the five highest rated movies (in order) that Chadwick Boseman starred in, starting with the highest rated.
--Your query should output a table with a single column for the title of each movie.
--You may assume that there is only one person in the database with the name Chadwick Boseman.

select m.title
from movies m
join ratings r on r.movie_id = m.id
join stars s on s.movie_id = m.id
join people p on p.id = s.person_id
where p.name = "Chadwick Boseman"
order by r.rating desc
limit 5;