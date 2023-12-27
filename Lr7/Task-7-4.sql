/*Напишите функцию, которая будет рассчитывать увеличение/уменьшение стоимость аренды объекта 
на последующие месяцы для изменения (увеличения или уменьшения) срока окупаемость на заданную долю 
(в процентах) на основании расчета окупаемости за уже оплаченные периоды. 
Сохраните расчет в виде csv или sql файла (например, используя временные таблицы).*/
USE cd;

DELIMITER //

DROP FUNCTION IF EXISTS rental_price_change //
CREATE FUNCTION rental_price_change(facid INT, part FLOAT, starttime DATE, stoptime TIMESTAMP)
  RETURNS VARCHAR(50)
  READS SQL DATA
  NOT DETERMINISTIC
  BEGIN
    DECLARE income DECIMAL(10, 2);
    DECLARE servicing DECIMAL(10, 2);
    DECLARE net_income DECIMAL(10, 2);
    DECLARE price DECIMAL(10, 2);
    DECLARE k DECIMAL(10, 2);

    /* доход за всё время использования объекта, не учитывая стоимость обсулуживания*/
    SELECT SUM(pay.payment) INTO income FROM payments pay
    JOIN bookings book ON book.bookid = pay.bookid
    JOIN facilities fac ON book.facid = fac.facid
    WHERE facid = book.facid AND book.starttime BETWEEN starttime AND stoptime
    GROUP BY book.facid;

    IF income IS NULL THEN 
    RETURN 1;
    END IF;


   /* траты на обслуживание объекта за всё время*/
    SELECT fac.monthlymaintenance * (MONTH(stoptime) - MONTH(starttime) + 1) INTO servicing
	FROM facilities AS fac
	JOIN bookings AS book ON book.facid = fac.facid WHERE facid = book.facid
	GROUP BY book.facid;

    /*стоимость объекта*/
    SELECT fac.initialoutlay INTO price FROM facilities AS fac
	WHERE facid = fac.facid;

    /*чистый доход объекта*/
    SET net_income = (income - servicing);

    /*проверка окупаемости*/
    IF net_income <= 0 OR price <= net_income 
    THEN 
    RETURN 1;
    END IF;
    
    SET k = ((1 / part) * (price - net_income) / price * (1 - servicing / income) + servicing / income);
    RETURN k;
  END //

DELIMITER ;

/*сохранение результата в csv файл*/
SELECT rental_price_change(2, 3, '2012-07-01','2012-07-31 23:59:59')
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/output.csv' 
FIELDS ENCLOSED BY '"' 
TERMINATED BY ';' 
ESCAPED BY '"' 
LINES TERMINATED BY '\r\n';