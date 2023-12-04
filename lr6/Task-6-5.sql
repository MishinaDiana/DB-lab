/*Выведите наименования всех объектов клуба заглавными буквами, 
если они содержат в названии слово ‘Tennis’*/
USE cd;
SELECT upper(facility) FROM facilities WHERE BINARY facility LIKE '%Tennis%';