USE cd;
SELECT facility, 'Самый дорогой' AS 'Стоимость' FROM facilities WHERE initialoutlay=(SELECT max(initialoutlay) FROM facilities)
UNION SELECT facility, 'Самый дешёвый' FROM facilities WHERE initialoutlay=(SELECT min(initialoutlay) FROM facilities);