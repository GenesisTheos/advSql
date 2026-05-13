USE Restaurant;	
GO

--A: creates a login and user then assigns it the permission/role of db_datareader
CREATE LOGIN dishes_table_user WITH PASSWORD = 'DUser';
CREATE USER dishes_table_user FOR LOGIN dishes_table_user;
ALTER ROLE db_datareader ADD MEMBER dishes_table_user;


-- D: Creates chef_table_user  with permissions
-- Create the role
CREATE ROLE chefs_table_user;
GO

-- Add the role to the db_accessadmin database role
EXEC sp_addrolemember 'db_accessadmin', 'chefs_table_user';
GO

-- E: Creates Reservations_table_user with db_datareader and db_datawriter permissions. 
CREATE USER Reservations_table_user WITHOUT LOGIN;
GO

ALTER ROLE db_datareader ADD MEMBER Reservations_table_user;
ALTER ROLE db_datawriter ADD MEMBER Reservations_table_user;
GO
