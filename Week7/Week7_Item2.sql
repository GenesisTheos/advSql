USE Restaurant;
GO 

-- A: grants exucute permissions for spN_ChefDetails stored proc
GRANT EXECUTE 
ON OBJECT::dbo.spN_ChefDetails
TO dbo

-- B 
-- C
-- D 

-- E: Assigns control permession to RestaurantDoAnything on sPN_CustomerDetails.
GRANT CONTROL ON OBJECT::dbo.sPN_CustomerDetails To RestaurantDoAnything;
GO
