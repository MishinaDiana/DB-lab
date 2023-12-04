/*Составьте список трех крупнейших объектов, приносящих доход (включая связи). 
Вывод названия и ранга объекта, отсортированный по рангу и названию объекта.*/
USE cd;
SELECT fac.facility, RANK() OVER (ORDER BY SUM(IF(book.memid = 0, fac.guestcost * book.slots, fac.membercost * book.slots)) DESC) AS r
FROM facilities fac
JOIN bookings book ON fac.facid=book.facid
GROUP BY fac.facility
ORDER BY r, fac.facility LIMIT 3;