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
CREATE PROC spN_InsertCustomers
(
    @CustFName VARCHAR(50),
    @CustLName VARCHAR(50),
    @PhoneNum  VARCHAR(20),
    @Email     VARCHAR(100),
    @Age       INT
)
AS
BEGIN
    INSERT INTO Customers (CustFName, CustLName, PhoneNum, Email, Age)
    VALUES (@CustFName, @CustLName, @PhoneNum, @Email, @Age)

    SELECT CustFName + ' ' + CustLName AS CustomerName, PhoneNum, Email, Age
    FROM Customers
    WHERE PhoneNum = @PhoneNum
END;
GO
EXEC spN_InsertCustomers 'Liam', 'Murphy', '0851234567', 'liam.murphy@gmail.com', 34

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
	SELECT DishID, DishName, Description, Format(Price, 'C2', 'EN-GB') AS DishPrice
	FROM Dishes
	WHERE Price < @ChosenPrice and @CurrentlyActive = 1
END;

EXEC spN_GetDishes 18.99, 1

-- B.
CREATE PROC spN_InsertDishes
(
    @LocationID  INT,
    @DishName    VARCHAR(100),
    @Description VARCHAR(255),
    @Price       DECIMAL(5,2),
    @Active      BIT
)
AS
BEGIN
    INSERT INTO Dishes (LocationID, DishName, Description, Price, Active)
    VALUES (@LocationID, @DishName, @Description, @Price, @Active)

    SELECT DishName, Description, FORMAT(Price, 'C2', 'EN-GB') AS Price, Active
    FROM Dishes
    WHERE DishName = @DishName
END;
GO
EXEC spN_InsertDishes 1, 'Beef Stew', 'Traditional Irish beef stew', 14.99, 1

-- C.


-- D.


-- E.


-- F.


-- G.
