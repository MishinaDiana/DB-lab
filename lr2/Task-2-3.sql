/*Выбор бесплатных для членов клуба объектов*/
USE cd;
SELECT facility FROM facilities WHERE membercost=0;
