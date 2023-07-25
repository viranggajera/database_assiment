create  database assignment2;

use assignment2;

create table Employee 

(
 employeeid int primary key auto_increment,
 firstname varchar (50),
 lastname varchar (50),
 salary bigint ,
 joiningdate varchar (50) ,
 department varchar (50)
);



insert into Employee (firstname,lastname,salary, joiningdate,department)

values ('john','abraham',1000000,'01-jan-13 12:00:00 am','banking'),
('micheal','cleark',800000,'01-jan-13 12:00:00 am','insurance'),
('roy','thomas',700000,'01-feb-13 12:00:00 am','banking'),
('tom','jose',600000,'01-feb-13 12:00:00 am','insurance'),
('jerry','pinto',650000,'01-feb-13 12:00:00 am','insurance'),
('philip','mathew',750000,'01-jan-13 12:00:00 am','services'),
('testname1','123',650000,'01-jan-13 12:00:00 am','services'),
('testname2','lname%',600000,'01-feb-13 12:00:00 am','insurance');

create table IncentiveTable
(
 employeeid int,
 incentivedate varchar(50),
 incentiveamount int (50)
);

insert into IncentiveTable
(employeeid,incentivedate,incentiveamount)

values (1,'01-feb-13',5000),
(2,'01-feb-13',3000),
(3,'01-feb-13',4000),
(1,'01-jan-13',4500),
(2,'01-jan-13',3500);


SELECT firstname 'tom' FROM Employee ;

select firstname,salary,joiningdate  from Employee ;

select * from Employee order by firstname asc;

select * from Employee order by salary desc;

select * from Employee where firstname like 'j%';

 select max(salary) from  Employee order by salary asc;
 
 SELECT department , MAX(salary) 
FROM Employee GROUP BY department ORDER BY salary ASC;

sELECT firstname,incentiveamount 
FROM Employee A 
INNER JOIN IncentiveTable B 
  ON A.employeeid=B.employeeid
AND incentiveamount >3000;

create trigger paras
after delete on Employee 
for each row 
insert into backup values(old.employeeid,old.firstname,old.lastname,old.salary,old.joiningdate,old.department);

drop trigger paras;


