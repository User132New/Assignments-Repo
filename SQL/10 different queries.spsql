-- 1. Create table VEHICLE
CREATE TABLE VEHICLE (
    CODE INT,
    CLASS VARCHAR(3),
    COMPANY VARCHAR(20),
    NAME VARCHAR(10), -- Changed int(10) to BIGINT for phone numbers
    PRICE INT,
    AVAILABLE VARCHAR(3)
);

-- 2. Insert different values
INSERT INTO VEHICLE VALUES
(1921, 'MB' , 'HONDA', 'SHINE' ,  65400,'YES'),
(1922, 'CAR', 'TATA' , 'TIGOR' , 755400,'YES'),
(1923, 'CAR', 'TATA' , 'NANO'  , 115000,'YES'),
(1924, 'MB' , 'HERO' , 'SPLEN' ,  96300,'YES'),
(1925, 'MB' , 'HERO' , 'SPLEN' ,  92900, 'NO'),
(1926, 'MB' , 'TVS'  , 'SPORT' , 45400, 'YES'),
(1927, 'CAR', 'TATA' , 'NEXON' , 955400, 'NO'),
(1928, 'CAR', 'TATA' , 'NANO'  , 105000,'YES'),
(1929, 'MB' , 'HERO' , 'SPLEN' , 96900 ,'YES'),
(1930, 'MB' , 'HERO' , 'HF'    , 88000, 'YES');


-- 3. a. Selecting the whole table
SELECT * FROM VEHICLE;
-- 3. b. Selecting 1st attribute
SELECT CODE FROM VEHICLE;
-- 3. c. Selecting 1st, 3rd, and 5th attributes
SELECT CODE, COMPANY, PRICE FROM VEHICLE;
-- 3. d. Selecting 2nd and 4th attributes
SELECT CLASS, NAME FROM VEHICLE;



-- 4. a. Select 1st, 3rd, and 4th attributes
SELECT CODE, COMPANY, NAME FROM VEHICLE;
-- 4. b. Select 2nd and 4th attributes with a condition
SELECT CLASS, NAME FROM VEHICLE WHERE AVAILABLE='YES';



-- 5. Command to select a range of tuples (Leaves first 4 matched as offset and selects a maximum of 5 as the limit is constrained).
SELECT * FROM VEHICLE LIMIT 5 OFFSET 4;



-- 6. Command to select a range of tuples with a condition on each attribute (selects a maximum of 3 MATCHING the condition as the limit is constrained).
--Attributes conditions are always mentioned before limit offset
SELECT * FROM VEHICLE WHERE CODE>1915 AND CLASS='MB' AND COMPANY='HERO' AND NAME='SPLEN' AND AVAILABLE='YES' LIMIT 3 OFFSET 0;


-- 7. Only third tuple as the output
SELECT * FROM VEHICLE WHERE CODE=1923;


-- 8. To show use of Count, Sum and Avg functions..
-- Used to count number of tuple satisfying a particular condition.
SELECT COUNT(*) FROM VEHICLE WHERE PRICE>50000;
-- Used to calculate sum of tuples.
SELECT SUM(PRICE) FROM VEHICLE WHERE PRICE>50000;
-- Used to calculate average of selected tuples.
SELECT AVG(PRICE) FROM VEHICLE WHERE PRICE>50000;



-- 9. To show use of simple and complex statements.
-- Simple statement
SELECT * FROM VEHICLE WHERE PRICE<80000;
-- 9.b complex statement(modify accordingly)
SELECT * FROM VEHICLE WHERE (CLASS='MB'and PRICE<90000) OR (CLASS='CAR' and PRICE>500000);



-- 10. To show use of avg and sum in WHERE clause of conditional statement.
SELECT COUNT() FROM VEHICLE WHERE (CLASS='MB' and COMPANY='HERO') OR (CLASS='CAR' and COMPANY='TATA');
SELECT SUM(PRICE) FROM VEHICLE WHERE (CLASS='MB' and COMPANY='HERO') OR (CLASS='CAR' and COMPANY='TATA');
SELECT AVG(PRICE) FROM VEHICLE WHERE (CLASS='MB' and COMPANY='HERO') OR (CLASS='CAR' and COMPANY='TATA');