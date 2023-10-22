/*Нахождение даты последней регистрации*/
USE cd;
SELECT MAX(joindate) AS 'Last date' FROM members;