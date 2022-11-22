<<<<<<< 1829a2adb2b8e7d2555957724655455ab0b0cc4d
--TP SQL

--exo3 
select distinct movie.title
from movie
where movie.title not in(select distinct movie.title from movie, rating where movie.mid = rating.mid);

SELECT w.name , m.title , r.stars
FROM Movie m, Rating r , Reviewer w
WHERE m. mID = r . mID AND w. rID = r . rID
AND r.stars = (
SELECT MIN( r.stars )
FROM Rating r
);

SELECT m.title , max(r.stars)
FROM Movie m, Rating r
WHERE m. mID = r . mID 
group by m.title
order by m.title;



