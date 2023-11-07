use cd;
START TRANSACTION;
   TRUNCATE TABLE bookings;
   SELECT * FROM bookings;
ROLLBACK;
SELECT * FROM bookings;