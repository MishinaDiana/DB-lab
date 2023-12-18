/*Для каждого дня августа 2012 года рассчитайте скользящее среднее 
общего дохода за предыдущие 15 дней. Вывод должен содержать столбцы даты и дохода, 
отсортированные по дате. Не забудьте учесть возможность того, что в день будет нулевой доход. 
Примечание: используйте DATE_ADD для генерации серии дат.*/

USE cd;
WITH RECURSIVE Range_date AS (
    SELECT '2012-08-01' AS AugustDate
    UNION ALL
    SELECT DATE_ADD(AugustDate, INTERVAL 1 DAY) 
    FROM Range_date 
    WHERE AugustDate < '2012-08-31'
), 
TotalIncome AS(
SELECT Range_date.AugustDate, SUM(
		CASE 
			WHEN(DATE(book.starttime) != AugustDate) THEN 0
            WHEN (book.memid = 0) THEN fac.guestcost * book.slots
            ELSE fac.membercost * book.slots
        END) AS Income,
		(SUM(
        IF(book.memid = 0, fac.guestcost, fac.membercost) * book.slots
    ) / 15) as Avarage
    FROM Range_date
    LEFT JOIN bookings book ON DATE_ADD(AugustDate, INTERVAL -14 day) <= DATE(book.starttime) AND DATE(book.starttime) <= AugustDate
    LEFT JOIN facilities fac ON book.facid = fac.facid
    GROUP BY AugustDate
)
SELECT * FROM TotalIncome
ORDER BY AugustDate;	
