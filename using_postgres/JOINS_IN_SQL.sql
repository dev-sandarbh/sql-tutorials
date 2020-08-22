select * from customerinfo;
select * from salesinfo;
/* JOINS IN SQL -->> USED WHEN WE NEED TO FETCH DATA FROM MORE THAN ONE TABLE
THERE ARE 5 MAIN TYPES OF JOINS:- INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, CROSSJOIN
*/
-- TO GET STARTED WITH JOINS, WE NEED TO MAKE SOME TABLE FIRST FOR OUR CONVENIENCE
-- TABLE FOR KEEPING THE RECORD OF SALES DONE IN YEAR 2015
CREATE TABLE sales_details_2015 AS SELECT * FROM salesinfo WHERE ship_date BETWEEN '2015-01-01' AND '2015-12-31';
SELECT COUNT(*) FROM sales_details_2015; -- gives 2131 as number of rows
SELECT COUNT(DISTINCT customer_id) FROM sales_details_2015;  -- TOTAL 578 DISTINCT NUMBER OF CUSTOMERS

-- TABLE FOR KEEPING THE CUSTOMER DETAILS WHOSE AGE IS IN BETWEEN 20-60 YRS
CREATE TABLE customer_20_60 AS SELECT * FROM customerinfo WHERE cust_age BETWEEN 20 AND 60;
SELECT COUNT(*) FROM customer_20_60;   -- THIS TABLE NOW HAS 597 RECORDS

SELECT * FROM sales_details_2015;
SELECT customer_id FROM sales_details_2015 ORDER BY customer_id;
SELECT cust_id FROM customer_20_60 ORDER BY cust_id;

-- FIRST IS INNER JOIN -->> INNER JOIN returns rows when there is a match in both tables
--EXAMPLE:-
SELECT a.order_line, a.product_id, a.customer_id, a.sales_amt, b.cust_name, b.cust_age 
FROM sales_details_2015 AS a 
INNER JOIN customer_20_60 AS b
ON a.customer_id=b.cust_id
ORDER BY customer_id;  --> CUST_ID=10315 IS NOT GIVEN AS O/P BCOZ IT HAS NO MATCH WITH RIGHT TABLE(b)

-- SECOND IS LEFT JOIN -->> LEFT JOIN returns all rows from the left table, 
                         -- even if there are no matches in the right table.
--EXAMPLE:
SELECT a.order_line, a.product_id, a.customer_id, a.sales_amt, b.cust_name, b.cust_age 
FROM sales_details_2015 AS a 
LEFT JOIN customer_20_60 AS b
ON a.customer_id=b.cust_id
ORDER BY customer_id;   --> CUST_ID=103115 IS PRESENT HERE WHICH WAS ABSENT IN THE INNER JOIN

-- THIRD IS RIGHT JOIN -->> RIGTH JOIN returns all rows from the right table,
                         -- even if there are no matches in the left table.
--EXAMPLE:
SELECT a.order_line, a.product_id, a.customer_id, a.sales_amt, b.cust_name, b.cust_age 
FROM sales_details_2015 AS a 
RIGHT JOIN customer_20_60 AS b
ON a.customer_id=b.cust_id
ORDER BY customer_id;

-- FOURTH IS FULL OUTER JOIN -->> IT COMBINES THE RESULT OF BOTH THE RIGHT AND LEFT OUTER JOINS
-- EXAMPLE: 
SELECT a.order_line, a.product_id, a.customer_id, a.sales_amt, b.cust_name, b.cust_age, B.cust_id 
FROM sales_details_2015 AS a 
FULL JOIN customer_20_60 AS b
ON a.customer_id=b.cust_id
ORDER BY a.customer_id,b.cust_id;

-- CROSS JOIN-->> returns the Cartesian product of the sets of records from the two or more joined tables.
--                thus also called sometimes as CARTESIAN JOIN
-- EXAMPLE:to understand this clearly, let us print the calendar
-- for calendar we need months and years, so we will create tables for both months and years
CREATE TABLE month_values(MM INT);
CREATE TABLE year_values(YYYY INT);

INSERT INTO month_values VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12);
INSERT INTO year_values VALUES (2011), (2012), (2013), (2014), (2015), (2016), (2017), (2018), (2019), (2020);

SELECT * FROM month_values;
SELECT * FROM year_values;

-- NOW CREATING THE CARTESIAN/CROSS JOIN ON THE MONTH AND YEAR TABLES TO GET A CALENDAR
SELECT a.YYYY, b.MM 
FROM year_values AS a, month_values AS b
ORDER BY a.YYYY,b.MM;

-- ############## EXCEPT COMMAND ###################
/*EXCEPT STATEMENT-->> RETURNS THE ROWS FROM FIRST SELECT STATEMENT BUT NOT FROM THE SECOND SELECT STATEMENT
*/
-- EXAMPLE
SELECT customer_id FROM sales_details_2015
EXCEPT SELECT cust_id FROM customer_20_60
ORDER BY customer_id;

--################ UNION OPERATOR #################
-- IT COMBINES RESULT SETS OF THE BOTH THE SELECT STATEMENTS, BUT IT REMOVES THE DUPLICATES RECORD
-- THE IMPORTANT THING TO KEEP IN MIND IS THAT NUMBER OF COLUMNS/EXPRESSION TO BE SELECTED AND 
-- THEIR DATATYPES MUST BE SAME
-- EXAMPLE:
SELECT customer_id FROM sales_details_2015
UNION 
SELECT cust_id FROM customer_20_60
ORDER BY customer_id;




