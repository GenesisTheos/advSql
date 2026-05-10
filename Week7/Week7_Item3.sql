USE Restaurant;	
GO

--A: creates a login and user then assigns it the permission/role of db_datareader
CREATE LOGIN dishes_table_user WITH PASSWORD = 'DUser';
CREATE USER dishes_table_user FOR LOGIN dishes_table_user;
ALTER ROLE db_datareader ADD MEMBER dishes_table_user;

-- E: Creates Reservations_table_user with db_datareader and db_datawriter permissions. 
CREATE USER Reservations_table_user WITHOUT LOGIN;
GO

ALTER ROLE db_datareader ADD MEMBER Reservations_table_user;
ALTER ROLE db_datawriter ADD MEMBER Reservations_table_user;
GO
