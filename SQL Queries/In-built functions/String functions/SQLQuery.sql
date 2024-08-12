
--String functions

--PART-A

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank.
SELECT LEN(NULL) , LEN(' hello  ') ,LEN('');

--2. Display your name in lower & upper case.
SELECT LOWER('Darshan') , UPPER('Darshan');

--3. Display first three characters of your name.
SELECT SUBSTRING('Darshan', 1,3 );

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('Darshan Halani',3,8);

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('abc123efg' , 123 , 'XYZ') , REPLACE('abcabcabc' , 'c' , 5);

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('a') , ASCII('A') , ASCII('z') , ASCII('Z') , ASCII(0) , ASCII(9);

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97) , CHAR(65) , CHAR(122) , CHAR(90) , CHAR(48) , CHAR(57);

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT LTRIM('    hello World   ');

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM('  hello world    ');

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL Server', 4) , RIGHT('SQL Server', 5);

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CAST('1234.56' as decimal(10, 2))
SELECT CONVERT(decimal(10, 2), '1234.56')
SELECT 1234.56+10;

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CAST(10.58 as int)
SELECT CONVERT(int , 10.58)

--13. Put 10 space before your name using function.
SELECT SPACE(10) + 'Darshan'

--14. Combine two strings using + sign as well as CONCAT ().
SELECT CONCAT('Darshan' , ' ' ,'Halani');
SELECT 'Darshan'+ ' '  +'Halani' ;

--15. Find reverse of “Darshan”.
SELECT REVERSE('Darshan');

--16. Repeat your name 3 times.
SELECT REPLICATE('Darshan ',3);

--PART-B

select * from Student;

--1. Find the length of FirstName and LastName columns.
select len(FirstName),len(LastName) from Student;

--2. Display FirstName and LastName columns in lower & upper case.
select UPPER(FirstName),UPPER(LastName) from Student;
select LOWER(FirstName),LOWER(LastName) from Student;
		
--3. Display first three characters of FirstName column.
select SUBSTRING(FirstName,1,3) from Student;
--Or
select left(FirstName,3) from Student;

--4. Display 3rd to 10th character of Website column.
select SUBSTRING(Website,3,8) from Student;

--5. Write a query to display first 4 & Last 5 characters of Website column.select LEFT(Website,4),RIGHT(Website,5) from Student;--PART-C--1. Put 10 space before FirstName using function.
select SPACE(10)+FirstName from Student;

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
SELECT CONCAT(FirstName, ' ' ,LastName) from Student;

SELECT FirstName + LastName from Student;

select CONCAT_WS('',FirstName,LastName) from Student;

--3. Combine all columns using + sign as well as CONCAT ().
select CONCAT_Ws('  ',StuID,FirstName,LastName,Website,City,Address) from Student;

--4. Find reverse of FirstName column.
select REVERSE(FirstName) from Student;

--5. Repeat FirstName column 3 times
select REPLICATE(FirstName ,3) from Student;

--6. Give the Names which contains 5 characters.
select FirstName from Student where FirstName like '_____';

--7. Combine the result as <FirstName> Lives in <City>.
select FirstName +' Lives in '+ City from Student;

--8. Combine the result as Student_ID of < FirstName > is <StuID> select 'Student_ID of ' + FirstName + ' is ' + cast(StuID as varchar(50))  from Student;
--Or
select  CONCAT('Student_ID of ', FirstName, ' is ', StuID) from Student;

