Create database Peacock;
USE Peacock;
Create table Revenue(
Date INT,
Source VARCHAR(80),
Amount int);
USE Peacock;
Create table Expenses(
Date INT,
Type VARCHAR(80),
Amount INT);
USE Peacock;
Create table Customer (
ID INT,
Acquistion VARCHAR(80),
Revenue VARCHAR(80));

SELECT YEAR('%Y-%m') AS Month,
   SUM(revenue.amount)-SUM(expenses.amount) AS Profit
   FROM revenue,expenses
   WHERE revenue.date=expenses.date
   GROUP BY Month;
   
SELECT YEAR('%Y-%m') AS Month,
  SUM(amount) AS Burn_Rate
FROM expenses
GROUP BY Month;
   