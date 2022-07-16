--write a SQL query to list the names of all people who starred in a movie in which Kevin Bacon also starred.
--Your query should output a table with a single column for the name of each person.
--There may be multiple people named Kevin Bacon in the database. Be sure to only select the Kevin Bacon born in 1958.
--Kevin Bacon himself should not be included in the resulting list.
with needed_movie_id as (
    select s.movie_id
     from stars s
     join people p on s.person_id = p.id
     where p.birth = 1958 and p.name = "Kevin Bacon"
)

select distinct(p.name)
from people p
join stars s on s.person_id = p.id
join movies m on m.id = s.movie_id
join needed_movie_id nmi on nmi.movie_id = s.movie_id
where m.id in
    (nmi.movie_id)
and p.name != "Kevin Bacon";
