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

-- B.


-- C.


-- D.


-- E.
