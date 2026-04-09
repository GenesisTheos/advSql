USE Restaurant;
GO

SELECT 'Locations'     AS TableName, COUNT(*) AS Records FROM Locations
UNION ALL
SELECT 'Employees',      COUNT(*) FROM Employees
UNION ALL
SELECT 'Supplier',       COUNT(*) FROM Supplier
UNION ALL
SELECT 'Chefs',          COUNT(*) FROM Chefs
UNION ALL
SELECT 'ChefLocations',  COUNT(*) FROM ChefLocations
UNION ALL
SELECT 'Tables',         COUNT(*) FROM Tables
UNION ALL
SELECT 'Charities',      COUNT(*) FROM Charities
UNION ALL
SELECT 'Dishes',         COUNT(*) FROM Dishes
UNION ALL
SELECT 'Ingredients',    COUNT(*) FROM Ingredients
UNION ALL
SELECT 'Recipes',        COUNT(*) FROM Recipes
UNION ALL
SELECT 'Customers',      COUNT(*) FROM Customers
UNION ALL
SELECT 'Orders',         COUNT(*) FROM Orders
UNION ALL
SELECT 'Reservations',   COUNT(*) FROM Reservations
UNION ALL
SELECT 'KitchenDetails', COUNT(*) FROM KitchenDetails;
