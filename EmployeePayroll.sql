--UC1

create database EmployeePayRoll

use EmployeePayRoll

--UC2

CREATE TABLE Employee_Payroll (
  Id int  NOT NULL identity(1,1) primary key,
  Name varchar(150) NOT NULL,
  Salary varchar(20) NOT NULL,
  Start_Date date NOT NULL,
  )

  --UC3

  INSERT INTO Employee_Payroll (Name,Salary,Start_Date)  VALUES ('Dnyanesh','150000','2018-01-03'),('Mark','200000','2019-11-13'),('Charlie','30000','2020-05-21'),('Bobby','150000','2017-01-03'),('Yash','780000','2016-10-15');

  --UC4

  select * from Employee_Payroll

  --UC5
  Select Salary from  Employee_Payroll where Name='Dnyanesh'

  --UC6

  Select Salary from Employee_Payroll where Start_Date between ('2018-01-01') and ('2020-12-31')

  --UC7

  alter table Employee_Payroll ADD Gender varchar(5)
  
  INSERT INTO Employee_Payroll (Name,Salary,Start_Date)  VALUES ('Saumya','100000','2019-11-23'),('Rutuja','200000','2021-11-13')
  select * from Employee_Payroll

  Update Employee_Payroll 
  set Gender='M' where name='Dnyanesh' or name='Mark' or name='Charlie' or name='Bobby' or name='Yash'
  Update employee_payroll 
  set Gender='F' where name='Saumya' or name='Rutuja'

  select * From Employee_Payroll

 ALTER TABLE Employee_Payroll ALTER COLUMN Salary int
 select * from Employee_Payroll

 SELECT SUM(Salary) as Total_Salary_Of_All_Female_Employee FROM Employee_Payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT SUM(Salary) as Total_Salary_Of_All_Male_Employee FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender

 SELECT AVG(Salary) as Average_Salary_For_Female_Employee FROM Employee_Payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT AVG(Salary) as Average_Salary_For_Male_Employee FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender

 SELECT MIN(Salary) as Minimum_Salary_Umong_All_Female_Employee FROM Employee_Payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT MIN(Salary) as Minimum_Salary_Umong_All_Male_Employee  FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender

 SELECT MAX(Salary) as Maximum_Salary_Umong_All_Female_Employee FROM Employee_Payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT MAX(Salary) as Maximum_Salary_Umong_All_Male_Employee FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender

 SELECT COUNT(Name) as Total_Count_Of_Female_Employee FROM Employee_Payroll WHERE Gender = 'F' GROUP BY Gender

 SELECT COUNT(Name) as Total_Count_Of_Male_Employee FROM Employee_Payroll WHERE Gender = 'M' GROUP BY Gender




 --UC8

 Select * from Employee_Payroll


 alter table Employee_Payroll Add PhoneNumber float
 alter table Employee_Payroll Add Address varchar(20)
 alter table Employee_Payroll Add Department varchar(20)
 ALTER TABLE Employee_Payroll ALTER COLUMN  Department varchar(20) not null

 Update Employee_Payroll 
  set PhoneNumber=99000000000 ,Address='Pune', Department='Devloper' where name='Dnyanesh'

  Update Employee_Payroll 
  set PhoneNumber=99000000000 ,Address='Mumbai', Department='Hr' where name='Mark'

  Update Employee_Payroll 
  set PhoneNumber=99000000000 ,Address='Goa', Department='Salse' where name='Charlie'

  Update Employee_Payroll 
  set PhoneNumber=99000000000 ,Address='Delhi', Department='Account' where name='Bobby'

  Update Employee_Payroll 
  set PhoneNumber=99000000000 ,Address='Panjab', Department='Devloper' where name='Yash'

  Update Employee_Payroll 
  set PhoneNumber=99000000000 ,Address='Chennai', Department='Hr' where name='Saumya'

  Update Employee_Payroll 
  set PhoneNumber=99000000000 ,Address='Kolhapur', Department='Salse' where name='Rutuja'


  --UC9

  alter table Employee_Payroll Add Basic_Pay float
  alter table Employee_Payroll Add Deductions float
  alter table Employee_Payroll Add Taxable_Pay float
  alter table Employee_Payroll Add Income_Tax float
  alter table Employee_Payroll Add Net_Pay float



 Update Employee_Payroll 
  set Basic_Pay=40000 ,Deductions=5000, Taxable_Pay=2000,Income_Tax=1000,Net_Pay=35000 where name='Dnyanesh'

  Update Employee_Payroll 
  set Basic_Pay=35000 ,Deductions=4500, Taxable_Pay=1500,Income_Tax=1000,Net_Pay=30500 where name='Mark'

  Update Employee_Payroll 
  set Basic_Pay=30000,Deductions=4000, Taxable_Pay=1500,Income_Tax=900,Net_Pay=26000 where name='Charlie'

  Update Employee_Payroll 
  set Basic_Pay=45000,Deductions=8000, Taxable_Pay=3000,Income_Tax=1300,Net_Pay=37000 where name='Bobby'

  Update Employee_Payroll 
  set Basic_Pay=50000 ,Deductions=10000, Taxable_Pay=5000,Income_Tax=2000,Net_Pay=40000 where name='Yash'

  Update Employee_Payroll 
  set Basic_Pay=55000 ,Deductions=12000, Taxable_Pay=7000,Income_Tax=4000,Net_Pay=43000 where name='Saumya'

  Update Employee_Payroll 
  set Basic_Pay=30000,Deductions=4000, Taxable_Pay=1500,Income_Tax=900,Net_Pay=26000 where name='Rutuja'

  alter table Employee_Payroll drop column Salary
  select * from Employee_Payroll


  --UC10

  insert into Employee_Payroll(Name,PhoneNumber,Address,Department,Gender,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay,Start_Date)
  values
  ('Terissa',7878787878,'Mumbai','Salse','F',50000,10000,5000,2000,40000,'2018-12-10')


  insert into Employee_Payroll(Name,PhoneNumber,Address,Department,Gender,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay,Start_Date)
  values
  ('Terissa',9898989898,'Goa','Marketing','F',55000,10000,5000,2000,45000,'2021-02-01')

  select * from Employee_Payroll where Name='Terissa'

  Update Employee_Payroll 
  set Basic_Pay=30000,Deductions=4000, Taxable_Pay=1500,Income_Tax=900,Net_Pay=26000 where name='Terissa'

  Update Employee_Payroll 
  set Basic_Pay=50000 ,Deductions=10000, Taxable_Pay=7000,Income_Tax=4000,Net_Pay=40000 where Id=8



  
