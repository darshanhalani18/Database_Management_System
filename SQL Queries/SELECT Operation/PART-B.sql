--PART-B

USE CSE_3A_126

--1) Display all the details of first five customers from deposit table.
SELECT TOP 5 * FROM DEPOSIT

--2) Display all the details of first three depositors whose amount is greater than 1000.
SELECT TOP 3 * FROM DEPOSIT WHERE AMOUNT>1000


--3) Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to ‘ANDHERI’ from borrow table.
SELECT TOP 5 LOANNO,CNAME FROM BORROW WHERE BNAME <> 'ANDHERI' 

--4) Retrieve all unique cities using DISTINCT. (Use Customers Table).
SELECT DISTINCT CITY FROM CUSTOMERS

--5) Retrieve all unique branches using DISTINCT. (Use Branch Table). 
SELECT DISTINCT BNAME FROM BRANCH