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