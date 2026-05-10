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
-- D 

--E: Creates RestaurantPower user than can modify rights or preveleges of other users.
CREATE LOGIN RestaurantPower WITH PASSWORD = 'Password',
	DEFAULT_DATABASE = Restaurant;
GO 

CREATE USER RestaurantPower FOR LOGIN RestaurantPower;
GO

GRANT ALTER ANY USER TO RestaurantPower;
GRANT ALTER ANY ROLE TO RestaurantPower;
GO
