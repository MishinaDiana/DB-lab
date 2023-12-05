/*Классифицируйте объекты на группы одинакового размера 
(высокие, средние и низкие в зависимости от их доходов). 
Упорядочите по классификации и названию объекта.
Примечание: используйте функцию деления на группы ntile.*/
USE cd;
WITH dop AS 
(SELECT fac.facility, SUM(IF( book.memid = 0, fac.guestcost, fac.membercost)/2*book.slots) AS slots_cost
FROM facilities fac
JOIN bookings book ON fac.facid = book.facid
GROUP BY fac.facility) 
SELECT facility, slots_cost,
CASE 
WHEN NTILE(3) OVER (ORDER BY slots_cost) = 1 THEN 'High'
WHEN NTILE(3) OVER (ORDER BY slots_cost) = 2 THEN 'Medium'
WHEN NTILE(3) OVER (ORDER BY slots_cost) = 3 THEN 'Low'
END AS Income_type
FROM dop
ORDER BY facility, Income_type;