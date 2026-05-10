USE Restaurant;	
GO

-- E: Creates Reservations_table_user with db_datareader and db_datawriter permissions. 
CREATE USER Reservations_table_user WITHOUT LOGIN;
GO

ALTER ROLE db_datareader ADD MEMBER Reservations_table_user;
ALTER ROLE db_datawriter ADD MEMBER Reservations_table_user;
GO