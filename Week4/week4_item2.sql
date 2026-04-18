USE Restaurant;
GO

/** Item 2 Indexes**/
-- A.


-- B.
-- Index on DishName on Dishes.
CREATE NONCLUSTERED INDEX IX_Dishes_DishName
ON Dishes (DishName);

-- Index on LocationID on Dishes.
CREATE NONCLUSTERED INDEX IX_Dishes_LocationID
ON Dishes (LocationID);

-- Index on Price on Dishes.
CREATE NONCLUSTERED INDEX IX_Dishes_Price
ON Dishes (Price);

-- C.


-- D.


-- E.
