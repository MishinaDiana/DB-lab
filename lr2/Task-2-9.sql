/*Выбор всех членов клуба, зарегестрированных
с сентября 2012 года*/
USE cd;
SELECT firstname, surname, memid FROM members WHERE DATE(joindate) >= '2012-09-01';