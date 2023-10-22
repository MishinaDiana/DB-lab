/*Выбор 10 фамилий членов клуба, сортировка их по алфавито без повторов*/
USE cd;
SELECT DISTINCT surname FROM members ORDER BY surname LIMIT 10;