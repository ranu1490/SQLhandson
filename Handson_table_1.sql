create database handson
use handson

create table Salesman(
		Salesman_id numeric(5,0) primary key,
		name varchar(30),
		City varchar(15),
		Commission decimal(5,2)
)
drop table Salesman

insert into Salesman values (5001,'James Hoog','New York',0.15)
insert into Salesman values (5002,'Nail Knite','Paris',0.13)
insert into Salesman values (5005,'Pit Alex','London',0.11)
insert into Salesman values (5006,'Mc Lyon','Paris',0.14)
insert into Salesman values (5007,'Paul Adam','Rome',0.13)
insert into Salesman values (5003,'Lauson Hen','San Jose',0.12)

select * from Salesman

create table Customer(
		Customer_id numeric(5,0) primary key,
		Cust_name varchar(30),
		City varchar(15),
		Grade numeric(3,0),
		Salesman_id numeric(5,0) references Salesman(Salesman_id)
	)

drop table Customer 

insert into Customer values(3002,'Nick Rimando','New York',100,5001)
insert into Customer values(3007,'Brad Davis','New York',200,5001)
insert into Customer values(3005,'Graham Zusi','California',200,5002)
insert into Customer values(3008,'Julian Green','London',300,5002)
insert into Customer values(3004,'Fabian Johnson','Paris',300,5006)
insert into Customer values(3009,'Geoff Cameron','Berlin',100,5003)
insert into Customer values(3003,'Jozy Altidor','Moscow',200,5007)
insert into Customer values(3001,'Brad Guzan','London',100,5005)

select * from Customer

create table Orders(
		Ord_no numeric(5) primary key,
		Purch_amt decimal(8,2),
		Ord_date date,
		Customer_id numeric(5) references Customer(Customer_id),
		Salesman_id numeric(5) references Salesman(Salesman_id)
		)

insert into Orders values(70001,150.5,'2012-10-05',3005,5002)
insert into Orders values(70009,270.65,'2012-09-10',3001,5005)
insert into Orders values(70002,65.26,'2012-10-05',3002,5001)
insert into Orders values(70004,110.5,'2012-08-17',3009,5003)
insert into Orders values(70007,948.5,'2012-09-10',3005,5002)
insert into Orders values(70005,2400.6,'2012-07-27',3007,5001)
insert into Orders values(70008,5760,'2012-09-10',3002,5001)
insert into Orders values(70010,1983.43,'2012-10-10',3004,5006)
insert into Orders values(70003,2480.4,'2012-10-10',3009,5003)
insert into Orders values(70012,250.45,'2012-06-27',3008,5002)
insert into Orders values(70011,75.29,'2012-08-17',3003,5007)
insert into Orders values(70013,3045.6,'2012-04-25',3002,5001)


select * from Orders


