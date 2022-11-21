<<<<<<< 1829a2adb2b8e7d2555957724655455ab0b0cc4d
--TP SQL
--Exercice 2 : requêtes simples
--Exercice 2 : requêtes simples
select * 
from MOVIE 
where DIRECTOR = 'Steven Spielberg';

SELECT distinct movie.YEAR
from movie, rating 
where rating.MID = movie.MID 
and stars>3;

select distinct reviewer.name
from movie, reviewer, rating
where movie.mid = rating.mid
and rating.rid = reviewer.rid
and movie.title = 'Gone with the Wind';

select movie.title, rating.stars, reviewer.name
from movie, reviewer, rating
where movie.mid = rating.mid
and rating.rid = reviewer.rid
and reviewer.name = movie.director;

select reviewer.name, movie.title, rating.stars, rating.ratingdate
from movie, reviewer, rating
where movie.mid = rating.mid
and rating.rid = reviewer.rid;

select distinct movie.title
from movie, reviewer, rating
where movie.mid = rating.mid
and rating.rid = reviewer.rid
and reviewer.name <> 'Chris Jackson';

create view vue1 
as select count(reviewer.name) as nbrate, movie.title as title , reviewer.name as name
from movie, reviewer, rating
where movie.mid = rating.mid
and rating.rid = reviewer.rid
group by movie.title, reviewer.name
having count(reviewer.name) > 1;
