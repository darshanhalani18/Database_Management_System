
--SELECT INTO OPERATION-----
--PART-C

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO EMPLOYEE_INFO SELECT  * FROM EMPLOYEE WHERE CITY='RAJKOT'
SELECT * FROM EMPLOYEE_INFO


--2. Insert the Data into Employee_info from Employee whose age is more than 32.INSERT INTO EMPLOYEE_INFO SELECT * FROM EMPLOYEE WHERE AGE>32SELECT * FROM EMPLOYEE_INFO--UPDATE OPERATION---- --PART-C--1. Update amount of loan no 321 to NULL. (Use Borrow Table).
UPDATE BORROW SET AMOUNT=NULL WHERE LOANNO=321

--2. Update branch name of KRANTI to NULL (Use Borrow Table)
UPDATE BORROW SET BNAME=NULL WHERE CNAME='KRANTI' 
SELECT * FROM BORROW

--3. Display the name of borrowers whose amount is NULL. (Use Borrow Table)
SELECT CNAME FROM BORROW WHERE AMOUNT IS NULL

--4. Display the Borrowers whose having branch. (Use Borrow Table)
SELECT CNAME FROM BORROW WHERE BNAME <> NULL

--5. Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481.
--(Use Borrow Table)
UPDATE BORROW SET AMOUNT=5000,BNAME='VRCE',CNAME='DARSHAN' WHERE LOANNO=481

--6. Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less
--than 2000.
UPDATE DEPOSIT SET ADATE='2021-01-01' WHERE AMOUNT<2000

--7. Update the Deposit table and set the date to NULL & Branch name to ‘ANDHERI whose Account No is
--110.
UPDATE DEPOSIT SET ADATE=NULL,BNAME='ANDHERI' WHERE ACTNO=110