/*Выберите количество аренд объектов клуба в каждый месяц.*/
USE cd;
SELECT monthname(starttime) as месяц, count(slots) from bookings
group by месяц;
