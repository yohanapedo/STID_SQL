<<<<<<< 1829a2adb2b8e7d2555957724655455ab0b0cc4d
--TP SQL
--exo 4
select round(AVG(rating.stars),2), movie.title
from movie, rating
where movie.mid = rating.mid
group by movie.title;

select count(rating.mid), reviewer.name
from reviewer, rating
where reviewer.rid = rating.rid
group by reviewer.name 
having count(rating.mid) >= 3;

SELECT m.title, AVG( r.stars )
FROM Movie m, Rating r
WHERE m. mID = r.mID
GROUP BY m. mID , m.title
HAVING AVG( r.stars ) = (
  SELECT MAX( avgstars )
  FROM (
    SELECT AVG( r2.stars ) AS avgstars
    FROM Rating r2
    GROUP BY r2.mID
  )
)



