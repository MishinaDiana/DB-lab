/* Напишите процедуру, которая считает окупаемость каждого объекта клуба на основании 
оплаты аренд за месяц. Применить ее к июлю 2012 года.*/
USE cd;

DELIMITER //
DROP PROCEDURE IF EXISTS payback //
CREATE PROCEDURE payback (setdate DATE)
    BEGIN
       SELECT book.facid, fac.facility, SUM(p.payment) - fac.monthlymaintenance AS income
       FROM bookings AS book
	   JOIN payments AS p ON book.bookid = p.bookid
	   JOIN facilities AS fac ON book.facid = fac.facid
	   WHERE DATE_FORMAT(starttime, '%y %m') = DATE_FORMAT(setdate, '%y %m')
	   GROUP BY book.facid ORDER BY book.facid;
    END //

DELIMITER ;

CALL payback('2012-07-01');

