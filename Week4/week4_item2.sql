USE Restaurant;
GO

/** Item 2 Indexes**/
-- A.
--2a Indexes for Charities Table
--Index on CharityName
CREATE NONCLUSTERED INDEX IX_Charities_CharityName
ON Charities(CharityName);

--Index on CharityAddress
CREATE NONCLUSTERED INDEX IX_Charities_CharityAddress
ON Charities(CharityAddress);

--Index on PhoneNum
CREATE NONCLUSTERED INDEX IX_Charities_PhoneNum
ON Charities(PhoneNum);


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
