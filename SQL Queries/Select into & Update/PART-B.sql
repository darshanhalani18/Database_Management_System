-
--PART-B--Select into Operation---

CREATE TABLE EMPLOYEE(
NAME VARCHAR(50),
CITY VARCHAR(50),
AGE INT
);

INSERT INTO EMPLOYEE(NAME,CITY,AGE) VALUES
('JAY PATEL','RAJKOT',30),
('RAHUL DAVE','BARODA',35),
('JEET PATEL','SURAT',31),
('VIJAY RAVAL','RAJKOT',30)

SELECT * FROM EMPLOYEE

--1. Create table Employee_detail from Employee with all the columns and data.
SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE WHERE 1=2

SELECT * FROM EMPLOYEE_DETAIL

--2. Create table Employee_data from Employee with first two columns with no data.
SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE WHERE 1=2

--3. Create table Employee_info from Employee with no Data
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE 1=2 

SELECT * FROM EMPLOYEE_INFO
 
 --PART-B--UPDATE OPERATION----

-- 1. Give 10% Increment in Loan Amount. (Use Borrow Table)
UPDATE BORROW SET AMOUNT+= AMOUNT*10/100 
SELECT * FROM BORROW

--2. Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT += AMOUNT*20/100
