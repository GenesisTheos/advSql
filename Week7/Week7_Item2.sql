USE Restaurant;
GO 

-- A: grants exucute permissions for spN_ChefDetails stored proc
GRANT EXECUTE 
ON OBJECT::dbo.spN_ChefDetails
TO dbo

-- B
  
-- C
  
-- D Grant TAKE OWNERSHIP on spN_KitchenDetails to RestaurantPower
  GRANT TAKE OWNERSHIP ON OBJECT::dbo.spN_KitchenDetails TO RestaurantPower;
GO

-- E: Assigns control permession to RestaurantDoAnything on sPN_CustomerDetails.
GRANT CONTROL ON OBJECT::dbo.sPN_CustomerDetails To RestaurantDoAnything;
GO
