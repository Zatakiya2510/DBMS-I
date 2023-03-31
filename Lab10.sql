Create Database Joins
Create Table Student 
(
	Rno int,
	Name varchar (50),
	Branch varchar (50)
)

Create Table Result 
(
	RNo int, 
	SPI Decimal (4,2)
)

Create Table Employee 
(
	EmployeeNo varchar (50),
	Name varchar (50),
	ManagerNo varchar (50)
)

Insert Into Student
values (101, 'Raju', 'CE'),
	   (102, 'Amit', 'CE'),
	   (103,'Sanjay', 'ME'),
	   (104,'Neha', 'EC'),
	   (105,'Meera','EE'),
	   (106,'Mahesh','ME')

Insert Into Result
values (101,8.8),
	   (102,9.2),
	   (103,7.6),
	   (104,8.2),
	   (105,7.0),
	   (106,8.9)


Insert Into Employee(EmployeeNo,Name)
values ('E01' , 'Tarun')

Insert Into Employee
Values 
	   ('E02','Rohan','E02'),
	   ('E03','Priya','E01'),
	   ('E04','Milan','E03'),
	   ('E05','Jay','E01'),
	   ('E06','Anjana','E04')

--1
Select *
From Student
Cross Join Result

--2
Select Student.Rno,Student.Name,Student.Branch , Result.SPI
From Student
Inner Join Result on Student.Rno=Result.RNo
where Student.Branch like '%CE%'

--3
Select Student.Rno,Student.Name,Student.Branch , Result.SPI
From Student
Inner Join Result on Student.Rno=Result.RNo
where Student.Branch <> 'EC'

--4
Select Student.Branch,AVG(SPI) As Avgerage
From Student
Left Outer Join Result on Student.Rno=Result.RNo
group by Student.Branch

--5
Select Student.Branch,AVG(SPI) As Avgerage
From Student
Inner Join Result on Student.Rno=Result.RNo
group by Student.Branch
Order By Avg(SPI)

--6
Select Student.Branch,AVG(SPI) As Avgerage
From Student
Inner Join Result on Student.Rno=Result.RNo
where Branch = 'CE' OR Branch = 'ME'
group by Student.Branch

--7
Select *
From Student
Left Outer Join Result on Student.Rno=Result.RNo

--8
Select *
From Student
Right Outer Join Result on Student.Rno=Result.RNo

--9
Select *
From Student
Full Outer Join Result on Student.Rno=Result.RNo

--10
Select emp.Name As EmpName, mgr.Name As mgrName
From Employee As mgr
join Employee As emp
on mgr.EmployeeNo=emp.ManagerNo




Create Table  Village 
(
	VillageID int,
	VillageName varchar (50),
	CityID int
)

Create Table City 
(
	CityID int,
	CityName varchar (50), 
	Pincode varchar (6), 
	Remarks varchar (250)
)

Insert Into Village
values (101,'Raiya',1),
	   (102,'Madhapar',1),
	   (103,'Dodka',3),
	   (104,'Falla',4),
	   (105,'Bhesan',5),
	   (106,'Dhoraji',5)

Insert Into City
values (1 , 'Rajkot' , '360005' , 'Good'),
	   (2 ,'Surat ','335009' , 'Very Good'),
	   (3 , 'Baroda' , '390001' , 'Awesome'),
	   (4 , 'Jamnagar' , '361003' , 'Smart'),
	   (5 , 'Junagadh' , '362229' , 'Historic'),
	   (6 , 'Morbi' , '363641' , 'Ceramic')

--1
Select *
From Village
Inner Join City on Village.CityID=City.CityID
where Village.CityID = '1'

--2
Select City.CityName,Village.VillageName,City.Pincode
from City
Inner Join Village on Village.CityID=City.CityID

--3
SELECT City.CityName
FROM City
INNER JOIN Village ON City.CityID = Village.CityID
GROUP BY City.CityName
HAVING COUNT(*) > 1;

--4
SELECT City.CityName
FROM City
LEFT JOIN Village ON City.CityID = Village.CityID
WHERE Village.CityID IS NULL;

--5
SELECT City.CityName, COUNT(Village.VillageID) AS TotalVillages
FROM City
LEFT JOIN Village ON City.CityID = Village.CityID
GROUP BY City.CityName;

--6
SELECT City.CityName, COUNT(DISTINCT City.CityID) AS NumCities
FROM City
INNER JOIN Village ON City.CityID = Village.CityID
GROUP BY City.CityID,City.CityName
HAVING COUNT(*) > 1;



