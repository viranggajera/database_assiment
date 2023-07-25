	create database q3;
    
    use q3;
    
    create table   Salesperson
    (
    pksno int (50),
    sname varchar (50),
    city  varchar (50),
    comm int (50)
    );
    
    insert into Salesperson(pksno,sname,city,comm)
    
    values (1001,'peel','london',12),
    (1002,'serres','san jose',13),
    (1004,'motika', 'london',11),
    (1007,'rafkin','barcelona',15),
    (1003,'axelroad','new york',1);
    
    create table Customer
    
    (
    pkcnm int (50),
    cname varchar (50),
    city varchar (50),
    rating int (50),
    sksno int (50)
    );
    
    insert into Customer (pkcnm, cname,city,rating,sksno)
    
    values (201,'hoffman','london',100,1001),
    (202,'giovanne','roe',200,1003),
    (203,'liu','san jose',300,1002),
    (204,'grass','barcelona',100,1002),
    (206,'clemens','london',300,1007),
    (207,'pereira','london',300,1004);
    
    select * from Salesperson where  pksno > 1000 ;
    
   SELECT sname, city FROM Salesperson WHERE city = 'London' AND comm >= 12;
   
   SELECT * FROM salesperson WHERE city IN ('Barcelona', 'London');
   
   SELECT * FROM salesperson WHERE comm > 10 AND comm < 12;
   
   SELECT * FROM Customer WHERE (rating > 100 OR city = 'Roe');

   


