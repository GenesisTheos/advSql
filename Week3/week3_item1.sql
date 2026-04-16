USE Restaurant;
GO

/* 
	Item A : Salary for each chef.
*/
DROP FUNCTION IF EXISTS  dbo.GetChefSalary;
GO

CREATE FUNCTION dbo.GetChefSalary()
RETURNS TABLE
AS
RETURN
(
	SELECT 
		ChefID, 
		c.EmployeeID, 
		FORMAT(HourlyRate, 'C2', 'EN-GB') AS HourlyRate,
		FORMAT(HourlyRate * 40 * 52, 'C2', 'EN-GB') AS Salary
	FROM Chefs c
	INNER JOIN Employees e
		ON e.EmployeeID = c.EmployeeID
);
GO


SELECT * FROM dbo.GetChefSalary()


/* 
	Item B: details for each kitchen.
*/
DROP FUNCTION IF EXISTS  dbo.GetKitchenDetails;
GO

CREATE FUNCTION dbo.GetKitchenDetails(@KitchenID int)
RETURNS TABLE 
AS
RETURN
(
	SELECT 
		KitchenID, 
		LocationID, 
		NumStoves, 
		HeadChef, 
		SousChef, 
		MinNumCooks
	FROM KitchenDetails
	WHERE @KitchenID = KitchenID
);
GO


SELECT * FROM dbo.GetKitchenDetails(1)
SELECT * FROM dbo.GetKitchenDetails(2)


/* 
	Item C: Selecting those colums from the "DISHES" table.
*/
DROP FUNCTION IF EXISTS dbo.fn_MenuPrice;
GO

CREATE FUNCTION dbo.fn_MenuPrice()
RETURNS TABLE 
AS 
RETURN
(
	SELECT 
		DishName AS [Menu Price], 
		FORMAT(Price, 'C2', 'EN-GB') AS Price
	FROM Dishes
);
GO

-- Testing
SELECT *
FROM dbo.fn_MenuPrice()

/* 
	Item D : Shows subtotals per channel + overall grand total.
*/
DROP FUNCTION IF EXISTS dbo.fn_OrderDistribution;
GO


CREATE FUNCTION dbo.fn_OrderDistribution()
RETURNS TABLE
AS
RETURN
(
    SELECT
        COALESCE(OrderType, 'All Channels') AS OrderType,
        SUM(OrderTotal) AS total_amount,
        COUNT(*)        AS order_count
    FROM dbo.Orders
    GROUP BY GROUPING SETS (
        (OrderType),
        ()  -- Grand total across all order types
    )
);
GO

SELECT *
FROM dbo.fn_OrderDistribution()
	
/* 
	Item E: Returns a count of patrons who revieced their favorite table vs those who did not.
*/

-- Drops the function if it already ecists before recrating it.
DROP FUNCTION IF EXISTS dbo.fn_FavoriteTable;
GO

CREATE FUNCTION dbo.fn_FavoriteTable()
RETURNS TABLE 
AS 
RETURN
(
	SELECT 
		CASE WHEN TableChosen = TablePreference
		THEN 'YES'
		ELSE 'NO'
	END AS GotFavoriteTable,
	COUNT(*) AS PatronCount

	FROM Reservations
	GROUP BY 
		CASE WHEN TableChosen = TablePreference
		THEN 'YES'
		ELSE 'NO'
		END
);
GO

-- Test
SELECT * 
FROM dbo.fn_FavoriteTable()

