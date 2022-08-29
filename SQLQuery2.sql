Create database Payrolll_Service1;

use Payrolll_Service1
--UC-2--
create table employee_Payrolll
(
id int identity(1,1) primary key,
name varchar(100) not null,
salary money not null,
start_date date not null
)
select * from employee_Payrolll
--UC-3--
insert into employee_Payrolll values
('Bil', 200000.0,'2018-03-28'),
('Terisa', 400000.0,'2019-05-30'),
('Charlie', 600000.0,'2020-07-09')
select * from employee_Payrolll
--UC-4--
select * from employee_Payrolll

--UC-5--where is used to filter
select salary from employee_Payrolll where name='bil'
select name from employee_Payrolll where start_date between '2018-01-01' and getdate();

--UC-6--Alter/Create/Drop(whenever we want to perform any modications in table )
Alter table employee_Payrolll add gender char(1)
select * from employee_Payrolll
update employee_Payrolll set name='Bil' where id=1
update employee_Payrolll set gender='M' where name='Bil' or name='Charlie';
update employee_Payrolll set gender='F' where name='Terisa';
select count(salary) from employee_Payrolll where gender='M'
select * from employee_Payrolll

--UC-7--
select gender,sum(salary) from employee_Payrolll group by gender;

--UC-8--
Alter table employee_Payrolll add
phone varchar(15),
address varchar(100) default 'India' not null,
department varchar(20) default 'CS' not null
select * from employee_Payrolll

--UC-9--
Alter table employee_payrolll add
basic_pay money,
deductibles money,
taxable_pay money,
Income_tax money,
net_pay money;
select * from employee_Payrolll
--UC-10--
update employee_Payrolll set department='sales' where name='Terisa';

insert into employee_Payrolll values
('Terisa',400000.0,'2019-05-30','F',Null,'Marketing','US',null,null,null,null,null)

select * from employee_Payrolll