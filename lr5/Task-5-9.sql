/*Создайте список объектов с общим доходом менее 1000. 
Создайте выходную таблицу, состоящую из названия объекта и дохода, отсортированного по доходу. 
Помните, что для гостей и участников действуют разные цены!*/
USE cd;
 SELECT fac.facility, sum(
    CASE
    WHEN book.memid=0 THEN fac.guestcost*book.slots
    ELSE fac.membercost*book.slots
    END
)
 AS profit
 FROM facilities fac
 JOIN bookings book ON book.facid=fac.facid
 GROUP BY fac.facility
 HAVING profit < 1000
 ORDER BY profit;