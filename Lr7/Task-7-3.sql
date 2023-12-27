/* Напишите процедуру, которая считает окупаемость каждого объекта клуба на основании 
оплаты аренд за месяц. Применить ее к июлю 2012 года.*/
USE cd;

DELIMITER //
DROP PROCEDURE IF EXISTS payback //
CREATE PROCEDURE payback (facid INT, mon INT, ye INT)
    BEGIN
       SELECT book.facid, fac.facility, IF(SUM(pay.payment) = fac.monthlymaintenance, 1000000000,  fac.initialoutlay/(SUM(pay.payment) - fac.monthlymaintenance)) AS income
       FROM bookings book
	   JOIN payments pay ON book.bookid = pay.bookid
	   JOIN facilities fac ON book.facid = fac.facid
	   WHERE facid = book.facid AND MONTH(book.starttime) = mon AND YEAR(book.starttime) = ye
	   GROUP BY book.facid ORDER BY book.facid;
    END //

DELIMITER ;

CALL payback(2, MONTH('2012-07-01'), YEAR('2012-07-01'));

