/*Составьте список объектов вместе с их общим доходом.
 Выходная таблица должна состоять из названия объекта и доходов,
 отсортированных по доходам. Помните, что для гостей и участников действуют разные цены!*/
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
 ORDER BY profit;
