 CREATE DATABASE classroom;    #sql statement to create database named as classroom!
 USE classroom;   #statement to use the created database
# -----------------------------
# sql statement to create a table (in selected database) having specifications as shown:
 CREATE TABLE scienceClass(enrollment_num INT, studName VARCHAR(25), scienceMarks INT);
# to insert into the table, we write like this:-

# first way is putting directly the values
INSERT INTO scienceClass VALUES(1,'mumbojumbo',99);

# second way is with column names specified with values
INSERT INTO scienceClass (enrollment_num, studName, scienceMarks) VALUES (2, 'nanoDino', 100);

# third way is when we insert multiple rows at a time
INSERT INTO scienceClass VALUES 
(3,'nandubandhu',54), (4,'cheeku',78),(5,'deenu',75),(6,'tinu',88),(8,'pintu',77),(9,'dynamo',65),(10,'sandy',100); 

# run this statement to check wether the row is present in the table or not:
-- SELECT * FROM scienceClass;

-- some more data
INSERT INTO scienceClass VALUES (11,'Popeye',33),(12,'Olive',54),(13,'Brutus',98);

#----------------------------------------------------------------------------------------------
-- RETRIEVING DATA FROM TABLE
-- to get whole table as the output
SELECT * FROM scienceClass;
-- or
SELECT enrollment_num, scienceMarks, studName FROM scienceClass;
-- remember the order in which you specify the column names to be fetched; it changes the way output looks like as shown:-
SELECT studName, enrollment_num, scienceMarks FROM scienceClass;
-- to get selected columns from the table
SELECT enrollment_num, scienceMarks FROM scienceClass;

-- to get distinct items from a column which may have repeated values, we use DISTINCT keyword as shown:-
SELECT DISTINCT scienceMarks FROM scienceClass;

