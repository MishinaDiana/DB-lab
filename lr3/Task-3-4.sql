/*Выберите всех членов клуба и членов, которые их рекомендовали,  отсортировав их по имени и фамилии.*/
USE cd;
SELECT concat(mem.firstname,' ', mem.surname) AS membername,
concat(rec.firstname,' ', rec.surname) AS recname
FROM members mem
JOIN members rec ON mem.recommendedby = rec.memid 
WHERE mem.memid !=0 ORDER BY mem.surname;