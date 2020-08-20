select * from SalesInfo;

-- #############################################################
-- use if Alias in SQL
-- Alias is used to give a meaningful name to a column (sometimes)
-- in order to make output more readable

-- for example
-- fetch the order details which 
-- shipped on after year 2013 and before year 2015 or were shipped by Standard mode

SELECT order_id, order_date as Ordered_ON, ship_date as Shipped_ON,
ship_mode as Shipping_MODE FROM SalesInfo
WHERE ship_date>='2014-01-01' AND ship_date<='2015-12-31' OR
ship_mode='Standard Class' 
ORDER BY ship_date,ship_mode ASC;

-- this query gave us 7539 rows out of 9994 rows from our database,
-- with column names as specified by us not the original column names!!

-- in the similar manner, we can use alias for our table as well!!
-- we usually give our tablenames alias when we deal with joins in sql....