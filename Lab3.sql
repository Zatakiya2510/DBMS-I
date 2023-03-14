Create Database Student_Detail

Create Table Student
(
	Enrollment_No varchar(20),
	Name varchar(25),
	CPI Decimal(5,2),
	Birthdate datetime,
)
--1
Alter Table Student
Add City varchar(20),
	Backlog int not null

--2
Alter Table Student
Alter Column Name varchar(35)

--3
Alter Table Student
Alter Column CPI int

--4
SP_Rename 'Student.Enrollment_No','ENO'

--5
Alter Table Student
Drop Column City

--6
Sp_Rename Student,Student_Master

--7
Alter Table Student_Master 
Drop Column Backlog

--8
Alter Table Student_Master
Alter Column Name varchar(35) not null

--9
Sp_Rename 'Student_Master.Birthdate','BDate'

--10
Alter Table Student_Master
Alter Column ENO varchar(12)

