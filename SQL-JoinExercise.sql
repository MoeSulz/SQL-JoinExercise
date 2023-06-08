-- Assessment 1:
SELECT p.productid, p.productname, p.UnitPrice, p.categoryid, c.categoryname
FROM products p
LEFT JOIN categories c ON p.CategoryID = c.CategoryID
ORDER BY c.Categoryname, p.productname;

-- Exercise 2:
SELECT p.productid, p.productname, p.unitprice, s.companyname
FROM products p
LEFT JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75
ORDER BY p.ProductName;

-- Exercise 3:
SELECT p.productID, p.ProductName, p.UnitPrice, c.categoryName, s.companyName
FROM products p
LEFT JOIN suppliers s ON p.SupplierID = s.SupplierID
LEFT JOIN categories c ON p.CategoryID = c.CategoryID
ORDER BY p.ProductName;

-- Exercise 4:
SELECT p.ProductName, c.CategoryName, p.unitprice
FROM products p
LEFT JOIN categories c ON p.CategoryID = c.CategoryID
WHERE unitprice = (SELECT MAX(UnitPrice) FROM products);

-- Exercise 5:
SELECT o.OrderID, o.ShipName, o.ShipAddress, o.ShipCountry, s.companyname
FROM orders o
LEFT JOIN shippers s ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry = "Germany";

-- Exercise 6;
SELECT o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM orders o
JOIN products p ON 