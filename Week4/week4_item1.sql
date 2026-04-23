USE Restaurant;
GO

/** Item 1 5 Stored Procs **/
-- A.
--1a creates a stored proc to get the chefs who have a preferred vendor and the cost of those ingredients from the vendor
CREATE PROC spN_ChefDetails
AS
BEGIN
	SELECT ChefID, IngredientName, i.SupplierID, FORMAT(i.IngredientPrice, 'C2', 'EN-GB') AS Price
	FROM Chefs c
	INNER JOIN Supplier s
		ON c.PreferredSupplier = s.SupplierID
	INNER JOIN Ingredients i
		ON i.SupplierID = s.SupplierID
	WHERE C.PreferredSupplier IS NOT NULL
	ORDER BY ChefID
END;

EXECUTE spN_ChefDetails;

-- B. Returns recipe items with the total ingredient cost per dish.
IF OBJECT_ID('spN_GetRecipeDetails') IS NOT NULL
	DROP PROCEDURE spN_GetRecipeDetails;
GO
CREATE PROCEDURE spN_GetRecipeDetails 
AS
BEGIN 
	SELECT DISTINCT
		d.DishName, 
		i.IngredientName,
		r.IngredientQuantity,
		r.Unit, 
		-- Sums ingredients cost per dish (quanity/ 100 * unit price).
		FORMAT(
				SUM((r.IngredientQuantity/100) * i.IngredientUnitPrice) 
				OVER(PARTITION BY r.DishID), 'C2' , 'EN-GB'
			) AS [Total Recipe Cost]
	FROM Recipes r
	JOIN Ingredients i ON r.IngredientID = i.IngredientID
	JOIN Dishes d ON r.DishID = d.DishID 
	ORDER BY d.DishName, i.IngredientName;
END
GO

EXEC spN_GetRecipeDetails;

-- C.
CREATE PROC spN_RecipeDetails
AS
BEGIN
    SELECT 
        r.RecipeID,
        r.DishID,
        d.DishName,
        d.Description,
        r.IngredientID,
        i.IngredientName,
        r.IngredientQuantity,
        r.Unit,
        FORMAT(d.Price, 'C2', 'EN-GB') AS Price
    FROM Recipes r
        INNER JOIN Ingredients i
            ON r.IngredientID = i.IngredientID
        INNER JOIN Dishes d
            ON r.DishID = d.DishID
    ORDER BY d.DishName, i.IngredientName
END;
GO
EXECUTE spN_RecipeDetails;

-- D.
CREATE PROC spN_KitchenDetails
   -- pass a ChefID for a specific chef
   @ChefID INT = NULL  
AS
BEGIN
    SELECT
        kd.KitchenID,
        kd.NumStoves,
        kd.MinNumCooks,
        l.LocationID,
        l.Address,
        l.PostTown,
        l.County,
        l.EIRCode,
        kd.HeadChef,
        kd.SousChef,
        c.ChefID,
        cl.EmployeeID,
        cl.ChefPosition,
        FORMAT(d.Price, 'C2', 'EN-GB') AS Price
    FROM KitchenDetails kd
    -- Join to get location details, chef details, and dish prices for each kitchen
        INNER JOIN Locations l
            ON kd.LocationID = l.LocationID
        INNER JOIN ChefLocations cl
            ON cl.LocationID = l.LocationID
        INNER JOIN Chefs c
            ON c.EmployeeID = cl.EmployeeID
        INNER JOIN Dishes d
            ON d.LocationID = l.LocationID
    WHERE (@ChefID IS NULL OR c.ChefID = @ChefID)
    ORDER BY kd.KitchenID, c.ChefID
END;
GO

-- All records
EXECUTE spN_KitchenDetails;

-- Specific chef
EXECUTE spN_KitchenDetails @ChefID = 1;

-- E.
