
select * from STU_INFO;
select * from RESULT;
select * from EMPLOYEE_MASTER;

--PART-A

--1. Combine information from student and result table using cross join or Cartesian product.
select * from STU_INFO cross join RESULT;
--Or
select * from STU_INFO,RESULT;

--2. Perform inner join on Student and Result tables.
select * from STU_INFO inner join RESULT on STU_INFO.Rno = RESULT.Rno;

--3. Perform the left outer join on Student and Result tables.
select * from STU_INFO left outer join RESULT on STU_INFO.Rno = RESULT.Rno; 

--4. Perform the right outer join on Student and Result tables.
select * from STU_INFO right outer join RESULT on STU_INFO.Rno = RESULT.Rno; 

--5. Perform the full outer join on Student and Result tables.
select * from STU_INFO full outer join RESULT on STU_INFO.Rno = RESULT.Rno; 

--6. Display Rno, Name, Branch and SPI of all students.
select S.RNo,S.Name,S.Branch,R.SPI 
from STU_INFO  S inner join RESULT R 
on S.Rno = R.Rno; 

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
select S.RNo,S.Name,S.Branch,R.SPI 
from STU_INFO  S inner join RESULT R  
on S.Rno = R.Rno where S.Branch='CE';

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select S.RNo,S.Name,S.Branch,R.SPI 
from STU_INFO S inner join RESULT R
on S.Rno = R.Rno where S.Branch <> 'EC'; 

--9. Display average result of each branch.
select S.Branch,avg(R.SPI)as Avg_Result 
from STU_INFO  S inner join RESULT  R 
on S.Rno=R.Rno group by Branch;

--10. Display average result of CE and ME branch.
select S.Branch,avg(R.SPI)as [Avg Result] 
from STU_INFO S inner join RESULT R 
on S.Rno=R.Rno where S.Branch in('CE','ME') group by Branch;

--PART-B

--1. Display average result of each branch and sort them in ascending order by SPI.
select S.Branch,avg(R.SPI)as Avg_Result 
from STU_INFO S inner join RESULT R 
on S.Rno = R.Rno group by Branch order by avg(R.SPI);

--2. Display highest SPI from each branch and sort them in descending order.
select S.Branch,max(R.SPI)as [Highest SPI]
from STU_INFO S inner join RESULT R 
on S.Rno = R.Rno group by Branch order by max(R.SPI) desc;

--PART-C

--1. Retrieve the names of employee along with their manager’s name from the Employee table.select * from EMPLOYEE_MASTER;select e1.Name as [Employee Name],e2.Name as [Manager Name]  from EMPLOYEE_MASTER e1 inner join EMPLOYEE_MASTER e2on e1.ManagerNo = e2.EmployeeNo;