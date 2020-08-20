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


-- second function is UPPER() & LOWER()
-- UPPER(string_input) -> converts the lowercase string to upppercase string
-- LOWER(string_input) -> converts the upppercase string to lowercase string



