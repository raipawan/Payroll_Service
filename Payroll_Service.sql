/*uc1*/
create database Payroll_Service;
USE Payroll_Service;


/*uc2*/
create table employee_payroll
(
id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
NAME VARCHAR(20) NOT NULL,
SALARY INT NOT NULL,
START DATE NOT NULL
);


/*uc3*/
INSERT INTO employee_payroll( name,salary,start) VALUES
('BILL',  100000,'2018-01-03'),
('SMITH', 200000,'2019-10-03'),
('ASH',   300000,'2020-11-03'),
('ALEXA', 400000,'2020-11-03');


/*uc4*/
select * from employee_payroll;



/*uc5*/
SELECT salary FROM employee_payroll WHERE name = 'Bill';

SELECT SALARY FROM employee_payroll WHERE START BETWEEN CAST('2018-01-04'AS DATE) AND GETDATE();


/*uc6*/
alter table employee_payroll add GENDER varchar(20) default  null;

update employee_payroll
set GENDER = 'M' WHERE NAME = 'BILL' OR NAME = 'SMITH';

update employee_payroll
set GENDER ='F' WHERE NAME = 'ASH' OR NAME = 'ALEXA';



/*uc7*/
SELECT AVG(SALARY) FROM employee_payroll
WHERE GENDER = 'M' GROUP BY GENDER;

SELECT COUNT(SALARY) FROM employee_payroll
WHERE GENDER = 'F' GROUP BY GENDER;

SELECT MIN(SALARY) FROM employee_payroll
WHERE GENDER = 'F' GROUP BY GENDER;

SELECT MAX(SALARY) FROM employee_payroll
WHERE GENDER = 'M' GROUP BY GENDER;


/*uc8*/
alter table employee_payroll 
ADD  PHONE varchar(20)  ,
 ADDRESS VARCHAR(150) not null DEFAULT 'jhansi_up', 
  DEPARTMENT VARCHAR(20) ;


    /*uc9*/
alter table employee_payroll 
ADD  Basic_Pay INT  NOT NULL DEFAULT 0,
 Deductions  INT NOT NULL  DEFAULT 0 ,
 Taxable_Pay  INT  NOT NULL DEFAULT 0 ,
 Income_Tax  INT  NOT NULL DEFAULT 0,
 Net_Pay  INT  NOT NULL DEFAULT 0;


  /*uc10*/
   CREATE TABLE Deparmnent (ID INT NOT NULL identity(1,1) FOREIGN KEY  REFERENCES EMPLOYEE_PAYROLL (id),name varchar(20), Dept varchar(50))  

  INSERT INTO Deparmnent(name,Dept) values 
  ('BILL','Sales'),('BILL','Marketing')

   SELECT *  FROM employee_payroll ADDRESS  JOIN Deparmnent PAY
  ON (ADDRESS.NAME = PAY.name)










  

















