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

