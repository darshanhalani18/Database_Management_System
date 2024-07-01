--Lab-3

CREATE TABLE CRICKET(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT
);

INSERT INTO CRICKET(NAME,CITY,AGE) VALUES
('SACHIN TENDULKAR','MUMBAI',30),
('RAHUL DRAVID','BOMBAY',35),
('M.S.DHONI','JHARKHAND',31),
('SURESH RAINA','GUJARAT',30)

SELECT * FROM CRICKET

--PART-A - Select into---

--1. Create table Worldcup from cricket with all the columns and data.
SELECT * INTO WORLDCUP FROM CRICKET
SELECT * FROM WORLDCUP

--2. Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=2
SELECT * FROM T20

--3. Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1=2
SELECT * FROM IPL

--PART-A--Update Operation-------

--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000 WHERE AMOUNT=3000

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW SET BNAME='C.G.ROAD' WHERE CNAME='ANIL' AND BNAME='VRCE'
SELECT * FROM BORROW

--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000,ACTNO=111 WHERE CNAME='SANDIP'

--4. Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE  DEPOSIT SET AMOUNT=7000 WHERE CNAME='KRANTI'

--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH SET BNAME='ANDHERI WEST' WHERE BNAME='ANDHERI'
SELECT * FROM BRANCH

--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE DEPOSIT SET BNAME='NEHRU PLACE' WHERE BNAME='MEHUL'

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit
--Table)
UPDATE DEPOSIT SET AMOUNT=5000 WHERE ACTNO  BETWEEN 103 AND 107 

--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE DEPOSIT SET ADATE=1995-04-01 WHERE CNAME='ANIL'

--9. Update the amount of MINU to 10000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=1000 WHERE CNAME='MINU'

--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000,ADATE=1996-04-01 WHERE CNAME='PRAMOD'
SELECT * FROM DEPOSIT
