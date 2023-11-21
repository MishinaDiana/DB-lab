/*Выберите начальное и конечное время последних 10 аренд объектов, 
упорядочив их по времени их окончания.*/
USE cd;
select bookid, facid, starttime as начало, 
addtime(starttime, sec_to_time(slots*1800)) as конец 
from bookings order by конец desc limit 10;