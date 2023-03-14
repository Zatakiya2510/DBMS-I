--Math Function --
--1
Select 5*30 AS Multiply

--2
Select ABS(-25) AS ABSNUM

Select ABS(25) AS ABSNUM

Select ABS(-50) AS ABSNUM

Select ABS(50) AS ABSNUM

--3
Select CEILING(25.2) As Greatest

Select CEILING(25.7) As Greatest

Select CEILING(-25.2) As Greatest
--4
Select FLOOR(25.2) As Smallest

Select FLOOR(25.7) As Smallest

Select FLOOR(-25.2) As Smallest
--5 
Select 5%2 As Remindar

Select 5%3 As Remindar

--6 
Select POWER(3,2) As Power

Select POWER(4,3) As Power

--7 
Select SQRT(25) As Square_Root

Select SQRT(30) As Square_Root

Select SQRT(50) As Square_Root

--8
Select SQUARE(5) As Square

Select SQUARE(15) As Square

Select SQUARE(25) As Square

--9
Select PI() As PI

--10
Select ROUND(157.732,2) As Round

Select ROUND(157.732,0) As Round

Select ROUND(157.732,-2) As Round

--11
Select EXP(2) As Exponential

Select EXP(3) As Exponential

--12 
Select LOG(5,10) As Logarithm

Select LOG(100,10) As Logarithm

--13
Select SIN(3.1415) As Trignometry

Select COS(3.1415) As Trignometry

Select TAN(3.1415) As Trignometry

--14
Select SIGN(-25) AS Sign

Select SIGN(0) AS Sign

Select SIGN(25) AS Sign

--15
Select RAND() As Random


--String Function--
--1
Select LEN('NUL') As Length

Select LEN(' hello  ') As Length

Select LEN('BLANK') As Length

--2
Select LOWER('ABHISHEK') As Cass

Select UPPER('abhishek') As Cass

--3
Select LEFT('Abhishek',4) As Character

--4
Select SUBSTRING('Abhishek Zatakiya',1,8) As SubString

--5
Select REPLACE('abc123efg','abc123efg','abcXYZefg') As Replace

Select REPLACE('abcabcabc','abcabcabc','ab5ab5ab5') As Replace

--6
Select ASCII('a') As AsciiCode

Select ASCII('A') As AsciiCode

Select ASCII('z') As AsciiCode

Select ASCII('Z') As AsciiCode

Select ASCII(0) As AsciiCode

Select ASCII(9) As AsciiCode

--7
Select CHAR(97) As Character

Select CHAR(65) As Character

Select CHAR(122) As Character

Select CHAR(90) As Character

Select CHAR(48) As Character

Select CHAR(57) As Character

--8
Select LTRIM('Hello World             ')

--9
Select RTRIM('        Hello World             ')

--10
Select Left('SQL Server',4)  As First
Select Right('SQL Server',5) As First

--11
Select CAST('1234.56' As numeric) As Number

--12
Select CONVERT(int,10.58) As Integer

--13


--14
Select 'Abhishek'+'Zatakiya' As Concatination

--15
Select REVERSE('Darshan')

--16
Select REPLICATE('Abhishek',3) As Repeat

--17
SELECT STUFF('SQL Tutorial', 1, 3, 'HTML') As Deletee

--18
SELECT COALESCE(NULL, NULL, NULL, 'Darshan University', NULL, 'Example') As Nul

--19
SELECT ISNUMERIC(4567) As Numeric

--20
SELECT CHARINDEX('t', 'Customer') AS MatchPosition

