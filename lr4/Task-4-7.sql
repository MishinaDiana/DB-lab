use cd;
START TRANSACTION;
   DELETE FROM bookings WHERE bookid >-1;
   SELECT * FROM bookings;
ROLLBACK;
SELECT * FROM bookings;