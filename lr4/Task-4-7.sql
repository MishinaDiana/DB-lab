/*Удалите все записи об аренде объектов в транзакции, выведите список аренд, 
завершите транзакция с отказом от всех произведенных изменений. 
Повторите запрос списка аренд. Сравните результат.*/
USE cd;
START TRANSACTION;
   DELETE FROM bookings WHERE bookid >-1;
   SELECT * FROM bookings;
ROLLBACK;
SELECT * FROM bookings;