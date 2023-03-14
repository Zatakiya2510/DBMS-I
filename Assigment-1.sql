Create Database Student463
Create Table Info_463
(
	StuId int,
	StName varchar(25),
	EnrollmentNo varchar(25),
	Division varchar(10),
	Sem int,
	BirthDate datetime,
	Email varchar(50),
	ContactNo varchar(10),
)

Insert Into Info_463
values (101,'Naimish Patel','090200107051','BCX-3',3,'1991-12-06','naimishp49@gmail.com','8866566768'),
		(102,'Firoz A. S. ','090200107090','BCY-3',3,'1994-05-03 ','Firoz.me@gmail.com','8888999922'),
		(103,'Krunal Vyas','090200107101','BCZ-5',5,'1984-03-01','Krunal.vyas@gmail.com','9999888877'),
		(104,'Vijay Patel','090200107102','BCX-5',5,'1985-02-15','Vijay.patel123@gmail.com','8787878787')
		

Insert Into Info_463(StuId,StName,EnrollmentNo,Division,Sem,BirthDate,Email)
values (105,'Vimal Trivedi','090200107101','BC-3',3,'1988-01-20',' Vimal123@gmail.com')

Select * From Info_463

Select * From Info_463
where Division like '%BCX-3%'

Select StName From Info_463
where Sem like '%3%'
or Sem like '%5%'

Select * From Info_463
where StName not like 'V%'

Select top 3* From Info_463

Select Distinct Division From Info_463

Select top 30 percent StName , EnrollmentNo From Info_463
where ContactNo like '_________7'

Select * From Info_463
where Email like '%3@g%'
or Division like '%BCZ-5%'

Select StuId,StName,Email From Info_463

Select * From Info_463
where BirthDate >  '01-01-1990'

Select StName From Info_463
where Sem like '%3%'
and EnrollmentNo like '%107%'

Select StName, Division From Info_463
order by StName,Division

Select * From Info_463
where ContactNo is null

Select Distinct Sem as Semesters From Info_463

Select StName,EnrollmentNo, Sem From Info_463
Where Division in ('BCX-3', 'BCZ-5', 'BCY-3')
AND BirthDate>'03-15-1986'

Select * From Info_463
order by BirthDate desc



