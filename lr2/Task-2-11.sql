/*Объединение имён членов клуба и названия
объектов в таблицу с одним столбцом*/
USE cd;
SELECT firstname AS 'name/fasility' FROM members
UNION
SELECT facility FROM facilities;