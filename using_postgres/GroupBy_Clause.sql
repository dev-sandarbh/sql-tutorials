select * from customerinfo;
select * from salesinfo;
select * from productinfo;

/* 
GROUP BY CLAUSE
DESCRIPTION -->> The SQL GROUP BY clause is used in collaboration 
with the SELECT statement to arrange identical data into groups.
This GROUP BY clause follows the WHERE clause in a SELECT statement and 
precedes the ORDER BY clause.

SYNTAX -->>
SELECT column1, column2
FROM table_name
WHERE [ conditions ]
GROUP BY column1, column2
ORDER BY column1, column2

*/
-- EXAMPLES:
-- FIND THE NUMBER OF CUSTOMER LIVING IN EVERY REGION SORTED BY REGION
SELECT cust_region, COUNT(cust_id) AS Customer_Count
FROM CustomerInfo GROUP BY cust_region ORDER BY cust_region;

-- FIND THE NUMBER OF CUSTOMER LIVING IN EVERY REGION SORTED BY Customer_Count
SELECT cust_region, COUNT(cust_id) AS Customer_Count
FROM CustomerInfo GROUP BY cust_region ORDER BY Customer_Count;

-- FIND QUANTITY OF EACH PRODUCT SOLD
SELECT product_id, SUM(sales_qty) AS QTY_SOLD
FROM SalesInfo GROUP BY product_id
ORDER BY QTY_SOLD DESC;

-- SELECT TOP 5 CUSTOMERS OF OUR STORE
SELECT customer_id, 
min(sales_amt) as minimum_sales,
max(sales_amt) as maximum_sales,
avg(sales_amt) as average_sales,
sum(sales_amt) as total_sales
from salesinfo
group by customer_id
order by total_sales desc limit 5;

-- HAVING CLAUSE
/*
DESCRIPTION -->> The HAVING Clause enables you to specify conditions that filter which group 
results appear in the results. The WHERE clause places conditions on the selected columns,
whereas the HAVING clause places conditions on groups created by the GROUP BY clause.

The HAVING clause must follow the GROUP BY clause in a query and must also precede the ORDER BY clause if used. 

SYNTAX: 
SELECT column1, column2
FROM table1, table2
WHERE [ conditions ]
GROUP BY column1, column2
HAVING [ conditions ]
ORDER BY column1, column2
*/

-- EXAMPLES OF HAVING CLAUSE
-- FIND NUMBER OF CUSTOMERS IN EACH REGION WHERE NUMBER OF CUSTOMERS MUST BE > 200
select cust_region, count(cust_id) as Customer_Count
from customerinfo
group by cust_region
having count(cust_id)>200;

--FIND NUMBERS OF CUSTOMER IN EACH REGION WHOSE NAME STARTS WITH 'A'
SELECT cust_region, COUNT(cust_id) as customer_count
FROM CustomerInfo
WHERE cust_name LIKE 'A%'
GROUP BY cust_region;

-- IN ADDITION TO LAST EXAMPLE FIND CUSTOMERS WHOSE NAME STARTS WITH 'A' AND CUSTOMER_COUNT > 15
SELECT cust_region, COUNT(cust_id) as customer_count
FROM CustomerInfo
WHERE cust_name LIKE 'A%'
GROUP BY cust_region
HAVING COUNT(cust_id)>15;