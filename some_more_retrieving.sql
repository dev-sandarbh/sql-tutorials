USE classroom;
SELECT * FROM scienceClass;
# ------------- in this we will learn how to retrieve data records which satisfies one or more conditions using WHERE clause --------------

-- WHERE CLAUSE TO GET RECORDS WITH A PARTICULAR CONDITION BEING SATISFIED
-- it gets the enrollment numbers of those students which have science Marks = 100
SELECT enrollment_num FROM scienceClass
WHERE scienceMarks=100;

-- to get students details where marks > 75;
SELECT * FROM scienceClass WHERE scienceMarks>75;

-- to get students names having marks less than 33;
SELECT studName FROM scienceClass WHERE scienceMarks<=33;

-- retrieving data satisfying more than one conditions

-- with AND operator
SELECT * FROM scienceClass WHERE scienceMarks>75 AND scienceMarks<99; 

-- with OR operator
-- it gave us basically all the records because it satisfies all the conditons
SELECT * FROM scienceClass WHERE scienceMarks>=50 or scienceMarks<=80;

-- to get more specific records
SELECT * FROM scienceClass WHERE (scienceMarks>=33 and scienceMarks<=60) or studName='JeeJee';
# since there is no studName='JeeJee' so there is no records of JeeJee and it gives us the output as details of students having 
# marks greater than 33 and marks less than 60!....

-- IMPORTANT POINT IS TO REMEMBER THE USE OF BRACKETS/PARANTHESES TO GET DESIRED RESULT
SELECT * FROM scienceClass WHERE scienceMarks>=33 AND (scienceMarks<=60 AND studName='JeeJee');
-- the above statement does not give us any result as there is no record satisfying the given condition

-- changing the condition little bit by changing the name
SELECT * FROM scienceClass WHERE scienceMarks>=33 AND (scienceMarks<=60 OR studName='pintu');

-- we can use NOT operator as well to negate some conditons
SELECT * FROM scienceClass WHERE NOT scienceMarks=33 AND (scienceMarks<=60 OR studName='pintu' OR studname='sandy');
-- so it negates the student record with marks = 33!

-- another example of NOT operator
SELECT * FROM scienceClass WHERE NOT studName='pintu' AND NOT scienceMarks=100;
