use handson

--Query1
select * 
from Orders
where Salesman_id in (Select Salesman_id from Salesman where name='Paul Adam')

--Query2
select *
from Orders
where Salesman_id in (select Salesman_id from Salesman where City='London')

--Query3
select *
from Orders
where Customer_id in (select Customer_id from Customer where Customer_id=3007)

--Query4
select *
from Orders
where Purch_amt>(select avg(Purch_amt) as 'Avg_Purch' from Orders Where Ord_date='2012-10-10')

--Query5
select *
from Orders
where Salesman_id in (select Salesman_id from Salesman where City='New York')

--Query6
select Salesman_id,name
from Salesman a
where 1<(Select count(*) from Customer where Salesman_id=a.Salesman_id)

--Query7
select *
From Orders
where Purch_amt>(Select avg(Purch_amt) from Orders)

--Query8
select ord_date, sum(Purch_amt)
From Orders a
Group by Ord_date
having sum(purch_amt)>(select 1000.00 + max(Purch_amt) from Orders b where a.Ord_date=b.Ord_date)

--Query9
select *
From Customer
where City in(select city from Customer where City='London')

--Query10
select Salesman_id,name,City,Commission
from Salesman a
where 1<(select count(*) from Customer b where a.Salesman_id=b.Salesman_id)