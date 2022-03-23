--Query1
SELECT ord_date, salesman_id, ord_no, purch_amt
FROM orders;

--Query2
select distinct Salesman_id
from Salesman

--Query3
select Name,City
from Salesman
Where City='Paris'

--Query4
SELECT ord_no, ord_date, purch_amt
FROM orders
WHERE salesman_id=5001;

--Query5
select Customer_id,Cust_name,City,Grade,Salesman_id
from Customer
where City='New York' and Grade>100

--Query6
select Salesman_id,name,City,Commission
from Salesman
where Commission between 0.10 and 0.12

--Query7
Select sum(purch_amt) as 'Total_Amount'
from Orders 

--Query8
Select avg(purch_amt) as 'Avg_Purchase_Amount'
from orders

--Query9
Select count(Salesman_id) as 'NumberOfSalesPerson'
from Salesman

--Query10
Select Customer_id as cust_id, max(purch_amt) as 'MaxPurchase'
from Orders
group by Customer_id

--Query11
Select ord_date as Order_date,max(purch_amt) as 'MaxPurchase'
from Orders 
group by Ord_date
order by Ord_date

--Query12
SELECT salesman_id,MAX(purch_amt) 
FROM orders 
WHERE ord_date = '2012-08-17' 
GROUP BY salesman_id;

--Query13
select Name,Cust_name,Salesman.City
from Salesman,Customer
where Customer.City=Salesman.City

--Query14
Select Ord_no,Purch_amt,Cust_name,City
from Orders o inner join Customer c 
on o.Customer_id=c.Customer_id
where Purch_amt between 500 and 2000

--Query15
SELECT a.cust_name AS "Customer Name", 
a.city, b.name AS "Salesman", b.commission 
FROM customer a 
INNER JOIN salesman b 
ON a.salesman_id=b.salesman_id 
WHERE b.commission>.12;

--Query16
SELECT Cust_name as 'Customer Name',c.City as 'Customer City',Grade,name as 'Salesman Name',s.City as 'Salesman City'
FROM Salesman s inner join Customer c on s.Salesman_id=c.Salesman_id
order by Customer_id asc