select * from CustomerInfo;

-- ############### STRING FUNCTIONS ####################
-- FRIST IS LENGTH()
-- LENGTH() - returns the length of the string given as input

-- example: find length of customer names of customers who live in California and are 
-- below 35 years of age
SELECT cust_name, LENGTH(cust_name) FROM CustomerInfo
WHERE cust_state='California' AND cust_age<35;

-- or print names of customer with their length of names 
-- having maximum character in names equal to 10 SORTED in descending order
SELECT cust_name, LENGTH(cust_name) FROM CustomerInfo
WHERE LENGTH(cust_name)<=10
ORDER BY LENGTH(cust_name) DESC;


-- SECOND FUNCTION is UPPER() & LOWER()
-- UPPER(string_input) -> converts the lowercase string to upppercase string
-- LOWER(string_input) -> converts the upppercase string to lowercase string
SELECT UPPER(cust_name) as CAPITAL_NAMES from CustomerInfo 
where cust_age>55;

SELECT LOWER(cust_name) as SMALL_NAMES from CustomerInfo 
where cust_age>55;

--generally upper() and lower() functions when we compare the user input to the already stored data before fetching.

-- ################## TRIM FUNCTIONS #########################
-- THIRD FUNCTION(S) ARE - TRIM(), LTRIM(), RTRIM()
-- trim() - function is used to remove leading & trailing whitespaces(or a specified character from the data)
-- ltrin() - function is used to remove leading(only) whitespaces(or a specified character from the data)
-- rtrin() - function is used to remove trailing(only) whitespaces(or a specified character from the data)

SELECT TRIM('   ##WELCOME TO POSTGRE_SQL    ##     ');
-- we can specify leading or trailin optional argument as
-- SYNTAX -> TRIM(LEADING/TRAILING 'CHAR_TO_BE_REMOVED' FROM 'STRING_INPUT/COLUMN_DATA');
SELECT TRIM(LEADING '' FROM '   ##WELCOME TO POSTGRE_SQL    ##     ') AS REMOVED_LEAD;
SELECT TRIM(TRAILING '' FROM '   ##WELCOME TO POSTGRE_SQL    ##     ') AS REMOVED_TRAIL;

-- BASICALLY TRIM() ARE USED WHEN WE STORE/SAVE DATA, AFTER GETTING INPUT FROM USER, 
-- TO OUR DESIRED FORMAT IN OUR DATABASE

-- ######################## REPLACE FUNCTION ##############################
-- FOURTH FUNCTION IS -> REPLACE FUNCTION IS USED WHEN WE NEED TO REPLACE SOME DATA IN OUR OUTPUT AS 
-- COMPARED TO THAT IN OUR DATABASE
-- FOR EXAMPLE: fetch records of customer who lives in california and show california as "CALI"
SELECT cust_name, cust_id, REPLACE(cust_state,'California','CALI') 
AS REPLACED_STATE FROM CustomerInfo
WHERE cust_state='California';

-- ###################### STRING CONCATENATION ##############################
-- FIFTH FUNCTION IS -> STRING CONCATENATIOIN - is useful in cases such as printing fname and lname if 
-- customer together to show their full name or joining various address columns to get complete address

-- FOR EXAMPLE: print records of customer with their full address displayed 
-- in one column who lives in Houston or Los Angeles order by cust_age
SELECT cust_id, cust_name, cust_age, cust_city||','||cust_state||','||cust_country AS full_address
FROM CustomerInfo WHERE cust_city IN ('Los Angeles','Houston') ORDER BY cust_age;

-- ##################### SUBSTRING FUNCTION ##########################
-- SUBSTRING() - USED TO FIND OUT WHETHER A SUBSTRING IS PRESENT OR NOT IN THAT GIVEN STRING 
-- IF YES, THEN WE CAN GET THAT SUBSTRING
-- FOR EXAMPLE: fetch the records of customer who belong to either 'DP' or 'JM' group
SELECT cust_id, cust_name, cust_age, cust_city, SUBSTRING(cust_id FOR 2) AS customer_group_vars
FROM CustomerInfo WHERE SUBSTRING(cust_id FOR 2) IN ('DP','JM') ORDER BY cust_age;

-- print customer group and customer number of California state separately
SELECT SUBSTRING(cust_id FOR 2) AS CUSTOMER_GROUP, 
SUBSTRING(cust_id FROM 4 FOR 5) AS CUSTOMER_NUMBER, cust_age, cust_city, cust_state
FROM CustomerInfo WHERE cust_state='California'
ORDER BY cust_age;

