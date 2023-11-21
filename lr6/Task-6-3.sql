/*Выберите процент использования объектов по месяцам, упорядочив по возрастанию*/
USE cd;
SELECT monthname(starttime) as месяц, round(count(slots)/(select count(*) from bookings)*100, 3) as 'Использование объекта, %' from bookings
group by месяц 
order by 2;
