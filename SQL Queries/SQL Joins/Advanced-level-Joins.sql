
-- Advanced level Joins

--PART-A

CREATE TABLE City (
    CityID INT,
    Name VARCHAR(100),
    Pincode INT,
    Remarks VARCHAR(255)
);

CREATE TABLE Village (
    VID INT,
    Name VARCHAR(100),
    CityID INT,
);

INSERT INTO City (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Very Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');

select * from City;

INSERT INTO Village (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

select * from Village;

--1. Display all the villages of Rajkot city.
select V.VID
from City C join Village V
on C.CityID = V.CityID
where C.Name='Rajkot';

--2. Display city along with their villages & pin code.
select C.CityID,V.Name,C.Pincode
from City C join Village V
on C.CityID = V.CityID

--3. Display the city having more than one village.
select C.Name as [City]
from City C join Village V
on C.CityID = V.CityID
group by C.Name having count(VID) > 1;

--4. Display the city having no village.
select C.Name as [City]
from City C left join Village V
on C.CityID = V.CityID
group by C.Name having count(VID)=0;

--5. Count the total number of villages in each city.
select C.Name,count(VID) as [villages]
from City C left join Village V
on C.CityID = V.CityID
group by C.Name;

--6. Count the number of cities having more than one village.
select count(*) as No_Of_Cities from City 
where Name in (select C.Name as Cities 
				from City C join Village V
				on C.CityID = V.CityID
				group by C.Name having count(VID) > 1);

--Table(STU_MASTER) with following Constraints.
--SPI more than 10.
--Bklog less than 0.
--Default value as 'General' in branch.

create table STU_MASTER(
Rno int primary key,
Name varchar(30),
Branch	varchar(20) default 'General',
SPI decimal(4,2) check (SPI<=10),
Bklog int check(Bklog >= 0)
);
select * from STU_MASTER;

insert into STU_MASTER values
(101,'Raju','CE',8.80,0),
(102,'Amit','CE',2.20,3),
(103,'Sanjay','ME',1.50,6),
(104,'Neha','EC',7.65,0),
(105,'Meera','EE',5.52,2),
(106,'Mahesh',default,4.50,3)

update STU_MASTER set SPI=12 where Name='Raju';
update STU_MASTER set Bklog=-1 where Name='Neha';

--PART-B

--Create table as per following schema with proper validation and try to insert data 
--which violate your validation.

--Emp(Eid, Ename, Did, Cid, Salary, Experience)
--Dept(Did, Dname)
--City(Cid, Cname)

CREATE TABLE Dept_DETAILS (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL
);

CREATE TABLE City_DETAILS(
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL
);

CREATE TABLE Emp_DETAILS (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10, 2) CHECK (Salary > 0),
    Experience INT CHECK (Experience >= 0), 
    FOREIGN KEY (Did) REFERENCES Dept_DETAILS(Did),
    FOREIGN KEY (Cid) REFERENCES City_DETAILS(Cid)
);

INSERT INTO Dept_DETAILS(Did, Dname) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing');

select * from Dept_DETAILS;

INSERT INTO City_DETAILS(Cid, Cname) VALUES
(1, 'New York'),
(2, 'Los Angeles'),
(3, 'Chicago');	
select * from City_DETAILS;


INSERT INTO Emp_DETAILS(Eid, Ename, Did, Cid, Salary, Experience) VALUES
(1, 'John Doe', 1, 1, 50000.00, 5),
(2, 'Jane Smith', 2, 2, 75000.00, 8),
(3, 'Mike Johnson', 3, 3, 60000.00, 3);
																																								
select * from Emp_DETAILS;
update Emp_DETAILS set Experience = -1 where Ename='John Doe'; --statement has been terminated.

--PART-C

--Create table as per following schema with proper validation and try to insert data 
--which violate your validation.
--1.	Emp(Eid, Ename, Did, Cid, Salary, Experience)
--		Dept(Did, Dname)
--		City(Cid, Cname, Did)
--		District(Did, Dname, Sid)
--		State(Sid, Sname, Cid)
--		Country(Cid, Cname)

--Country(Cid, Cname)
CREATE TABLE Country_INFO (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL
);
INSERT INTO Country_INFO (Cid, Cname) VALUES
(1, 'USA'),
(2, 'Canada'),
(3, 'UK'),
(4, 'Australia'),
(5, 'India');
select * from Country_INFO;

-- State(Sid, Sname, Cid)
CREATE TABLE State_INFO (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(100) NOT NULL,
    Cid INT,
    FOREIGN KEY (Cid) REFERENCES Country_INFO(Cid)
);

INSERT INTO State_INFO (Sid, Sname, Cid) VALUES
(1, 'California', 1),
(2, 'Ontario', 2),
(3, 'London', 3),
(4, 'New South Wales', 4),
(5, 'Gujarat', 5);
select * from State_INFO;

--District(Did, Dname, Sid)
CREATE TABLE District_INFO (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL,
    Sid INT,
    FOREIGN KEY (Sid) REFERENCES State_INFO(Sid)
);

INSERT INTO District_INFO (Did, Dname, Sid) VALUES
(1, 'Los Angeles', 1),
(2, 'Toronto', 2),
(3, 'Westminster', 3),
(4, 'Sydney', 4),
(5, 'Ahmedabad', 5);
select * from District_INFO;

--Dept(Did, Dname)
CREATE TABLE Dept_INFO (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL
);

INSERT INTO Dept_INFO (Did, Dname) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Sales'),
(5, 'Finance');
select * from Dept_INFO;

--City(Cid, Cname, Did)
CREATE TABLE City_INFO (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL,
    Did INT,
    FOREIGN KEY (Did) REFERENCES District_INFO(Did)
);

INSERT INTO City_INFO (Cid, Cname, Did) VALUES
(1, 'Los Angeles City', 1),
(2, 'Toronto City', 2),
(3, 'London City', 3),
(4, 'Sydney City', 4),
(5, 'Ahmedabad City', 5);
select * from City_INFO;

--Emp(Eid, Ename, Did, Cid, Salary, Experience)
CREATE TABLE Emp_INFO (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10, 2) CHECK (Salary > 0), -- Salary must be positive
    Experience INT CHECK (Experience >= 0),  -- Experience cannot be negative
    FOREIGN KEY (Did) REFERENCES Dept_INFO(Did),
    FOREIGN KEY (Cid) REFERENCES City_INFO(Cid)
);
INSERT INTO Emp_INFO (Eid, Ename, Did, Cid, Salary, Experience) VALUES
(1, 'John Doe', 1, 1, 50000.00, 5),
(2, 'Jane Smith', 2, 2, 75000.00, 8),
(3, 'Mike Johnson', 3, 3, 60000.00, 3),
(4, 'Alice Brown', 4, 4, 45000.00, 2),
(5, 'Bob Green', 5, 5, 40000.00, 4);

select * from Emp_INFO;

--Display employeename, departmentname, Salary, Experience, City, District,
--State and country of all employees.

select E.EName,D.DName,E.Salary,E.Experience,C.Cname,Di.Dname,S.Sname,Co.Cname
from Emp_INFO E join Dept_INFO D on E.Did = D.Did
join
City_INFO C on E.Cid = C.Cid
join
District_INFO Di on E.Did = Di.Did
join
State_INFO S on E.Cid = S.Cid
join
Country_INFO Co on E.Cid = Co.Cid;











