Create Database Student_Info

Create Table Students
(
	StuID int,
	FirstName varchar(25),
	LastName varchar(100),
	Website varchar(50),
	City varchar(25),
	Division varchar(20),
)
Insert Into Students
values (1011, 'Keyur' , 'Patel','techonthenrt.com','Rajkot','II-BCX'),
		(1022, 'Hardik', 'Shah','digninecraft.com','Ahmedabad','I-BCY'),
		(1033, 'Kajal','Trivedi','bigactivities.com','Baroda','IV-DCX'),
		(1044, 'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','III-DCW')

Insert Into Students(StuID,FirstName,LastName,City,Division)
values (1055,'Harmit','Mitel','Rajkot','II-BCY'),
		(1066,'Ashok','Jani','Baroda','II-BCZ')

Select * From Students

--1

Select FirstName From Students
where FirstName like 'K%'

--2
Select FirstName From Students
where FirstName like '_____'

--3
Select FirstName, LastName From Students
where City like '_____a'

--4
Select * From Students 
where LastName like '%tel'

--5
Select * From Students 
where FirstName like 'ha%'
		and FirstName like '%t'

--6
Select * from Students
where FirstName like 'k_y%'


--7
Select FirstName From Students
where Website is Null
and FirstName like '_____'


--8
Select * From Students 
where LastName like '%jer%'


--9
Select * From Students
where City like 'r%'
	or City like 'b%'


--10
Select * From Students 
where Website is not null

--11
Select * From Students
where FirstName like '[A-H]%'


--12
Select * From Students
where FirstName like '_[aeiouAEIOU]%'

--13
Select FirstName From Students
where City like'%rod%'


--14
Select  FirstName , LastName From Students
where Website like'bi%'

--15
Select City From Students
where LastName like'______'

--16
Select * From Students
where City like '_____'
and City <> 'ba%'

--17
Select * From Students
where Division like 'II-%'

--18
Select FirstName From Students
where Division like '%bc%'

--19
Select StuId,City From Students
where Division like'______'
and Website is not null

--20
Select * From Students
where FirstName like '__[BCDFGHJKLMNPQRSTVWXY]%'

