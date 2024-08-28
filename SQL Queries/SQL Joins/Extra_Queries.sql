use demo

create table PERSON(
PersonID int,
PersonName varchar(30),
DepartmentID int,
Salary decimal(10,2),
JoiningDate datetime,
City varchar(20)
);

insert into PERSON(PersonID,PersonName,DepartmentID,Salary,JoiningDate,City) values
(101,'Rahul Tripathi',2,56000,'2000-01-01','Rajkot'),
(102,'Hardik Pandya',3,18000,'2001-09-25','Ahmedabad'),
(103,'Bhavin Kanani',4,25000,'2000-05-14','Baroda'),
(104,'Bhoomi Vaishnav',1,39000,'2005-02-08','Rajkot'),
(105,'Rohit Topiya',2,17000,'2001-07-23','Jamnagar'),
(106,'Priya Menpara',null,9000,'2000-10-18','Ahmedabad'),
(107,'Neha Sharma',2,34000,'2002-12-25','Rajkot'),
(108,'Nayan Goswami',3,25000,'2001-07-01','Rajkot'),
(109,'Mehul Bhundiya',4,13500,'2005-01-09','Baroda'),
(110,'Mohit Maru',5,14000,'2000-05-25','Jamnagar')

select * from PERSON;

create table DEPT(
DepartmentID int,
DepartmentName varchar(30),
DepartmentCode varchar(20),
Location varchar(20)
);

insert into DEPT(DepartmentID,DepartmentName,DepartmentCode,Location) values
(1,'Admin','Adm','A-Block'),
(2,'Computer','CE','C-Block'),
(3,'Civil','CI','G-Block'),
(4,'Electrical','EE','E-Block'),
(5,'Mechanical','ME','B-Block')

select * from DEPT;

--1) Display person name and their dept name.
select PERSON.PersonName,DEPT.DepartmentName 
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID;

--2) Display person’s department location.
select PERSON.PersonName,DEPT.Location 
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID;

--3) Display Person’s name, Dept name, salary, and city.
select PERSON.PersonName,DEPT.DepartmentName,PERSON.Salary,PERSON.City 
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID;

--4) Display person name, salary, and dept code.
select PERSON.PersonName,PERSON.Salary,DEPT.DepartmentCode 
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID;

--5) Display personID, name, joining date, and deptname.
select PERSON.PersonID,PERSON.PersonName,PERSON.JoiningDate,DEPT.DepartmentName 
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID;

--6) Display person name and dept who belongs to Rajkot.
select PERSON.PersonName,DEPT.DepartmentName
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID where PERSON.City = 'Rajkot';

--7) Display person name who is sitting in ‘C-Block’.
select PERSON.PersonName
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID where DEPT.Location='C-Block';

--8) Display person name, dept whose salary is more than 20000.
select PERSON.PersonName,DEPT.DepartmentName
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID where PERSON.Salary > 20000;

--9) Display person name, dept code who does not belong to Baroda.
select PERSON.PersonName,DEPT.DepartmentCode
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID where PERSON.City <> 'Baroda';

--10) Display person name who works in the computer department.
select PERSON.PersonName 
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID where DEPT.DepartmentName = 'Computer';

--11) Display person’s name of the person who joined the Civil department after 1-Aug-2001.
select PERSON.PersonName,PERSON.JoiningDate
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID 
where DepartmentName = 'Civil' and JoiningDate > '1-Aug-2001';

--12) Display person’s name whose name starts with ‘B’ in the Electrical department.
select PERSON.PersonName
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID 
where DepartmentName = 'Electrical' and PersonName like 'B%';

--13) Display person’s name and dept who lives in Ahmedabad and salary less than 20000.
select PERSON.PersonName,DEPT.DepartmentName
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID 
where City = 'Ahmedabad' and Salary < 20000;

--14) Display person’s name whose personID is less than 105 and deptcode is ‘CI’.
select PERSON.PersonName
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID 
where PersonID < 105 and DepartmentCode = 'CI';

--15) Display person’s name who belongs to the Computer or Civil Dept.
select PERSON.PersonName,DepartmentName
from PERSON join DEPT on 
PERSON.DepartmentID = DEPT.DepartmentID 
where DepartmentName in ('Computer','Civil');

--16. Display average salary of computer department.
select avg(PERSON.Salary) as Avg_Sal
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID 
where DepartmentName = 'Computer';

--OR

select DepartmentName,avg(PERSON.Salary) as Avg_Sal
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID 
group by DepartmentName having DepartmentName = 'Computer';

--17. Display Total Salary of Department located in 'A-Block'.
select  DepartmentName,sum(Salary) as Total_Sal
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
where Location = 'A-Block' group by DepartmentName;

--OR

select sum(Salary) as Total_Sal
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
where Location = 'A-Block';

--18. Display department wise highest salary.
select  DepartmentName,max(Salary) as Max_Sal
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
group by DepartmentName;

--19. Display total salaries in each department.
select  DepartmentName,sum(Salary) as Total_Sal
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
group by DepartmentName;

--20. Count employee per department.
select  DepartmentName,count(PersonID) as Total_Employee
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
group by DepartmentName;

--21. Display average salary for employee in ‘Rajkot’.
select avg(Salary) as [Avg Salary] from PERSON where City = 'Rajkot';

--22. Count of Employees per dept who joined after the year 2000.
select  DepartmentName,count(PersonID) as Employees
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
where JoiningDate > '1-Jan-2000' group by DepartmentName;

--23. Average Salary of Employees in 'Computer' dept grouped by City.
select  City,avg(Salary) as [Avg Salary]
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
where DepartmentName = 'Computer' group by City;

--24. Sum of Salaries for Employees who Joined before 2001, in each Department.
select  DepartmentName,sum(Salary) as Salaries
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
where JoiningDate < '1-Jan-2001' group by DepartmentName;

--25. Count of Employees per Department with Salaries Above 25000.
select  DepartmentName,count(PersonID) as Employees
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
where Salary > 25000 group by DepartmentName;

--26. Total Salary for each Department, with Departments having more than 2 Employees.
select  DepartmentName,sum(Salary) as [Total Salary]
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
group by DepartmentName having COUNT(PersonID) > 2;

--27. Find all departments whose total salary is exceeding 100000.
select  DepartmentName,sum(Salary) as [Total Salary]
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
group by DepartmentName having sum(Salary) > 100000;

--28. List all departments who have no person.
select  DepartmentName
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
group by DepartmentName having COUNT(PersonID) = 0;

--29. Count of Employees in Each City per Department.
select  DepartmentName,City,count(PersonID) as Employees
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID
group by DepartmentName,City;

--30. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
select PersonName  + '  Lives in  ' + City + '  and works in  ' + DepartmentName + '  Department  ' as Output
from PERSON join DEPT on
PERSON.DepartmentID = DEPT.DepartmentID;

-----SELF JOIN-------------------

create table Study(
StudentID int,
CourseID int,
Since int
);

insert into Study(StudentID,CourseID,Since) values 
(101,2301,2016),
(102,2302,2018),
(101,2303,2020),
(103,2304,2022)

select * from Study;

--Q) Find StudentID who is enrolled in at least Two Courses.
--(Ans is StudentID 101 who is enrolled in 2 Coures 2301 & 2303)

select s1.StudentID 
from Study s1 inner join Study s2 
on s1.StudentID = s2.StudentID and
	s1.CourseID <> s2.CourseID;

--OR

select s1.StudentID,s1.CourseID
from Study s1,Study s2 
where s1.StudentID = s2.StudentID and
	s1.CourseID <> s2.CourseID;




