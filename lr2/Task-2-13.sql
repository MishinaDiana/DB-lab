/*Имя, фамилия и дата регистрации последних вступивших*/
USE cd;
SELECT firstname, surname, joindate FROM members WHERE joindate=(SELECT max(joindate) from members);