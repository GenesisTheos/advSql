USE Restaurant;
GO

-- FOR TABLE 1:
-- A. SELECT
--3a Select for Customers Table to get the customer full name and other misc info based on phone number
IF OBJECT_ID('spN_GetCustomers') IS NOT NULL
	DROP PROC spN_GetCustomers;
GO

CREATE PROC spN_GetCustomers
(
	@Phone varchar(20)
)
AS
BEGIN
	SELECT CustFName + ' ' + CustLName AS CustomerName, PhoneNum, Email, Age
	FROM Customers
	WHERE @Phone = PhoneNum
END
GO

EXEC spN_GetCustomers '0863456789'



-- B. INSERT
IF OBJECT_ID('spN_InsertCustomers') IS NOT NULL
	DROP PROC spN_InsertCustomers;
GO

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
END
GO
EXEC spN_InsertCustomers 'Liam', 'Murphy', '0851234567', 'liam.murphy@gmail.com', 34



-- C. UPDATE
IF OBJECT_ID('spN_UpdateCustomer') IS NOT NULL
	DROP PROC spN_UpdateCustomer;
GO

CREATE PROC spN_UpdateCustomer
	@CustID INT,
	@PhoneNum VARCHAR(20),
	@Email VARCHAR(20),
	@FavoriteDish INT
AS 
BEGIN
	UPDATE Customers
	SET 
		PhoneNum = @PhoneNum,
		Email = @Email,
		FavoriteDish = @FavoriteDish
	WHERE CustId = @CustID;

	SELECT 
		CustID,
		PhoneNum,
		Email,
		FavoriteDish
	FROM Customers
	WHERE CustId = @CustID;
END
GO

EXEC spN_UpdateCustomer 1, '0812345678', 'emaple@gmail.com', 2;



-- D. DELETE



-- FOR TABLE 2
-- A. SELECT
--Select for Dishes Table to find all active dishes below a certain price point
IF OBJECT_ID('spN_GetDishes') IS NOT NULL
	DROP PROC spN_GetDishes;
GO

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
END
GO

EXEC spN_GetDishes 18.99, 1



-- B. INSERT
IF OBJECT_ID('spN_InsertDishes') IS NOT NULL
	DROP PROC spN_InsertDishes;
GO

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
END
GO
EXEC spN_InsertDishes 1, 'Beef Stew', 'Traditional Irish beef stew', 14.99, 1



-- C. UPDATE
IF OBJECT_ID('spN_UpdateDishes') IS NOT NULL
	DROP PROC spN_UpdateDishes;
GO

CREATE PROC spN_UpdateDishes
	@DishID INT,
	@DishName VARCHAR(150),
	@Price DECIMAL(5,1),
	@Active BIT
AS 
BEGIN
	UPDATE Dishes
	SET 
		DishName = @DishName,
		Price = @Price,
		Active = @Active
	WHERE DishId = @DishID;

	SELECT 
		DishName,
		Price,
		Active
	FROM Dishes
	WHERE DishId = @DishID;
END
GO

-- Test.
EXEC spN_UpdateDishes 1, 'Grill Cheese', 18.99 , 1;

-- D. DELETE
