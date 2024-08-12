
--Date Functions

--PART-A

--1. Write a query to display the current date & time. Label the column Today_Date.
select GETDATE() as Today_Date;

--2. Write a query to find new date after 365 day with reference to today.
select DATEADD(d,365,GETDATE()) as New_Date;

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
Select FORMAT(GETDATE(), 'MMM dd yyyy hh:mm tt') AS CurrentDate;
--OR
select CONVERT(varchar,GETDATE(),100);

--4. Display the current date in a format that appears as 03 Jan 1995.
Select FORMAT(GETDATE(), 'dd MMM yyyy') AS CurrentDate;
--Or
select CONVERT(varchar,GETDATE(),106);

--5. Display the current date in a format that appears as Jan 04, 96.
Select FORMAT(GETDATE(), 'MMM dd,yy') AS CurrentDate;
--OR
select CONVERT(varchar,GETDATE(),107);

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
select DATEDIFF(MONTH,'31-Dec-08','31-Mar-09');

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
select DATEDIFF(YEAR,'14-Sep-10','25-Jan-12');

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR, '2012-01-25 07:00:00', '2012-01-26 10:30:00');

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
select day('2016-05-12') as Day,month('2016-05-12') as Month ,Year('2016-05-12') ;

--10. Write a query that adds 5 years to current date.
select DATEADD(year,5,GETDATE());

--11. Write a query to subtract 2 months from current date.
select DATEADD(month,-2,GETDATE());

--12. Extract month from current date using datename () and datepart () function.
select DATENAME(MONTH,GETDATE()) , DATEPART(MONTH,GETDATE());

--13. Write a query to find out last date of current month.
select EOMONTH(GETDATE());

--14. Calculate your age in years and months.select DATEDIFF(year,'18-sep-2005',GETDATE()) as Years, 		DATEDIFF(month,'18-sep-2005',GETDATE()) as Months;--PART-Bcreate table EMP_DETAIL(
	EmpNo int,
	EmpName varchar(50),
	JoiningDate date,
	Salary decimal(8,2),
	City varchar(30)
);

insert into EMP_DETAIL(EmpNo,EmpName,JoiningDate,Salary,City) values
(101, 'Keyur', '02-1-15', 12000.00, 'Rajkot'),
(102, 'Hardik', '04-2-15', 14000.00, 'Ahmedabad'),
(103, 'Kajal', '06-3-14', 15000.00, 'Baroda'),
(104, 'Bhoomi', '05-6-23', 12500.00, 'Ahmedabad'),
(105, 'Harmit', '04-2-15', 14000.00, 'Rajkot'),
(106, 'Jay', '07-3-12', 12000.00, 'Surat');

select * from EMP_DETAIL;

--1. Write a query to find new date after 365 day with reference to JoiningDate.
select DATEADD(day,365,JoiningDate) from EMP_DETAIL;

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
Select FORMAT(JoiningDate, 'MMM dd yyyy hh:mm tt') from  EMP_DETAIL;
--Or
select convert(varchar,JoiningDate,100) from EMP_DETAIL;

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
Select FORMAT(JoiningDate, 'dd MMM yyyy') from EMP_DETAIL;
--Or
select CONVERT(varchar,JoiningDate,106) from EMP_DETAIL;

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
Select FORMAT(JoiningDate, 'MMM dd,yy') from EMP_DETAIL;
--OR
select CONVERT(varchar,JoiningDate,107) from EMP_DETAIL;

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
select DATEDIFF(MONTH,'31-mar-09',JoiningDate) from EMP_DETAIL;

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
select DATEDIFF(day,'14-sep-10',JoiningDate) from EMP_DETAIL;

--PART-C

--1. Write a query to extract Day, Month, Year from JoiningDate.
select DATEPART(day,JoiningDate)as Day, 
		DATENAME(month,JoiningDate)as Month, 
		DATEPART(year,JoiningDate)as Year
	from EMP_DETAIL;

--2. Write a query that adds 5 years to JoiningDate.
select DATEADD(year,5,JoiningDate) from EMP_DETAIL;

--3. Write a query to subtract 2 months from JoiningDate.
select DATEADD(MONTH,-2,JoiningDate) from EMP_DETAIL;

--4. Extract month from JoiningDate using datename () and datepart () function.
select DATEPART(month,JoiningDate),DATENAME(month,JoiningDate) from EMP_DETAIL;

--5. Calculate your age in years and months.
select DATEDIFF(year,'18-sep-2005',GETDATE()) as Years, 		DATEDIFF(month,'18-sep-2005',GETDATE()) as Months;