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
-- Index on DishID on Recipes.
CREATE NONCLUSTERED INDEX IX_Recipes_DishID
ON Recipes (DishID);

-- Index on DishID on Recipes.
CREATE NONCLUSTERED INDEX IX_Recipes_IngredientID
ON Recipes (IngredientID);

-- D.
/** Item L Indexes: ORDERS **/

--Index on CustID
CREATE NONCLUSTERED INDEX IX_Orders_CustID
	ON Orders(CustID);

--Index on EmployeeID
CREATE NONCLUSTERED INDEX IX_Orders_EmployeeID
	ON Orders(EmployeeID);

--Index on LocationID
CREATE NONCLUSTERED INDEX IX_Orders_LocationID
	ON Orders(LocationID);

-- E.
/** Item P Indexes **/
-- Index on CustID
-- Customers frequently look up, manage, or cancel their own reservations.
CREATE NONCLUSTERED INDEX IX_Reservations_CustID
ON Reservations(CustID);

-- Index on LocationID
-- Reservations are tied to a specific restaurant location.
CREATE NONCLUSTERED INDEX IX_Reservations_LocationID
ON Reservations(LocationID);

-- Index on TablePreference
-- Indexing TablePreference allows fast lookups to check if a preferred
-- table is available or already taken.
CREATE NONCLUSTERED INDEX IX_Reservations_TablePreference
ON Reservations(TablePreference);

-- Index on TableChosen
-- Staff need to quickly see which table was actually assigned to a reservation,
-- especially when a customer cannot get their preferred table.
CREATE NONCLUSTERED INDEX IX_Reservations_TableChosen
ON Reservations(TableChosen);

-- Index on ResDateTime
-- Indexing ResDateTime supports fast range queries and chronological lookups.
CREATE NONCLUSTERED INDEX IX_Reservations_ResDateTime
ON Reservations(ResDateTime);

-- Index on RecurringReservation
-- Indexing this column allows staff to quickly retrieve all recurring bookings
-- for reminders, scheduling, or management purposes.
CREATE NONCLUSTERED INDEX IX_Reservations_RecurringReservation
ON Reservations(RecurringReservation);

-- Index on ReservationStatus
-- Almost every active query will filter by status.
-- Indexing ReservationStatus avoids full table scans when excluding
-- cancelled or inactive reservations.
CREATE NONCLUSTERED INDEX IX_Reservations_ReservationStatus
ON Reservations(ReservationStatus);
