/*Произведите изменения в стоимости аренды объектов согласно расчету задания Task-7-4, 
написав update-скрипт. Напишите скрипт отмечающий оплату всех аренд за, 
используя функцию Task-7-3.*/
USE cd;

START TRANSACTION;
  CALL payback(2, MONTH('2012-07-01'), YEAR('2012-07-01'));

  SET @k = 2;
  SET @start = '2012-07-01';
  SET @stop = '2012-07-31 23:59:59';
  SET SQL_SAFE_UPDATES = 0;
  UPDATE facilities
    SET guestcost = guestcost * (SELECT rental_price_change(facid, @k, @start, @stop)), membercost = membercost * (SELECT rental_price_change(facid, @k, @start, @stop));
  UPDATE bookings
    SET payed = 1
    WHERE DATE(starttime) < '2012-09-01' AND DATE(starttime) >= '2012-08-01';
  SET SQL_SAFE_UPDATES = 1;
  
  CALL payback(2, MONTH('2012-08-01'), YEAR('2012-08-01'));
ROLLBACK;