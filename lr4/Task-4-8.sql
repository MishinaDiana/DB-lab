/*Oткройте транзакцию, удалите пользователя с memid = 37, 
выведите список всех членов клуба, завершите транзакцию с отказом 
о всех изменениях.  Повторно выведите список всех членов клуба. 
Сохраните скриgт на GitHub.  Повторно выполните вышеуказанные действия 
завершив транзакцию с сохранением всех изменений. 
Сравните полученные результаты.*/
USE cd;
START TRANSACTION;
DELETE FROM members WHERE memid=37;
SELECT * FROM members;
ROLLBACK;
select * from members;
/*Впервом выводе 36 строк, а во втором 37 т.к. мы отказались от изменений*/ 