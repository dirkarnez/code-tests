SELECT COUNT(c.CustomerID) as Count, s.Country as Supplier_Country, s.SupplierName as Supplier_Name
FROM Suppliers s
LEFT JOIN Customers c ON
s.Country = c.Country
GROUP BY s.Country
HAVING COUNT(CustomerID) > -1;