create table EmpDetails
  (
		EmpId int identity(1,1) primary key,
		Name varchar(20) not null,
		Phone_Number float not null,
		Address varchar(20) not null,
		Joining_date date not null,
		Dept_id int not null
  )
  alter table EmpDetails add GenderId int not null 

  create table SalaryDetails
  (
		Sal_Id int identity(1,1) primary key,
		Emp_Id int ,
		Basic_pay float not null,
		Deduction float not null,
		Taxable_Pay float not null,
		Income_Tax float not null,
		Net_Pay float not null,
  )
  

  create table DeptDetails
  (
		DeptId int identity(1,1) primary key,
		Department_name varchar(20) not null,
  )

  create table GenderInfo
  (
		GenderId int identity(1,1) primary Key,
		Gender varchar(10) not null
  )

  ALTER TABLE EmpDetails
  ADD FOREIGN KEY (Dept_Id) 
  REFERENCES DeptDetails(DeptId);

  ALTER TABLE EmpDetails
  ADD FOREIGN KEY (GenderId) 
  REFERENCES GenderInfo(GenderId)

  INSERT INTO EmpDetails(Name,Phone_Number,Address,Joining_Date,Dept_Id,GenderId)  
  VALUES 
  ('Dnyanesh',7878787878,'Pune','2018-01-03',1,'1'),
  ('Mark',9898989898,'Goa','2019-11-13',2,'1'),
  ('Charlie',9999999999,'Mumbai','2020-05-21',3,'1'),
  ('Bobby',8888888888,'Chennai','2017-01-03',4,'1'),
  ('Yash',7777777777,'Delhi','2016-10-15',1,'1'),
  ('Saumya',8888880000,'Kolkata','2017-01-03',4,'2'),
  ('Rutuja',7777770000,'Panjab','2016-10-15',1,'2'),
  ('Terissa',8989890000,'Keral','2017-01-03',2,'2'),
  ('Terissa',7878780000,'Bangal','2016-10-15',3,'2')


  INSERT INTO DeptDetails (Department_name)
  VALUES
  ('Developer'),
  ('Salse'),
  ('Marketing'),
  ('Hr')

  INSERT INTO SalaryDetails (Emp_Id,Basic_pay,Deduction,Taxable_Pay,Income_Tax,Net_Pay)
  VALUES
  (10,50000,12000,6000,4000,38000)

  (1,30000,5000,2000,1000,25000),
  (2,35000,7000,3000,2000,27000),
  (3,28000,4000,2000,1000,24000),
  (4,40000,8000,4000,3000,32000),
  (5,44000,10000,5000,4000,34000),
  (6,33000,5000,2000,1500,28000),
  (7,37000,5000,3000,1000,32000),
  (8,45000,10000,5000,3000,35000),
  (9,50000,12000,6000,4000,38000),
  (10,50000,12000,6000,4000,38000)


  INSERT INTO GenderInfo (Gender)
  VALUES
  ('Male'),
  ('Female')


  ALTER TABLE SalaryDetails
  ADD FOREIGN KEY (Emp_Id) 
  REFERENCES EmpDetails(EmpId)

  select * From EmpDetails
  select * From SalaryDetails

  truncate table SalaryDetails



--UC11


SELECT SUM(SalaryDetails.Basic_pay)
FROM SalaryDetails
JOIN EmpDetails
ON EmpDetails.EmpId = SalaryDetails.Emp_Id
GROUP BY EmpDetails.GenderId

SELECT MIN(SalaryDetails.Basic_pay)
FROM SalaryDetails
JOIN EmpDetails
ON EmpDetails.EmpId = SalaryDetails.Emp_Id
GROUP BY EmpDetails.GenderId

SELECT MAX(SalaryDetails.Basic_pay)
FROM SalaryDetails
JOIN EmpDetails
ON EmpDetails.EmpId = SalaryDetails.Emp_Id
GROUP BY EmpDetails.GenderId

SELECT AVG(SalaryDetails.Basic_pay)
FROM SalaryDetails
JOIN EmpDetails
ON EmpDetails.EmpId = SalaryDetails.Emp_Id
GROUP BY EmpDetails.GenderId

SELECT COUNT(SalaryDetails.Basic_pay)
FROM SalaryDetails
JOIN EmpDetails
ON EmpDetails.EmpId = SalaryDetails.Emp_Id
GROUP BY EmpDetails.GenderId



--UC12

SELECT * FROM EmpDetails
SELECT * FROM SalaryDetails
SELECT * FROM GenderInfo
SELECT * FROM DeptDetails


SELECT * FROM EmpDetails e, SalaryDetails s,GenderInfo g,DeptDetails d where e.EmpId=Emp_Id and e.GenderId=g.GenderId and e.Dept_id=d.DeptId


