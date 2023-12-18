/*Классифицируйте объекты на группы одинакового размера 
(высокие, средние и низкие в зависимости от их доходов). 
Упорядочите по классификации и названию объекта.
Примечание: используйте функцию деления на группы ntile.*/
USE cd;
WITH dop AS 
(SELECT fac.facility, SUM(IF( book.memid = 0, fac.guestcost, fac.membercost)/2*book.slots) AS slots_cost, 
NTILE(3) OVER (ORDER BY SUM(IF( book.memid = 0, fac.guestcost, fac.membercost)/2*book.slots) desc) AS Income
FROM facilities fac
JOIN bookings book ON fac.facid = book.facid
GROUP BY fac.facility) 
SELECT facility, slots_cost,
CASE 
WHEN Income = 1 THEN 'High'
WHEN Income = 2 THEN 'Medium'
ELSE 'Low'
END AS Income_type
FROM dop
ORDER BY Income_type, facility;