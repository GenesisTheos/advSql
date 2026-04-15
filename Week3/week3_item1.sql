USE Restaurant;
GO

/* 
	Item A 
*/
	--A Salary for each chef
CREATE FUNCTION dbo.GetChefSalary()
RETURNS TABLE
AS
RETURN
(
	SELECT ChefID, c.EmployeeID, FORMAT(HourlyRate, 'C2', 'EN-GB') AS HourlyRate, FORMAT(HourlyRate * 40 * 52, 'C2', 'EN-GB') AS Salary
	FROM Chefs c
	INNER JOIN Employees e
		ON e.EmployeeID = c.EmployeeID
)

SELECT * FROM dbo.GetChefSalary()


/* 
	Item B
*/
	--B details for each kitchen
CREATE FUNCTION dbo.GetKitchenDetails(@KitchenID int)
RETURNS TABLE 
AS
RETURN
(
	SELECT KitchenID, LocationID, NumStoves, HeadChef, SousChef, MinNumCooks
	FROM KitchenDetails
	WHERE @KitchenID = KitchenID
)

SELECT * FROM dbo.GetKitchenDetails(1)
SELECT * FROM dbo.GetKitchenDetails(2)


/* 
	Item C 
*/


/* 
	Item D 
*/


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

