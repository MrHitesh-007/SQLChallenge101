create database sql_practice

use SqlPractice;
create table EmployeeDetails(
								EmpId int not null,
								FullName Varchar(200) not null,
								ManagerId int not null,
								DateOfJoining Date,
								City Varchar(200));
insert into EmployeeDetails values
(121,'John Snow',321,'2019/01/31','Toronto'),
(321,'Walter White',986,'2020/01/30','California'),
(421,'Kuldeep Rana',876,'2021/11/27','New Delhi');

create table EmployeeSalary (
							EmpId int not null,
							Project char(20) not null,
							Salary int not null,
							Variable int
)

insert into EmployeeSalary values
(121,'P1',8000,500),
(321,'P2',10000,1000),
(421,'P1',12000,0);
select * from EmployeeDetails
select * from EmployeeSalary

--Sql Challenges

--Fetch the EmpId and FullName of all the employees working under the Manager with ID - '986'
select EmpId,FullName
from EmployeeDetails
where ManagerId = 986;

--Fetch the different projects available from the EmployeeSalary Table
select distinct project
from EmployeeSalary;

--Fetch the count of employees working in project 'P1'
select count(*)
from EmployeeSalary
where project = 'P1';

--Fetch the maximum,minimum and average salary of the employees
select MAX(salary) as max_salary,
		MIN(salary) as min_salary,
		AVG(Salary) as Avg_salary
from EmployeeSalary;

--Fetch the employee id whose salary lies in the range of 9000 and 15000
select empid
from EmployeeSalary
where Salary between 9000 and 15000;

--Fetch those employees who live in toronto and work under the manager with ManagerId - 321
select *
from EmployeeDetails
where ManagerId = 321 and City = 'toronto';

--Fetch all the employees who either live in california or work under a manager with ManagerID - 321
select *
from EmployeeDetails
where City='California' or ManagerId=321;

--Fetch all those employees who work on projects other than P1
select *
from EmployeeSalary
where Project != 'P1'

--Fetch the total salary of each employee adding the salary with variable value
select *,(salary+variable) as total_salary
from EmployeeSalary

--Fetch the employees whose name begins with any two characters,followed by a text"hn" and ends with the sequence of characters.
select * 
from EmployeeDetails
where FullName like '__hn%';
