Create Database Constraints

Create Table Student_Master 
(
	StudentID int not null,
	Enrollment_No varchar(20) not null,
	Name Varchar(25) not null,
	CPI decimal(5,2),
	JoiningDate Datetime not null,
	Bklog int not null,
	CityID int not null ,
	StateName varchar(50),
)

Create Table City_Master
(
	CityID int not null,
	CityName varchar(20) not null,
	PinCode varchar(10),
	STDCode varchar(10),
)