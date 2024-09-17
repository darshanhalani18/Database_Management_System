
--Sub Queries

--PART-A

create table STUDENT_DATA(
no int,
Name varchar(20),
City varchar(30),
DID int
);
insert into STUDENT_DATA(no,Name,City,DID) values
(101,'Raju','Rajkot',10),
(102,'Amit','Ahmedabad',20),
(103,'Sanjay','Baroda',40),
(104,'Neha','Rajkot',20),
(105,'Meera','Ahmedabad',30),
(106,'Mahesh','Baroda',10)

select * from STUDENT_DATA;

create table ACADEMIC(
Rno int,
SPI decimal(4,2),
Bklog int
);

insert into ACADEMIC(Rno,SPI,Bklog) values
(101,8.8,0),
(102,9.2,2),
(103,7.6,1),
(104,8.2,4),
(105,7.0,2),
(106,8.9,3)

select * from ACADEMIC;

create table DEPARTMENT(
DID int,
DName varchar(20)
);

insert into DEPARTMENT(DID,DName) values
(10,'Computer'),
(20,'Electrical'),
(30,'Mechanical'),
(40,'Civil')

select * from DEPARTMENT;

--1. Display details of students who are from computer department.
select * from STUDENT_DATA 
	where DID = (select DID from DEPARTMENT where DName='Computer');

--2. Displays name of students whose SPI is more than 8.
select Name from STUDENT_DATA
	where no in (select Rno from ACADEMIC where SPI > 8);

--3. Display details of students of computer department who belongs to Rajkot city.
select * from STUDENT_DATA 
	where DID = (select DID from DEPARTMENT where DName='Computer') and City='Rajkot';

--4. Find total number of students of electrical department.
select count(no) as Total_Students from STUDENT_DATA
	where DID = (select DID from DEPARTMENT where DName='Electrical');

--5. Display name of student who is having maximum SPI.
select Name from STUDENT_DATA
where no =(select Rno from ACADEMIC 
		where SPI =(select max(SPI) from ACADEMIC)
		);

--6. Display details of students having more than 1 backlog
select * from STUDENT_DATA 
where no in (select Rno from ACADEMIC where Bklog >1);

--PART-B

--1. Display name of students who are either from computer department or from mechanical department.
select * from STUDENT_DATA 
where DID in (select DID from DEPARTMENT where DName in ('Computer','Mechanical'));

--2. Display name of students who are in same department as 102 studying in.
select Name from STUDENT_DATA 
where DID in (Select DID From STUDENT_DATA Where no = 102);

--PART-C

--1. Display name of students whose SPI is more than 9 and who is from electrical department.
select Name from STUDENT_DATA 
where no in (select Rno from ACADEMIC where SPI > 9)
	and DID = (select DID from DEPARTMENT where DName = 'Electrical');

--2. Display name of student who is having second highest SPI.
select Name from STUDENT_DATA
where no = (select Rno from ACADEMIC 
	where SPI = (select max(SPI) from ACADEMIC 
			where SPI <> (select max(SPI) from ACADEMIC))
			);

--3. Display city names whose students branch wise SPI is 9.2.	
select City from STUDENT_DATA 
	where no = (select Rno from ACADEMIC where SPI = 9.2);

--SET Operators

--PART-A

create table COMPUTER(
RollNo int,
Name varchar(30)
);

insert into COMPUTER values
(101,'Ajay'),
(109,'Haresh'),
(115,'Manish')

select * from COMPUTER;

create table ELECTRICAL(
RollNo int,
Name varchar(30)
);

insert into ELECTRICAL values
(105,'Ajay'),
(107,'Mahesh'),
(115,'Manish')

select * from ELECTRICAL;

--1. Display name of students who is either in Computer or in Electrical.
select name from COMPUTER union select name from ELECTRICAL;

--2. Display name of students who is either in Computer or in Electrical including duplicate data.
select name from COMPUTER union all select name from ELECTRICAL;

--3. Display name of students who is in both Computer and Electrical.
select name from COMPUTER intersect select name from ELECTRICAL;

--4. Display name of students who are in Computer but not in Electrical.
select name from COMPUTER except select name from ELECTRICAL;

--5. Display name of students who are in Electrical but not in Computer.
select name from ELECTRICAL except select name from COMPUTER;

--6. Display all the details of students who are either in Computer or in Electrical.
select * from COMPUTER union select * from ELECTRICAL;

--7. Display all the details of students who are in both Computer and Electrical.
select * from COMPUTER intersect select * from ELECTRICAL;

--PART-B

create table EMP_DATA(
EID int,
Name varchar(20)
);

insert into EMP_DATA values
(1,'Ajay'),
(9,'Haresh'),
(5,'Manish')

select * from EMP_DATA;

create table CUSTOMER(
CID int,
Name varchar(20)
);

insert into CUSTOMER values
(5,'Ajay'),
(7,'Mahesh'),
(5,'Manish')

select * from CUSTOMER;

--1. Display name of persons who is either Employee or Customer.
select Name from EMP_DATA union select Name from CUSTOMER;

--2. Display name of persons who is either Employee or Customer including duplicate data.
select Name from EMP_DATA union all select Name from CUSTOMER;

--3. Display name of persons who is both Employee as well as Customer.
select Name from EMP_DATA intersect select Name from CUSTOMER;

--4. Display name of persons who are Employee but not Customer.
select Name from EMP_DATA except select Name from CUSTOMER;

--5. Display name of persons who are Customer but not Employee
select Name from CUSTOMER except select Name from EMP_DATA;

--PART-C

--1. Perform all the queries of Part-B but display ID and Name columns instead of Name only.

select Name,EID from EMP_DATA union select Name,CID from CUSTOMER;

select Name,EID from EMP_DATA union all select Name,CID from CUSTOMER;

select Name,EID from EMP_DATA intersect select Name,CID from CUSTOMER;

select Name,EID from EMP_DATA except select Name,CID from CUSTOMER;

select Name,CID from CUSTOMER except select Name,EID from EMP_DATA;


