<<<<<<< 1829a2adb2b8e7d2555957724655455ab0b0cc4d
--TP SQL
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

select reviewer.name, movie.title
from movie, rating r1, rating r2, reviewer
where movie.mid = r1.mid
and r1.rid = reviewer.rid
and r2.rid = reviewer.rid
and r1.mid = r2.mid
and r1.RATINGDATE < r2.ratingdate
and r1.stars < r2.stars;

SELECT DISTINCT w. name n1 , w2 . name n2
FROM Rating r ,Rating r2 , Reviewer w2 , Reviewer w
WHERE w2.rID = r2.rID 
AND w.rID = r.rID
AND r.rID > r2.rID 
AND r.mID = r2.mID;

select distinct movie.title
from movie
where movie.title not in(select distinct movie.title from movie, rating where movie.mid = rating.mid);

SELECT w.name , m.title , r.stars
FROM Movie m, Rating r , Reviewer w
WHERE m. mID = r . mID AND w. rID = r . rID
AND r.stars = (
SELECT MIN( r.stars )
FROM Rating r
)

SELECT m.title , max(r.stars)
FROM Movie m, Rating r
WHERE m. mID = r . mID 
group by m.title
order by m.title;



select round(AVG(rating.stars),2), movie.title
from movie, rating
where movie.mid = rating.mid
group by movie.title;

select count(rating.mid), reviewer.name
from reviewer, rating
where reviewer.rid = rating.rid
group by reviewer.name 
having count(rating.mid) >= 3;

select(AVG(rating.stars)), movie.title
from movie, rating
where movie.mid = rating.mid
group by movie.title
having (AVG(rating.stars))=(
SELECT max(AVG(rating.stars))
FROM Rating
);




