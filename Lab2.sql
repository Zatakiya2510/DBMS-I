Create Table Deposite_Bank
(
	ACTNO int,
	CNAME varchar(100),
	BNAME varchar(100),
	AMOUNT varchar(100),
	ADATE datetime,
)
Create Table Branch_Bank
(
	BNAME varchar(100),
	CITY varchar(50),
)
Create Table Coustmer_Bank
(
	CNAME varchar(100),
	CITY varchar(100),
)
Create Table Borrow_Bank
(
	LOANNO int,
	CNAME varchar(100),
	BNAME varchar(100),
	AMOUNT decimal(8,3),
)
Select * From Deposite_Bank

Select * From Borrow_Bank

Select * From Coustmer_Bank

Select ACTNO,CNAME,AMOUNT From Deposite_Bank

Select LOANNO , AMOUNT From Borrow_Bank

Select * From Borrow_Bank
where BNAME like '%Andheri%'

Select ACTNO,AMOUNT From Deposite_Bank
where ACTNO = 106

Select CNAME From Borrow_Bank
where AMOUNT >= 5000

SELECT * FROM Deposite_Bank
WHERE ADATE>'1-12-96'

Select CNAME From Deposite_Bank
where ACTNO < 105

Select * From Coustmer_Bank
where CITY like 'Nagpur' 
or CITY like 'Delhi'



Select CNAME From Borrow_Bank
where AMOUNT is NULL

Select * From Deposite_Bank
where BNAME<>'Andheri'

Select ACTNO,CNAME ,AMOUNT, BNAME From Deposite_Bank
where BNAME='Ajni' or BNAME='Karolbagh' or BNAME='M.G.Road' And ACTNO<104

Select top 5 * From Deposite_Bank

Select top 3  * From Deposite_Bank
where AMOUNT>'1000'

Select top 5 LOANNO , CNAME From Borrow_Bank
where BNAME <> 'Andheri'

Select Distinct CITY From Coustmer_Bank

Select Distinct BNAME From Branch_Bank

Select * From Coustmer_Bank
order by CITY

Select * From Deposite_Bank
order by AMOUNT desc

Select * From Coustmer_Bank
order by CITY desc

Select Distinct CNAME as UNI_Borrows  From Borrow_Bank


--1
Update Deposite_Bank
Set AMOUNT = '5000'
where AMOUNT ='3000'


--2
Update Borrow_Bank
Set BNAME='C.G.Road'
Where BNAME ='Vrce' and CNAME='Anil'


--3
Update Deposite_Bank
Set ACTNO = 111,AMOUNT='5000'
Where CNAME ='Sandip'


--4
Update Borrow_Bank
Set AMOUNT=(AMOUNT*0.10)+AMOUNT

--5
Update Deposite_Bank
Set AMOUNT='5000'
Where ACTNO>103 And ACTNO<107


--6
Update Borrow_Bank
Set Amount=Null
Where LOANNO=321

--7
Update Borrow_Bank
Set LOANNO=401,BNAME='Ajni'
Where LOANNO=201 And BNAME='Vrce'

--8
Update Coustmer_Bank
Set CNAME='Anil Jain'
Where CNAME='Anil'

--9
Update Deposite_Bank
Set CNAME='Ramesh',BNAME='Vrce',AMOUNT='5500'
Where ACTNO=102

--10
Update Borrow_Bank
Set BNAME=null,AMOUNT=null
where LOANNO=481 and CNAME='Kranti'

--1
Delete  From Coustmer_Bank
Where CITY = '%Bombay%'

--2
Delete From Deposite_Bank
Where AMOUNT<='1000'

--3
Delete From Borrow_Bank
Where BNAME = 'Ajni'

--4
Delete From Borrow_Bank
Where LOANNO>201 And LOANNO<210

--5
Delete From Deposite_Bank
Where ADATE>'1996-12-01'

--6
Truncate Table Coustmer_Bank

--7
Delete From Deposite_Bank
Where CNAME='Anil' And ACTNO=101

--8
Delete From Deposite_Bank
Where BNAME <> 'Andheri'

--9
Delete From Borrow_Bank
Where AMOUNT<2000 And BNAME<>'Vrce'

--10
Drop Table Branch_Bank


