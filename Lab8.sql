create Database General

Create Table Employee
(
	EID int not null,
	EName varchar(50) not null,
	Department varchar(50) not null,
	Salary decimal(8,2) not null,
	JoiningDate datetime not null,
	City varchar(50) not null
)

Insert into Employee
values(101,'Rahul','Admin',56000,01-01-90,'Rajkot'),
		(102,'Hardik','IT',18000,25-09-90,'Ahmedabad'),
		(103,'Bhavin','HR',25000,14-05-91,'Baroda'),
		(104,'Bhoomi','Admin',39000,08-02-91,'Rajkot'),
		(105,'Rohit','IT',17000,23-07-90,'Jamnagar'),
		(106,'Priya','IT',9000,18-10-90,'Ahmedabad'),
		(107,'Neha','HR',34000,25-12-91,'Rajkot')

--1--
Select MAX(Salary) As Maximum , MIN(Salary) Minimum ,
SUM(Salary) Total_Sal, AVG(Salary) Average_Sal
From Employee

--2--
Select Count(EID) As Total_Emp
From Employee

--3--
Select MAX(Salary) As Max_IT
From Employee
where Department like 'IT'

--4--
Select City, Count(City) As Total_Count
From Employee
Group By City

--5--
Select EName,City,Count(City) As Total_City
From Employee
Group By EName,City

--6--
Select City,Count(City) As City_Total
From Employee
Group By City
Having Count(City)>1

--7--
Select Department,SUM(Salary) As Total_Salary
From Employee
Group By Department  

--8--
Select Avg(Salary) As Avg_Sal
From Employee
Group By Department

--9--
Select City, MIN(Salary) As Min_Sal
From Employee
Where City like 'Ahmedabad'
Group By City

--10--
Select Department,Sum(Salary) As Dep_Sal
From Employee
Where City like 'Rajkot'
Group By Department
Having Sum(Salary)>50000

--11--
Select Count(Eid) As Emp_Raj
From Employee
Where City like 'Rajkot'
Group By City

--12--
Select MAX(Salary)-MIN(Salary) As Sal_Diffrence
From Employee

--13--
Select Count(EID) As Date_Join
From Employee
Group By JoiningDate
Having JoiningDate > 01-01-90

--14--
Select Department, Sum(Salary) As Total_Sal
From Employee
Group By Department
Having SUM(Salary)>35000

--15--
Select Department, Count(EID) As Count_Emp
From Employee
Group By Department
Having COUNT(EID)>2

--16--
Select Min(Salary) As Min_Sal
From Employee
Where City like 'Rajkot'

--17--
Select Count(EID) As Emp_Count
From Employee
Group By City

--18--
Select Department, MIN(Salary) As Min_Sal
From Employee
Group By Department

--19--
Select SUM(Salary) As Total_Sal
From Employee
Group By City

--20--
Select Department, MIN(Salary) As Min_Sal, MAX(Salary) Max_Sal, Sum(Salary) Sum_Sal
From Employee
Group By Department


 
