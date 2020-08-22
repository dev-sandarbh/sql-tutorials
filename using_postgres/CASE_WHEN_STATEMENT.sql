-- select * from customerinfo;
-- CASE WHEN STATEMENT -->> it is the if-else statement if SQL
/* SYNTAX -->> 
SELECT *, 
     CASE WHEN ccondition_tested THEN first_output
	      WHEN condition_tested THEN second_output
	      ELSE else_output
     END AS new_col_name_for_output
FROM table_name_used;
*/

-- 	example on case expression 
-- CATEGORIZE CUSTOMERS BASED ON THEIR AGE
SELECT *, 
     CASE WHEN cust_age<30 THEN 'YOUNG'
	      WHEN cust_age>60 THEN 'SENIOR CITIZEN'
	      ELSE 'MIDDLE AGED'
     END AS CUST_AGE_CATEGORY
FROM CustomerInfo;

-- similarly, we can query student databse for fetching the number of students passed in the final exam
-- and many more.