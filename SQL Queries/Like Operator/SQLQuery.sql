
--Lab-5 : Like Operator
--PART-A

create table Student(
StuID int,
FirstName varchar(25),
LastName varchar(25),
Website varchar(50),
City varchar(25),
Address varchar(100)
);

drop table Student;
insert into Student(StuID,FirstName,LastName,Website,City,Address) values
(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303 ''Vasant Kunj'', Rajkot'),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram Krupa", Raiya Road'),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot,near garden'),
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad',' "Jig''s Home", Narol'),
(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55, Raj Residency'),
(1066,'Ashok','Jani',null,'Baroda','A502, Club House Building')

select * from Student;

--1. Display the name of students whose name starts with ‘k’.
select FirstName from Student where FirstName like 'K%';

--2. Display the name of students whose name consists of five characters.
select FirstName from Student where FirstName like '_____';

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
select FirstName,LastName from Student where City like '_____a';

--4. Display all the students whose last name ends with ‘tel’.
select FirstName from Student where LastName like '%tel';

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
select FirstName from Student where FirstName like 'ha%t';

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
select Firstname from Student where FirstName like 'K_y%';

--7. Display the name of students having no website and name consists of five characters.
select FirstName from Student where Website is null and FirstName like '_____';

--8. Display all the students whose last name consist of ‘jer’.
select FirstName from Student where LastName like '%jer%';

--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
select FirstName from Student where City like '[R,B]%';

--10. Display all the name students having websites.
select FirstName from Student where Website is not null;

--11. Display all the students whose name starts from alphabet A to H.
select FirstName from Student where FirstName like '[A-H]%';

--12. Display all the students whose name’s second character is vowel.
select FirstName from Student where FirstName like '_[a,e,i,o,u]%';

--13. Display the name of students having no website and name consists of minimum five characters.
select FirstName from Student where Website is null and FirstName like '_____%';

--14. Display all the students whose last name starts with ‘Pat’.
select FirstName from Student where LastName like 'Pat%';

--15. Display all the students whose city name does not starts with ‘b’.
select FirstName from Student where City not like 'B%';

--PART-B

--1. Display all the students whose name starts from alphabet A or H.
select FirstName from Student where FirstName like '[A-H]%';

--2. Display all the students whose name’s second character is vowel and of and start with H.
select FirstName from Student where FirstName like 'H[a,e,i,o,u]%';

--3. Display all the students whose last name does not ends with ‘a’.
select FirstName from Student where Lastname not like '%a';

--4. Display all the students whose first name starts with consonant.
select FirstName from Student where FirstName not like '[a,e,i,o,u]%';

--5. Display all the students whose website contains .net.select FirstName from Student where Website like '%.net%';--PART-C--1. Display all the students whose address consist of -.
select FirstName from Student where Address like '%-%';

--2. Display all the students whose address contains single quote or double quote.
select FirstName from Student where Address like '%''%' or Address like '%"%';

--3. Display all the students whose website contains @.
select FirstName from Student where Website like '%@%';

--4. Display all the names those are either four or five characters.
select FirstName from Student where FirstName like '____' or FirstName like '_____';
