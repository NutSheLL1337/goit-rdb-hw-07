SELECT id, date, YEAR(date), MONTH(date), DAY(date)
FROM orders; 

SELECT id, date, DAY(date)+1
FROM orders;

SELECT id, date, UNIX_TIMESTAMP(date)
FROM orders;

SELECT COUNT(id)
FROM orders
WHERE TIMESTAMP(date) BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

SELECT JSON_OBJECT('id', id, 'date', date)
FROM orders;

SELECT id, date, JSON_OBJECT('id', id, 'date', date)
FROM orders;
