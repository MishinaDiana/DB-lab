/*Составьте список общего количества бронирований на каждый объект в месяц в 2012 году.*/
USE cd;
SELECT book.facid,fac.facility, MONTH(book.starttime) AS month_num, sum(book.slots) FROM facilities fac
JOIN bookings book ON fac.facid=book.facid
WHERE YEAR(book.starttime)='2012'
GROUP BY book.facid, month_num;