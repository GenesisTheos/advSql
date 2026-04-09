DBCC CHECKIDENT (Tables, RESEED, 0)

delete from Locations

CREATE DATABASE Restaurant
USE Restaurant

CREATE TABLE Locations
(
	LocationID INT IDENTITY(1, 1) PRIMARY KEY,
	Address VARCHAR(100) NOT NULL,
	PostTown VARCHAR(100) NOT NULL,
	County VARCHAR(30) NOT NULL,
	EIRCode VARCHAR(10) NOT NULL,
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Employees
(
	EmployeeID INT IDENTITY (1, 1) PRIMARY KEY,
	FName VARCHAR(50) NOT NULL,
	LName VARCHAR(50) NOT NULL,
	HourlyRate DECIMAL(4, 2) NOT NULL,
	Position VARCHAR(50) NOT NULL,
	MainLocationID INT  NOT NULL, --Check this at end
	FOREIGN KEY(MainLocationID) REFERENCES Locations(LocationID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Supplier
(
	SupplierID INT IDENTITY (1, 1) PRIMARY KEY,
	SupplierName VARCHAR(50)  NOT NULL,
	PhoneNum VARCHAR(20) NOT NULL,
	Email VARCHAR (100),
	SupplierType VARCHAR(50) NOT NULL,
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Chefs
(
	ChefID INT IDENTITY (1, 1) PRIMARY KEY,
	EmployeeID INT NOT NULL,
	PreferredSupplier INT,
	Specialty varchar(30),
	FOREIGN KEY(PreferredSupplier) REFERENCES Supplier(SupplierID),
	FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE ChefLocations
(
	ChefLocationID INT IDENTITY (1, 1) PRIMARY KEY,
	EmployeeID INT NOT NULL,
	LocationID INT NOT NULL,
	ChefPosition VARCHAR(50) NOT NULL,
	FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID),
	FOREIGN KEY(LocationID) REFERENCES Locations(LocationID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Tables
(
	TableID INT IDENTITY (1, 1) PRIMARY KEY,
	TableNum INT NOT NULL,
	LocationID INT NOT NULL,
	FOREIGN KEY(LocationID) REFERENCES Locations(LocationID),
	NumSeats INT NOT NULL,
	TableType VARCHAR(40) NOT NULL,
	ServerID INT,
	Available BIT DEFAULT 1 NOT NULL,
	FOREIGN KEY(ServerID) REFERENCES Employees(EmployeeID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Charities
(
	CharityID INT IDENTITY (1, 1) PRIMARY KEY,
	CharityName VARCHAR(100) NOT NULL,
	LocationID INT NOT NULL,
	CharityAddress VARCHAR(100) NOT NULL,
	PhoneNum VARCHAR(20) NOT NULL,
	FOREIGN KEY(LocationID) REFERENCES Locations(LocationID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Dishes
(
	DishID INT IDENTITY (1, 1) PRIMARY KEY,
	LocationID INT NOT NULL,
	DishName VARCHAR(150) NOT NULL,
	Description VARCHAR(300) NOT NULL,
	Price DECIMAL(5, 2),
	Active BIT DEFAULT 1 NOT NULL,
	FOREIGN KEY(LocationID) REFERENCES Locations(LocationID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Ingredients
(
	IngredientID INT IDENTITY (1, 1) PRIMARY KEY,
	IngredientName VARCHAR(50) NOT NULL,
	IngredientStock INT NOT NULL,
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Recipes
(
	RecipeID INT IDENTITY (1, 1) PRIMARY KEY,
	IngredientID INT NOT NULL,
	DishID INT NOT NULL,
	IngredientQuantity INT NOT NULL,
	FOREIGN KEY(IngredientID) REFERENCES Ingredients(IngredientID),
	FOREIGN KEY(DishID) REFERENCES Dishes(DishID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Customers
(
	CustID INT IDENTITY (1, 1) PRIMARY KEY,
	CustFName VARCHAR(30) NOT NULL,
	CustLName VARCHAR(30) NOT NULL,
	PhoneNum VARCHAR(20) NOT NULL,
	Email VARCHAR(100),
	Age INT,
	FavoriteDish INT,
	FavoriteEmployee INT,
	FOREIGN KEY(FavoriteDish) REFERENCES Dishes(DishID),
	FOREIGN KEY(FavoriteEmployee) REFERENCES Employees(EmployeeID),
	DateTime DATETIME Default GETDATE() NOT NULL

)

CREATE TABLE Orders
(
	BillingNum INT IDENTITY (1, 1) PRIMARY KEY,
	OrderType VARCHAR(50) NOT NULL,
	OrderTime DATETIME NOT NULL,
	PaymentMethod VARCHAR(20) NOT NULL,
	LocationID INT NOT NULL,
	OrderTotal DECIMAL (6,2) NOT NULL,
	EmployeeID INT NOT NULL,
	CustID INT NOT NULL,
	PrimaryChef INT NOT NULL,--tbd
	FOREIGN KEY(PrimaryChef) REFERENCES Chefs(ChefID),
	FOREIGN KEY(LocationID) REFERENCES Locations(LocationID),
	FOREIGN KEY(EmployeeID) REFERENCES Employees(EmployeeID),
	FOREIGN KEY(CustID) REFERENCES Customers(CustID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE Reservations
(
	ResID INT IDENTITY (1, 1) PRIMARY KEY,
	CustID INT NOT NULL,
	LocationID INT NOT NULL,
	TablePreference INT,
	TableChosen INT NOT NULL,
	ResDateTime DATETIME NOT NULL,
	PartyNum INT NOT NULL,
	RecurringReservation BIT,
	ReservationStatus VARCHAR(20) NOT NULL,--CANCEL/ACTIVE/COMPLETED
	FOREIGN KEY(CustID) REFERENCES Customers(CustID),
	FOREIGN KEY(TablePreference) REFERENCES Tables(TableID),
	FOREIGN KEY(TableChosen) REFERENCES Tables(TableID),
	FOREIGN KEY(LocationID) REFERENCES Locations(LocationID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

CREATE TABLE KitchenDetails
(
	KitchenID INT IDENTITY (1, 1) PRIMARY KEY,
	LocationID INT NOT NULL,
	NumStoves INT NOT NULL,
	HeadChef INT NOT NULL,
	SousChef INT,
	MinNumCooks INT NOT NULL,
	FOREIGN KEY(LocationID) REFERENCES Locations(LocationID),
	FOREIGN KEY(HeadChef) REFERENCES Chefs(ChefID),
	FOREIGN KEY(SousChef) REFERENCES Chefs(ChefID),
	DateTime DATETIME Default GETDATE() NOT NULL
)

