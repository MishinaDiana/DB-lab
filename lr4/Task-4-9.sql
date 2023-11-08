/*Выведите членов клуба, которые не арендовали объекты клуба; 
удалите всех членов клуба, которые не арендовали объекты клуба. 
Проверьте есть ли в клубе член с mimid = 37*/
USE cd;
SELECT memid, surname, firstname FROM members WHERE memid NOT IN (SELECT DISTINCT memid FROM bookings);
SET SQL_SAFE_UPDATES = 0;
DELETE FROM members WHERE memid NOT IN (SELECT DISTINCT memid FROM bookings);
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM members;
/*Члена с memid = 37 в клубе нет*/