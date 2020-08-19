USE classroom; 
SELECT * FROM scienceClass;
-- Adding 15 more records to get some more data to operate on
-- INSERT INTO scienceClass VALUES 
-- (16,'Rambo',39),(17,'Neno',89),(18,'Pinky',32),
-- (19,'Joe',75),(20,'Seenu',65),(21,'Sino',45),
-- (22,'Pradeep',99),(23,'Sandeep',55),(24,'Kumar',87),
-- (25,'Shiny',99),(26,'Sakhi',87),(27,'Shivam',77),
-- (28,'Heman',100),(29,'Batman',99),(30,'Jarvis',101);

-- now we will learn about filtering commands such as IN, BETWEEN & LIKE OPERATORS

-- IN STATEMENT 
SELECT * FROM scienceClass WHERE scienceMarks IN (100,101,99,98,55); -- it gives us details of students having marks either 100 or 101 or 99 or 98 or 55
-- above statement is equivalent to
-- SELECT * FROM scienceClass WHERE scienceMarks=100 or scienceMarks=101 or scienceMarks=99 or scienceMarks=98 or scienceMarks=55; 
-- using NOT with IN 
SELECT * FROM scienceClass WHERE scienceMarks NOT IN (100,101,99,98,55);

-- BETWEEN STATEMENT - it gives us the rows which satisfied the lower_value and upper_value given!!
SELECT * FROM scienceClass WHERE scienceMarks BETWEEN 66 AND 87;
 -- bweteen with not
SELECT * FROM scienceClass WHERE scienceMarks NOT BETWEEN 66 AND 87;
-- WE CAN USE BETWEEN STATEMENT WITH DATES AS WELL.... WE WILL SEE THAT LATER 
-- SYNTAX FOR USING BETWEEN WITH DATE IS AS FOLLOWS:-
-- SELECT * FROM TABLEnAME WHERE DT BETWEEN 'YYYY/MM/DD' AND 'YYYY/MM/DD';

-- LIKE STATEMENT - it is used for pattern matching as per the given condition

-- '%' - (percent symbol) allows to match any string of any length (including zero length)
-- '_' - (underscore symbol) allows you to match on a single character 
-- for example:- A% means string starts with A such as ABC, AB_CD or ABCDF_GHIEK
-- %A means string ends with A such as CDBA, jhdsvh_A
-- X%Y means string starts with X but ends with Y

-- select rows from the table where the name of student starts with 'm'
SELECT * FROM scienceClass WHERE studName LIKE 'm%';  -- it will give us only one record of mumbojumbo

-- select rows from the table where name ends with 'o'
SELECT * FROM scienceClass WHERE studName LIKE '%o';   -- this will give us 6 rows from the table

-- select rows from the table where first name of student has 4 characters
-- select * from scienceClass where studName like '____ %'; -- 4 underscores then one space and then % symbol 

-- select rows from the table where name of the student has string 'ano' in their name
SELECT * FROM scienceClass WHERE studName LIKE '%ano%';  -- it gives only one record of nanoDino

-- LIKE with NOT condition
SELECT * FROM scienceClass WHERE studName NOT LIKE '%ano%';
SELECT * FROM scienceClass WHERE studName NOT LIKE '%ano';
SELECT * FROM scienceClass WHERE studName NOT LIKE 'ano%'; 

-- if we actually need to find out the % symbol, then we use \ as shown
SELECT * FROM scienceClass WHERE studName LIKE 't\%';  -- it gives no record as no name has a % symbol in it








