/*Создайте монотонно увеличивающийся нумерованный список участников (включая гостей), 
упорядоченный по дате присоединения. Помните, что идентификаторы участников 
не обязательно будут последовательными. Используйте функцию нумерации row_number.*/
USE cd;
SELECT row_number() over(order by joindate) as num, joindate, memid, concat(firstname,' ', surname) as membername FROM members
ORDER BY num;