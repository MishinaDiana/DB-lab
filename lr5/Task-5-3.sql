/*Рассчитайте для каждого члена количество рекомендаций,
 данных этим членом клуба, искючив членов, которые не давали рекомендаций.*/
USE cd;
SELECT concat(mem2.firstname,' ',mem2.surname) as RECOMMENDATOR, count(*) FROM members mem1
JOIN members mem2 ON mem1.recommendedby=mem2.memid
GROUP BY RECOMMENDATOR;