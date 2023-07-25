create database  assignment;

use  assignment ;

create table  Student

(
rollno int auto_increment primary key,
name1 varchar ( 50) not null,
branch varchar (100)not null

);

insert into Student (name1,branch)

values ('jay','computer science'),
('suhani', 'electronic and com'),
('kriti', 'electronic and com');

create table  Exam 

(
rollno int ,
s_code varchar (50),
marks int (50),
p_code varchar(30),

FOREIGN KEY (rollno) REFERENCES Student (rollno)

);


insert into Exam

(rollno,s_code,marks,p_code)

values (1,'cs11',50,'cs'),
(1,'cs12',60,'cs'),
(2,'ec101',66,'ec'),
(2,'ec102',70,'ec'),
(3,'ec101',45,'ec'),
(3,'ec102',50,'ec');

select * from Student;

select * from Exam;


 