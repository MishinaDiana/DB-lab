USE cd;
SELECT facility, 'Самый дорогой' AS 'Стоимость' FROM facilities WHERE membercost=(SELECT max(membercost) FROM facilities)
UNION SELECT facility, 'Самый дешёвый' AS 'Стоимость'FROM facilities WHERE membercost=(SELECT min(membercost) FROM facilities);