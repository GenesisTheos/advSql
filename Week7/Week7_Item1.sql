USE Restaurant;
GO

-- A 
use master
ALTER LOGIN [NT SERVICE\SQLSERVERAGENT] DISABLE;
 
--B creates a login and user and assigns it the role db_backupoperator
use Restaurant;
CREATE LOGIN RestaurantUser WITH PASSWORD = 'RUser';
CREATE USER RestaurantUser FOR LOGIN RestaurantUser;
ALTER ROLE db_backupoperator ADD MEMBER RestaurantUser;

-- C 

-- D Create RestaurantAddDeleteDb role with server-level permissions
-- Server-level permissions must be granted from master
USE master;
GO

CREATE LOGIN RestaurantAddDeleteDb WITH PASSWORD = 'S3cureP@ssWord123!';
GO

GRANT CREATE ANY DATABASE TO RestaurantAddDeleteDb;
GRANT ALTER ANY DATABASE TO RestaurantAddDeleteDb;
GO

--DENY INSERT in Restaurant database
USE Restaurant;
GO

CREATE USER RestaurantAddDeleteDb FOR LOGIN RestaurantAddDeleteDb;
GO

CREATE ROLE RestaurantAddDeleteDb_Role;
GO

EXEC sp_addrolemember 'RestaurantAddDeleteDb_Role', 'RestaurantAddDeleteDb';
GO

-- Deny INSERT 
DENY INSERT TO RestaurantAddDeleteDb_Role;
GO

--E: Creates RestaurantPower user than can modify rights or preveleges of other users.
CREATE LOGIN RestaurantPower WITH PASSWORD = 'Password',
	DEFAULT_DATABASE = Restaurant;
GO 

CREATE USER RestaurantPower FOR LOGIN RestaurantPower;
GO

GRANT ALTER ANY USER TO RestaurantPower;
GRANT ALTER ANY ROLE TO RestaurantPower;
GO
