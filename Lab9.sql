Use  General

--Set Operator--
Create Table Computer
(
	RollNo Int,
	Name Varchar(50)
)

Create Table Electrical
(
	RollNo Int,
	Name Varchar(50)
)

Insert into Computer
Values (101,'Ajay'),
	   (109,'Haresh'),
	   (115,'Manish')

Insert into Electrical
Values (105,'Ajay'),
       (107,'Mahesh'),
	   (115,'Manish')

--1
Select  Name From Computer Union Select  Name From Electrical

--2
Select  Name From Computer Union All Select  Name From Electrical

--3
Select Name From Computer INTERSECT Select Name From Electrical

--4
Select Name From Computer Except Select Name From Electrical

--5
Select Name From Electrical Except Select Name From Computer

--6
Select * From Computer Union Select * From Electrical

--7
Select * From Computer Intersect Select * From Electrical


--Select Into--
Create Table Cricket 
(
	Name varchar (50),
	City varchar (50),
	Age Int
) 

Insert Into Cricket
values ('Sachin Tendulkar', 'Mumbai', 30),
	   ('Rahul Dravid',' Bombay', 35),
	   ('M. S. Dhoni',' Jharkhand', 31),
	   ('Suresh Raina ','Gujarat ',30)

--1
Select *
Into World_Cup 
From Cricket

--2
Select Name,City
Into T20
From Cricket 
Where Name='Abhishek'

--3
Select *
Into IPL
From Cricket 
Where Name='Abhishek'

--4
Insert Into IPL  
Select * From Cricket 
Where Name like '_a_____%'

--5
Delete From IPL

--6
Delete From Cricket
where City like '%Jharkhand%'

--7
Sp_Rename 'IPL','IPL2018'

--8
Drop Table T20