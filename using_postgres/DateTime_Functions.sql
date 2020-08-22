select * from customerinfo;
select * from salesinfo;
select * from productinfo;
-- DATE, TIME FUNCTIONS 

-- CURRENT_DATE() - RETURNS CURRENT/PRESENT DATE IN FORMAT 'YYYY-MM-DD' 
-- CURRENT_TIME() - RETURNS CURRENT/PRESENT TIME IN FORMAT 'HH:MM:SS.GMT+TZ'
-- CURRENT_TIMESTAMP() - RETURNS CURRENT/PRESENT DATE AND TIME IN FORMAT 'YYYY-MM-DD HH:MM:SS.GMT+TZ'

SELECT CURRENT_DATE;
SELECT CURRENT_TIME, CURRENT_TIME(1),CURRENT_TIME(4);
SELECT CURRENT_TIME(1);
SELECT CURRENT_TIMESTAMP;

--AGE() FUNCTION - IT RETURNS THE NUMBER OF YEARS, MONTHS AND DAYS BETWEEN 2 DATES
-- SYNTAX AGE(DATE1, DATE2) -- IF DATE1 IS NOT GIVEN, CURRENT_DATE WILL BE USED AS DATE1
SELECT AGE('2020-08-21','1998-03-26');
SELECT AGE(CURRENT_DATE, '1998-03-26');

-- EXAMPLE: find the time taken to deliver a order
SELECT order_id, product_id, order_date, ship_date,
AGE(ship_date,order_date) AS time_taken_to_deliver
FROM SalesInfo;

-- EXTRACT() FUNCTION - returns the desired part of the date
-- SYNTAX -->> EXTRACT('unit' FROM 'date');
-- UNITS INCLUDE->> day, decade, doy, epoch, hour, minute, second, minute, year
SELECT EXTRACT(day FROM CURRENT_DATE);
SELECT EXTRACT(decade FROM CURRENT_DATE);
SELECT EXTRACT(doy FROM CURRENT_DATE);
SELECT EXTRACT(epoch FROM CURRENT_DATE);
SELECT EXTRACT(hour FROM CURRENT_TIMESTAMP);
SELECT EXTRACT(minute FROM CURRENT_TIMESTAMP);
SELECT EXTRACT(second FROM CURRENT_TIMESTAMP);
SELECT EXTRACT(year FROM CURRENT_DATE);