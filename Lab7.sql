--Lab-7 Date Function--

--1
SELECT GETDATE() AS Todat_Date

--2
SELECT DATEADD(year, 1, getdate()) AS DateAdd;

--3
SELECT CONVERT(varchar(20),getdate(),100) AS INDIFFFORMAT

--4
select convert(varchar(20),getdate(),113) as diffformat

--5
select convert(varchar(20),getdate(),107)

--6
SELECT DATEDIFF(MONTH,'2008/12/31','2009/3/31') as monthdiff

--7
SELECT DATEDIFF(year, '2010/9/14', '2012/01/12') AS DateDiff;

--8
SELECT DATEDIFF(HOUR,'2012/1/25 7:00','2012/1/26 10:30') AS TIMEDIFF

--9
SELECT DAY('2016/5/12') AS DAYINDATE
SELECT MONTH('2016/5/12') AS MONTHINDATE
SELECT YEAR('2016/5/12') AS YEARINDATE

--10
SELECT GETDATE() + 5*365 AS yearplus5date

--11
SELECT GETDATE() - 59 AS DATEMINUS2

--12
SELECT DATENAME(MONTH,GETDATE()) AS CURRENTMONTH
SELECT DATEPART(MONTH,GETDATE()) AS CURRENTMONTH

--13
SELECT EOMONTH(GETDATE()) AS LASTDAY

--14
SELECT GETDATE() + 30 AS AFTER30DAYS

--15
SELECT DATEDIFF(YEAR,'2004/9/3','2023/2/26') AS MYAGEINYEAR
SELECT DATEDIFF(MONTH,'2004/9/3','2023/2/26') AS MYAGEINMONTH





--Lab-7 Aggregate Function--
Create Table Student_Marks
(
	Sid Int not null,
	SName varchar(50) not null,
	Marks int not null
)
Insert Into Student_Marks
values (1,'John',90),
		(2,'Martin',80),
		(3,'Carol',89),
		(4,'Jack',99),
		(5,'Rose',88),
		(6,'Mary',90)

Select Count(Sid) As Total_Student
From Student_Marks 

Select Sum(Marks) As Total_Marks
From Student_Marks

Select AVG(Marks) As Average_Marks
From Student_Marks

Select MIN(Marks) As Minimum_Marks
From Student_Marks

Select MAX(Marks) As Maximun_Marks
From Student_Marks
