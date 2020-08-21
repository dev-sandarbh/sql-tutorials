select * from salesinfo;

-- MATHEMATICAL FUNCTIONS INCLUDE CEIL(), FLOOR(), ROUND(), POWER(), RANDOM(), SETSEED() 
-- ###### FIRST -> CEIL() & FLOOR()

-- CEIL - gives smallest integer value that is greater than or equal to the number
-- FLOOR - gives largest integer value that is equal to the number or smaller than the number
-- for example:
select floor(4.5);
select ceil(4.6);
select ceil(4.2);
select floor(4.2);
-- using floor and max on our sales table data 
SELECT FLOOR(MAX(sales_profit)), FLOOR(MAX(sales_amt)) FROM SalesInfo;

-- using ceil and max on our sales table data 
SELECT CEIL(MAX(sales_profit)), CEIL(MAX(sales_amt)) FROM SalesInfo;

-- ROUND FUNCTION - gives number rounded upto certain number of places
SELECT ROUND(4.6);
SELECT ROUND(4.61254,8);

SELECT order_id, sales_amt, round(sales_amt) FROM SalesInfo
ORDER BY sales_amt DESC;

-- ######## POWER()
-- POWER(a,b) -> it is equivalent to a raised to power b
SELECT POWER(2,5);

-- ####### RANDOM() 
-- RANDOM FUNCCTION returns the random value generated between 0 and 1(0 included but 1 excluded)
SELECT RANDOM() AS RANDOM_NUM;
--USAGE VARIATIONS OF RANDOM CAN BE
SELECT RANDOM()*15 AS RANDOM_NUM;
-- RANDOM NUMBER BETWEEN A RANGE OF NUMBERS (A,B) CAN BE FOUND BY ->> RANDOM()*(B-A)+A HERE B WILL NEVER COME
-- TO INCLUDE BOTH BOUNDARIES WE USE ->> FLOOR(RANDOM()*(B-A+1))+A
-- LET A=50,B=60
select random()*10+50 as random_btw_50_60_excl;
select floor(random()*11)+50 as random_btw_50_inc_60_inc;  -- run it couple of times and you will get 60 as a output

-- SETSEED() FUNCTION
/*
DESCRIPTION-->>The PostgreSQL setseed function can be used to set a seed for the next time that you call the random 
function. If you do not call setseed, PostgreSQL will use its own seed value. This may or may not be truly random.
If you set the seed by calling the setseed function, then the random function will return a repeatable sequence 
of random numbers that is derived from the seed.

Seed Value can be set between -1.0 to 1.0.
*/

SELECT SETSEED(0.5);
SELECT RANDOM(); -- 0.550025
SELECT RANDOM();

SELECT SETSEED(0.5);
SELECT RANDOM(); --0.550025






