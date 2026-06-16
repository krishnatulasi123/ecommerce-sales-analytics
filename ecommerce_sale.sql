-- Total Revenue
SELECT SUM(Revenue) AS Total_Revenue
FROM Orders;

-- Top 10 Products
SELECT Description,
       SUM(Revenue) AS Revenue
FROM Orders
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;

-- Revenue by Country
SELECT Country,
       SUM(Revenue) AS Revenue
FROM Orders
GROUP BY Country
ORDER BY Revenue DESC;

-- Revenue by CustomerID
SELECT CustomerID,
       SUM(Revenue) AS Revenue
FROM Orders
GROUP BY CustomerID
ORDER BY Revenue DESC;