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

IF OBJECT_ID('spN_DeleteCustomer') IS NOT NULL
	DROP PROC spN_DeleteCustomer;
GO

CREATE PROC spN_DeleteCustomer 
	@CustID int
AS
BEGIN 
	IF EXISTS (SELECT * FROM Customers c WHERE c.CustID=@CustID)
	BEGIN

	--Deleting the records of that @CustID in other tablets first
	--Where the customer is a Foreing Key
	--FROM ORDERS
	DELETE FROM Orders
	OUTPUT deleted.* --To show the rows deleted 
	WHERE CustID = @CustID

	--FROM RESERVATIONS 
	DELETE FROM Reservations
	OUTPUT deleted.*
	WHERE CustID =  @CustID

	--Deliting The customer from the Customer table 
	DELETE FROM Customers
	OUTPUT deleted.*
	WHERE CustID = @CustID
	END;
	ELSE
	THROW 50006, 'The specified CustID value does not exists in the Customer Table.',1;
END
GO 
EXECUTE spN_DeleteCustomer @CustID = 100;








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
DROP PROC IF EXISTS spN_InsertDishes;
GO

CREATE PROC spN_InsertDishes
(
    @LocationID  INT,
    @DishName    VARCHAR(100),
    --Required to have a description of the dish, but can be left blank if not available, just bc it can't be null
    @Description VARCHAR(255),   
    @Price       DECIMAL(5,2),
    @Active      BIT
)
AS
BEGIN
    INSERT INTO Dishes (LocationID, DishName, Description, Price, Active)
    VALUES (@LocationID, @DishName, @Description, @Price, @Active)

    SELECT DishID, DishName, FORMAT(Price, 'C2', 'EN-GB') AS Price, Active
    FROM Dishes
    WHERE DishID = SCOPE_IDENTITY()
END;
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
IF OBJECT_ID('spN_DeleteDishes') IS NOT NULL
	DROP PROC spN_DeleteDishes;
GO

CREATE PROC spN_DeleteDishes 
	@DishID int
AS
BEGIN 
	IF EXISTS (SELECT * FROM Dishes WHERE DishID = @DishID )
	BEGIN

	--Deleting the records of that @DishID in other tablets first
	--Where the dishes is a Foreing Key
	--FROM CUSTOMER

	--Using the spN_DeleteCustomer

	DECLARE @CustID int
	SELECT @CustID = CustID
	FROM Customers
	WHERE FavoriteDish = @DishID

	EXECUTE spN_DeleteCustomer @CustID;


	--FROM RECIPIES
	DELETE FROM Recipes
	OUTPUT deleted.*
	WHERE DishID =  @DishID


	--Deliting The Dish from the Dishes table 
	DELETE FROM Dishes
	OUTPUT deleted.*
	WHERE dishID = @DishID

	END;
	ELSE
	THROW 50007, 'The specified DishID value does not exists in the Dishes Table.',1;
END
GO 
--TESTING
EXECUTE spN_DeleteDishes @DishID = 90;






