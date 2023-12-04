/*Выведите список членов клуба, отформатированных как 'Surname, Firstname'*/
use cd;
SELECT concat(Surname,', ',Firstname) AS ФИО FROM members
WHERE memid != 0;