USE Restaurant;
GO

/** Item 3 TWO TABLES Stored Procs**/
-- FOR TABLE 1
-- A.
--3a Select for Customers Table to get the customer full name and other misc info based on phone number
CREATE PROC spN_GetCustomers
(
	@Phone varchar(20)
)
AS
BEGIN
	SELECT CustFName + ' ' + CustLName AS CustomerName, PhoneNum, Email, Age
	FROM Customers
	WHERE @Phone = PhoneNum
END;

EXEC spN_GetCustomers '0863456789'

-- B.


-- C.


-- D.


-- E.


-- F.


-- G.


-- FOR TABLE 2
-- A.
--Select for Dishes Table to find all active dishes below a certain price point
CREATE PROC spN_GetDishes
(
	@ChosenPrice decimal(5,2),
	@CurrentlyActive bit
)
AS
BEGIN
	SELECT DishID, DishName, Description, Price
	FROM Dishes
	WHERE Price < @ChosenPrice and @CurrentlyActive = 1
END;

EXEC spN_GetDishes 18.99, 1

-- B.


-- C.


-- D.


-- E.


-- F.


-- G.
