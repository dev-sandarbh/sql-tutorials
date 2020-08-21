--in this tutorial, i learnt about UPDATE, ALTER & DELETE COMMAND
SELECT * FROM SALESINFO;
SELECT * FROM CUSTOMERINFO;

--UPDATE COMMAND IS USED TO MODIFY CURRENT RECORDS IN A TABLE. UPDATE IS A DML COMMAND
--FOR EXAMPLE, UPDATE AGE AND 
UPDATE CustomerInfo
SET cust_age=200 WHERE cust_id='CG-12520';

SELECT * FROM CUSTOMERINFO WHERE cust_id='CG-12520'; --to verify the changes!!

-- DELETE COMMAND - The SQL DELETE Query is used to delete the existing records from a table. 
-- You can use the WHERE clause with a DELETE query to delete the selected rows, 
-- otherwise all the records would be deleted.

-- EXAMPLES:
-- DELETE SINGLE ROW
-- -- -- DELETE FROM CustomerInfo
-- -- -- WHERE cust_id='CG-12520';

-- DELETE MULTIPLE ROWS
-- -- -- DELETE FROM CustomerInfo
-- -- -- WHERE cust_age<19;

-- DELETE COMPLETE TABLE
-- -- -- DELETE FROM CustomerInfo;  


-- three pairs of dashes indicate run these queies at your own risk.... because it will affect your data

-- ALTER TABLE COMMAND -->> is used to change/modify the structure of the table
-- for example, we can add a column, subtract(delete) a column from a table, 
-- we can add/drop a constraint from a column, and we can add/drop index from the table

-- to show a demo of ALTER TABLE command, i will create a new table and apply all alteration to it.
CREATE TABLE myDemoTable(demo_id INT NOT NULL PRIMARY KEY, 
						 demo_person_fname VARCHAR(20),
						 demo_person_lname VARCHAR(20),
						 demo_person_age INT,
						 demo_person_gender VARCHAR(10));
						 
-- INSERTING DATA TO DEMOTABLE
INSERT INTO myDemoTable (demo_id,demo_person_fname,demo_person_lname,demo_person_age,demo_person_gender)
VALUES (1,'Gabriel','Tommy',25,'Male'),(2,'Aleena','Sunny',24,'Female'); 

SELECT * FROM MYDEMOTABLE;

--ALTERING BY ADDING EMAIL_ID COL
ALTER TABLE MYDEMOTABLE ADD demo_person_email VARCHAR(80);

-- DELETING THAT COLUMN EMAIL
ALTER TABLE MYDEMOTABLE DROP COLUMN demo_person_email; 

-- CHANGING THE DATA TYPE OF THE AGE COLUMN
ALTER TABLE MYDEMOTABLE ALTER COLUMN demo_person_age TYPE VARCHAR(5);

--RENAME A COLUMN
ALTER TABLE MYDEMOTABLE
RENAME COLUMN demo_id TO demo_person_id;

-- altering table by changing or setting the constraints
ALTER TABLE MYDEMOTABLE ALTER COLUMN demo_person_fname SET NOT NULL;

-- CHANGING BACK TO ORIGINAL STATE ie., DROPPING THE NOT NULL CONSTRAINT
ALTER TABLE MYDEMOTABLE ALTER COLUMN demo_person_fname DROP NOT NULL;

-- ADDING CONSTRAINT
ALTER TABLE MYDEMOTABLE ADD CONSTRAINT demo_person_age CHECK(LENGTH(demo_person_age)<6); 

-- ADDING PRIMARY KEY
-- SYNTAX ->> ALTER TABLE tablename ADD PRIMARY KEY(column_name);

-- ADDING FOREIGN KEY
-- SYNTAX ->> ALTER TABLE child_table_name ADD CONSTRAINT child_column_name 
--            FOREIGN KEY(parent_column_name) REFERENCES parent_table_name;

