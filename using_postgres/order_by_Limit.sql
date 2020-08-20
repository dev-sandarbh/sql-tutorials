/* To check whether we have our ShoppingMart database up and running, just run the given three queries one by one
to get the output....

-- select * from customerinfo;
-- select * from productinfo;
-- select * from salesinfo;

Each query will return same numbers of rows as there were it in corresponding .csv files.
*/
-- Now we will do ORDER BY CLAUSE using our ShoppingMart DB and its Tables
select * from CustomerInfo;

-- get the names of the customers who lives in California city 
SELECT cust_name FROM CustomerInfo WHERE
cust_state='California' ORDER BY cust_name;

-- by default ORDER BY CLAUSE sorts our output in ASC(Ascending Order), but if we 
-- need output in Descending Order, we need to give the 'DESC' Keyword as shown:-
SELECT cust_name FROM CustomerInfo WHERE
cust_state='California' ORDER BY cust_name DESC;

-- observe the difference between two above queries!!

--anothe example: get the customer name, state, city and segment order by customer segment
SELECT cust_name, cust_city, cust_state, cust_country, cust_postal_code, cust_segment
FROM CustomerInfo WHERE cust_state='California' ORDER BY cust_segment;
-- above query sorts our output by segment type of customer ie, first it gives details of
-- Consumer, then Corporate Office and then Home Office Customer Segment data!!

-- now find details of customer who lives in Philadelphia or Toledo and 
-- is above or equal to 48 yrs of age in descending order of age
SELECT * FROM CustomerInfo 
WHERE cust_city IN ('Philadelphia','Toledo') AND cust_age>=48 
ORDER BY cust_age DESC;

-- we can also sort our data by column number as shown below.
-- Suppose we need to order our data by age of customer using column number of age column ie, 4
SELECT * FROM CustomerInfo ORDER BY 4 ASC;

-- it gives us the output in ascending order of customer age from 18 to 70 yrs....
-- #####################################################

-- USE OF LIMIT KEYWORD
-- LIMIT keyword is used to limit the number of rows that we want to see in our output

-- for example if we want to target a specific range of customers who have age ranging betwwen 20 to 45 yrs
-- and we want only first 35 records of the data

SELECT * FROM CustomerInfo 
WHERE cust_age>=20 AND cust_age<=45
ORDER BY cust_age 
LIMIT 35; 
-- THIS NUMBER 35 IS THE NUMBER OF ROWS THAT WE WANT TO SEE IN OUR OUTPUT!!

--ANOTHER EXAMPLE: FETCH RECORDS OF OLDEST 50 CUSTOMERS FROM THE CUSTOMERINFO TABLE....
SELECT * FROM CustomerInfo
ORDER BY cust_age DESC
LIMIT 50;


-- Similarly, we can use LIMIT Keyword depending upon the query. 

-- Fetch top 15 records from sales info table where the retailer earned highest profit
SELECT * FROM SalesInfo
ORDER BY sales_profit DESC
LIMIT 15;

-- Fetch top 20 order id records where we have discount>0
SELECT order_id, sales_discount FROM SalesInfo
ORDER BY sales_discount>0 DESC
LIMIT 20;













