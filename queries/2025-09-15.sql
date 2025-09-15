-- Create a table named INTERN_DATE_TEST woth columns: ID(NUMBER), EMP_NAME(VARCHAR2), JOIN_DATE(DATE).
CREATE TABLE INTERN_DATE_TEST(
    ID NUMBER CONSTRAINT EMPLOYEE_PK PRIMARY KEY,
    EMP_NAME VARCHAR2(25),
    JOIN_DATE DATE
);

-- Insert at least 3 records into the table using TO_DATE() and SYSDATE.
INSERT INTO INTERN_DATE_TEST
VALUES(1, 'Aila', SYSDATE);
INSERT INTO INTERN_DATE_TEST
VALUES(2, 'Ahmed', TO_DATE('10-JAN-2023'));
INSERT INTO INTERN_DATE_TEST
VALUES(3, 'Sara', TO_DATE('21/03/2024', 'DD/MM/YYYY'));

-- Wrie a SELECT query to display JOIN_DATE in different formats using TO_CHAR: DD-MM-YYYY, YYYY/MM/DD, Day, Month DD,YYYY.
SELECT TO_CHAR(JOIN_DATE,'DD-MM-YYYY') AD F_DATE1, 
        TO_CHAR(JOIN_DATE,'YYYY/MM/DD') AD F_DATE2,
        TO_CHAR(JOIN_DATE,'Day') AD F_DATE3,
        TO_CHAR(JOIN_DATE,'Month DD,YYYY') AD F_DATE4
FROM EMPLOYEE; 

-- Add 30 days to each employee's joining date and display the result.
SELECT ID, JOIN_DATE + 30 AS NEW_DATE
FROM EMPLOYEE;

-- Use MONTHS_BETWEEN to calculate the difference in months between two employees' joining dates.
SELECT EMP1.ID AS EMP1_ID,
       EMP2.ID AS EMP2_ID,
       MONTHS_BETWEEN(EMP1.JOIN_DATE, EMP2.JOIN_DATE) AS MONTH_DIFFERNCE
FROM INTERN_DATE_TEST EMP1
JOIN INTERN_DATE_TEST EMP2
  ON EMP1.ID < EMP2.ID;
  --OR--
FROM INTERN_DATE_TEST EMP1, INTERN_DATE_TEST EMP2
WHERE EMP1.ID < EMP2.ID


-- For each employee, find the NEXT Monday after their joining date and the LAST DAY of that month.
SELECT ID, NEXT_DAY(JOIN_DATE, 'Monday') AS NEXT_MONDAY, LAST_DAY(JOIN_DATE) AS LAST_DATE_MONTH
FROM EMPLOYEE;

-- Calculate the number of years since each employee joined (joining age).
SELECT ID,
       EMP_NAME,
       FLOOR(MONTHS_BETWEEN(SYSDATE, JOIN_DATE) / 12) AS years_worked  --FLOOR → removes the decimal part
FROM INTERN_DATE_TEST;