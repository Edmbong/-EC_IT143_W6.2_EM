

--The number of product with productID 348 -From Tad Dastrup (Marginal complex)
Select productID, name
from production.product
where ProductID = 348;

--How many sales orders were placed in the month of August? from JOHN DAPAY SAVAGE (Marginal Complexity)
select sum(OrderQty)
from sales.SalesOrderDetail
where ModifiedDate between '2013-08-01' and '2013-08-31';



/* Please pull a list of the names and birthdays of our employees for the month of 
October so we can send out happy birthday emails?
From Kurtiss Johnson (Moderate complexity)*/
select NationalIDNumber, JobTitle, VacationHours, Month(BirthDate) AS BirthMonth 
from HumanResources.Employee
where month(birthdate) = 8;

 /*Business User question - Moderate complexity: There is a handful of products produced by the company. Which product has generated the 
  highest order in the last six months and what revenue has it generated to the company?
  From My Questions*/
select top 1 OrderQty
From(
select top 10 OrderQty from Sales.SalesOrderDetail
order by OrderQty desc 
  )result
  order by OrderQty desc;
  select productID
  from Sales.SalesOrderDetail
  where OrderQty = 44;
  select name
  from Production.Product
  where ProductID = 863;

  

/* I need to understand more about our Sales Production. Specifically, about the products that have 
never been ordered in the Sales.SalesOrderDetail table. Can you create a list of these products? 
I want the products name, standard cost, and sales price
From Talafua Seumanu* ( Business User question - Increased complexity)*/
 select unitPrice, SalesOrderDetailID, SalesOrderID, OrderQty
 from Sales.SalesOrderDetail
 where OrderQty = 0;

 /*Looking at the different territories, what their strengths and weaknesses looking at their 
 performances by the number of products sold per territory. Which are the top 3 performing 
 and the least 3 performing? List the members of these territories by employee ID.
 My Question (Increased complexity)
 */
 select top 3 salesYTD as Top3, name
 from sales.SalesTerritory
 order by SalesYTD desc
 select top 3 salesYTD as Buttom3, name
 from sales.SalesTerritory
 order by SalesYTD Asc;
 


/* Can you create a list of tables that contain addresses? (Metadata question by Ethan Wirick)*/
select AddressID, AddressLine1, City
from Person.Address
left join Person.AddressType
on person.Address.AddressID = person.AddressType.AddressTypeID;

 /*(Metadata question): Can you create a list of tables that contain a column with the name
 Currency Codes and Currency Rate? From Kurtiss Johnson*/ 

Select Name, CurrencyCode
from Sales.Currency
select ToCurrencyCode, AverageRate AS CurrencyRate
from sales.CurrencyRate;




/* Business User question - Moderate complexity: Among the top 10 highest-selling 
products in terms of revenue in the year 2023, which product generated the most sales? 
Table [Sales].[SalesTaxRate] from Bataung Mochaki */

select top 1 taxrate
From(
select top 10 taxrate from Sales.SalesTaxRate
order by TaxRate desc 
  )result
  order by TaxRate desc;
  select * from [Sales].[SalesTaxRate];
  

 