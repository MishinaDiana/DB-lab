/*Реальные затраты на создание корта 2 (facid =1) составили 10000. 
Обновите данные в таблице, чтобы учесть это изменение.*/
use cd;
update facilities set initialoutlay = 10000 where facid = 1;