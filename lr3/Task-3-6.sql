/*Выберите список бронирований на 14 сентября 2012 г.,
 стоимость которых более 30. Включите в выходные данные название заведения,
 имя участника, отформатированное как одиночное столбец, и стоимость.
 Упорядочивайте по убыванию стоимости и не используйте подзапросы.
Помните, что у гостей разные затраты по сравнению с участниками (указанные затраты указаны за получасовой «интервал»),
 а идентификатор гостя всегда имеет идентификатор 0.*/

USE cd;  
SELECT  facilities.facility, 
concat(members.firstname,' ',members.surname) as membername, case
when members.memid=0 then facilities.guestcost * bookings.slots
else facilities.membercost * bookings.slots
end as Cost
FROM facilities 
JOIN bookings ON facilities.facid = bookings.facid
JOIN members ON bookings.memid = members.memid
WHERE DATE(bookings.starttime)='2012-09-14' 
AND ((bookings.memid!=0 AND facilities.membercost * bookings.slots > 30) 
OR (bookings.memid=0 AND facilities.guestcost * bookings.slots > 30)) order by Cost DESC;

