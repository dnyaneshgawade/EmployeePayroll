create database EmployeePayRoll

use EmployeePayRoll


CREATE TABLE Employee_Payroll (
  Id int  NOT NULL identity(1,1) primary key,
  Name varchar(150) NOT NULL,
  Salary varchar(20) NOT NULL,
  Start_Date date NOT NULL,
  )


  INSERT INTO Employee_Payroll (Name,Salary,Start_Date)  VALUES ('Dnyanesh','150000','2018-01-03'),('Mark','200000','2019-11-13'),('Charlie','30000','2020-05-21'),('Bobby','150000','2017-01-03'),('Yash','780000','2016-10-15');


  select * from Employee_Payroll

  Select Salary from  Employee_Payroll where Name='Dnyanesh'

  Select Salary from Employee_Payroll where Start_Date between ('2018-01-01') and ('2020-12-31')


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




 ALTER TABLE Employee_Payroll ALTER COLUMN Salary float

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
