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












  

















