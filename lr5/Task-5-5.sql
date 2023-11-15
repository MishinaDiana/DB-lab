/*Рассчитайте количество аренд каждого из объектов клуба за сентябрь 2012 года.*/
USE cd;
SELECT fac.facility AS Object_name, SUM(book.slots) AS Book_count FROM facilities fac
JOIN bookings book ON fac.facid=book.facid
WHERE DATE(book.starttime)>='2012-09-01' AND DATE(book.starttime)<='2012-09-30'
GROUP BY Object_name;