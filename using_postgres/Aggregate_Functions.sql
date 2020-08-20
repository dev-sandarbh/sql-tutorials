SELECT * FROM CustomerInfo;
SELECT * FROM SalesInfo;

-- ######################## AGGREGATE FUNCTIONS IN SQL ############################
-- first is COUNT()

-- example: count all the number of customer_records in customer info table
SELECT COUNT(*) AS TOTAL_RECORDS FROM CustomerInfo;

-- example: count records on the basis of Consumer Segment Type
SELECT COUNT(*) AS no_of_consumer_segment FROM CustomerInfo
WHERE cust_segment='Consumer';

-- example: count no of products ordered by customer having customer id as BH-11710
SELECT COUNT(DISTINCT order_id) as NO_OF_ORDERS_MADE, COUNT(product_id) AS NO_OF_PRODUCTS_ORDERED 
FROM SalesInfo WHERE customer_id='BH-11710';

-- second is SUM()
-- find total profit earned from the sales table
SELECT SUM(sales_profit) AS total_profit_earned FROM SalesInfo;

-- find total sum of sales_amt and profit earned for a particular product id 
SELECT SUM(sales_amt) AS total_sales_made, SUM(sales_profit) AS total_profit_earned 
FROM SalesInfo WHERE product_id='FUR-BO-10001798';

-- third is AVG()
-- find average profit earned
SELECT AVG(sales_profit) AS average_profit_made FROM SalesInfo;

-- find average age of customer who lives in Florida State
SELECT AVG(cust_age) AS average_age FROM CustomerInfo
WHERE cust_state='Florida';

--print the average sales commission on every product bought if commission is 15%
SELECT AVG(sales_amt*0.15) AS AVG_SALES_COMMISSION FROM SalesInfo;

-- print sum of sales made, total profit earned, avg profit earned and avg commission 
SELECT SUM(sales_amt) AS TOTAL_SALES_MADE, SUM(sales_profit) AS TOTAL_PROFIT_EARNED,
AVG(sales_profit) AS AVG_PROFIT_EARNED, AVG(sales_amt*0.15) AS AVG_SALES_COMMISSION 
FROM SalesInfo;

-- fourth is min() and max()
-- find min and max age of customer living in California
SELECT MIN(cust_age) AS MINIMUM_AGE, MAX(cust_age) AS MAXIMUM_AGE
FROM CustomerInfo WHERE cust_state='California';

-- find minimum and maximum profit and sales made
SELECT MIN(sales_profit) as minimum_profit, max(sales_profit) as maximum_profit,
min(sales_amt) as minimum_sales_made, max(sales_amt) as maximum_sales_made
from SalesInfo;

--find minimum and maximum sales made in month of September,2015
SELECT MIN(sales_amt) AS MINIMUM_SALES_OF_SEPT_2015, 
MAX(sales_amt) AS MAXIMUM_SALES_OF_SEPT_2015 
FROM SalesInfo WHERE order_date>='2015-09-01' AND order_date<='2015-09-30';


-- that's all about aggregate functions in sql



















