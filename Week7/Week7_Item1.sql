USE Restaurant;
GO

-- A 
-- B 
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
