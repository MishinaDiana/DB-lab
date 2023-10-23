/*Выбор имён объектов с их качественной стоимостью
("Дешёвый" если monthlymaintenance < 100
 и "Дорогой" в противном случае)*/
 USE cd;
 SELECT facility, 'Дешёвый'  AS 'Качественная стоимость' FROM facilities WHERE monthlymaintenance<100
 UNION SELECT facility, 'Дорогой' FROM facilities WHERE monthlymaintenance>=100;
