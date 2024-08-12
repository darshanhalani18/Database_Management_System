
--Math functions

--PART-A

--1. Display the result of 5 multiply by 30.
select 5*30 as Result;

--2. Find out the absolute value of -25, 25, -50 and 50.
select abs(-25),abs(25) ,abs(-50),abs(50);

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
select ceiling(25.2),ceiling(25.7),ceiling(-25.2);

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select floor(25.2),floor(25.7),floor(-25.2);

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
select 5%2 as Rem1,5%3 as Rem2;

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
select power(3,2),power(4,3);

--7. Find out the square root of 25, 30 and 50.
select sqrt(25),sqrt(30),sqrt(50);

--8. Find out the square of 5, 15, and 25.
select square(5),square(15),Square(25);

--9. Find out the value of PI.
select PI() as PIVal;

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
select round(157.732,2),round(157.732,0),round(157.732,-2);

--11. Find out exponential value of 2 and 3.
select exp(2),exp(3);

--12. Find out logarithm having base e of 10 and 2.
select log(10),log(2);

--13. Find out logarithm having base b having value 10 of 5 and 100.
select log10(5),log10(100);

--14. Find sine, cosine and tangent of 3.1415.
select sin(3.1415),cos(3.1415),tan(3.1415);

--15. Find sign of -25, 0 and 25.
select sign(-25),sign(0),sign(25);

--16. Generate random number using function.
select rand();

--PART-B

create table EMP_MASTER(
EmpNo int,
EmpName varchar(30),
JoiningDate datetime,
Salary decimal(8,2),
Commission int,
City varchar(20),
DeptCode varchar(30)
);

insert into EMP_MASTER(EmpNo,EmpName,JoiningDate,Salary,Commission,City,DeptCode) values
(101,'Keyur','2002-01-05',12000.00,4500,'Rajkot','3@g'),
(102,'Hardik','2004-02-15',14000.00,2500,'Ahmedabad','3@'),
(103,'Kajal','2006-03-14',15000.00,3000,'Baroda','3-GD'),
(104,'Bhoomi','2005-06-23',12500.00,1000,'Ahmedabad','1A3D'),
(105,'Harmit','2004-02-15',14000.00,2000,'Rajkot','312A')

select * from EMP_MASTER;


--1. Display the result of Salary plus Commission.
select Salary + Commission as Result from EMP_MASTER;

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
select CEILING(55.2),CEILING(35.7),CEILING(-55.2);

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
select FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2);

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
select 55%2 as Rem1,55%3 as Rem2;

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
select POWER(23,2),POWER(14,3);

--PART-C

--1. Find out the square root of 36, 49 and 81.
select SQRT(36),SQRT(49),SQRT(81);

--2. Find out the square of 3, 9, and 12.
select SQUARE(3),SQUARE(9),SQUARE(12);

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
select ROUND(280.8952,2),ROUND(280.8952,0),ROUND(280.8952,-2);

--4. Find sine, cosine and tangent of 4.2014.
select SIN(4.2014),COS(4.2014),TAN(4.2014);

--5. Find sign of -55, 0 and 95.
select SIGN(-55),SIGN(0),SIGN(95);