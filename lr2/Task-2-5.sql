/*Выбор объектов, которые платны для членов клуба,
но стоимость не превышает 1/50 от стоимости месячного обслуживания */
USE cd;
SELECT facility FROM facilities WHERE membercost !=0 AND membercost<=(monthlymaintenance/50);