--Alter Operation--
ALTER TABLE DEPOSIT ADD CITY VARCHAR(20),PINCODE INT;

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35);

--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT ;

--4. Rename Column ActNo to ANO.
exec SP_RENAME 'DEPOSIT.ACTNO','ANO';

--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT DROP COLUMN CITY;

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE';

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE;
SELECT * FROM DEPOSIT_DETAIL;

--3. Rename Column CNAME to CustomerName.
ALTER TABLE STUDENT_DETAIL ADD CITY VARCHAR(20) NOT NULL,Backlog INT;


--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35)
ALTER TABLE STUDENT_DETAIL ALTER COLUMN Name VARCHAR(35);

--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL ALTER COLUMN CPI INT

--4. Rename Column Enrollment_No to ENO.
EXEC SP_RENAME 'STUDENT_DETAIL.Enrollment_No','ENO';

--5. Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL DROP COLUMN  CITY;

--6. Change name of table student_detail to STUDENT_MASTER.
DELETE FROM DEPOSIT_DETAIL WHERE AMOUNT>=4000;

--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL WHERE BNAME='CHANDI';

--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL WHERE ANO>105;

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL;

--5. Remove Deposit_Detail table. (Use Drop)
DELETE FROM EMPLOYEE_MASTER WHERE Salary >=14000;

--2. Delete all the Employees who belongs to �RAJKOT� city.
DELETE FROM EMPLOYEE_MASTER WHERE City='RAJKOT';

--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER WHERE JoiningDate > '2007-01-01';

--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER WHERE JoiningDate IS NULL AND EmpNo is not null;

--5. Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER WHERE Salary = 20000*50/100;

--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY ='';

--7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER

--8. Remove Employee_MASTER table. (Use Drop)