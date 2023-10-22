/*Выбор всех членов клуба, зарегестрированных
с 12 сентября 2012 года*/
USE cd;
SELECT firstname, surname, memid FROM members WHERE joindate >= '01.09.2012';