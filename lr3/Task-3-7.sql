/*Выберите список всех членов, включая человека, 
который их рекомендовал (если таковой имеется), 
без использования каких-либо объединений. 
Исключите в списке дубликаты, упорядочите лист по ФИО (==   имя + фамилия).*/
use cd;
select distinct concat(mem.surname,' ',mem.firstname) as membername,
concat(rec.surname,' ',rec.firstname) as recname
from members mem, (SELECT memid, recommendedby, surname, firstname from members) rec 
where mem.recommendedby=rec.memid;