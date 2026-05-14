USE Restaurant;
GO 

-- A: grants exucute permissions for spN_ChefDetails stored proc
GRANT EXECUTE 
ON OBJECT::dbo.spN_ChefDetails
TO dbo

-- B Grant VIEW DEFINITION permission to the RestaurantUser for spN_ChefDetails stored proc
USE Restaurant;
GO
GRANT VIEW DEFINITION
ON OBJECT::dbo.spN_ChefDetails
TO RestaurantUser;
GO
  
-- C: Assign 'Alter' Permissions to the user 'RestaurantAddDeleteDb' for spN_RecipeDetai stored proc
USE Restaurant;
GO

GRANT ALTER
ON OBJECT::dbo.spN_RecipeDetails
TO RestaurantAddDeleteDb;
GO
  
-- D Grant TAKE OWNERSHIP on spN_KitchenDetails to RestaurantPower
  GRANT TAKE OWNERSHIP ON OBJECT::dbo.spN_KitchenDetails TO RestaurantPower;
GO

-- E: Assigns control permession to RestaurantDoAnything on sPN_CustomerDetails.
GRANT CONTROL ON OBJECT::dbo.sPN_CustomerDetails To RestaurantDoAnything;
GO
