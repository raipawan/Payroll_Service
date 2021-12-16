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










  

















