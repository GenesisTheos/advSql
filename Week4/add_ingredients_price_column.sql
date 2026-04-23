Use Restaurant;
GO


-- Add price column to Ingrients Table (Price per 100/unit).
ALTER TABLE Ingredients
ADD IngredientUnitPrice DECIMAL(10,2) NOT NULL DEFAULT 0.00;
GO

-- Update all prices.
UPDATE Ingredients
SET IngredientUnitPrice = CASE IngredientName
    WHEN 'Beef Sirloin'         THEN 3.50
    WHEN 'Beef Ribeye'          THEN 4.00
    WHEN 'Beef Mince'           THEN 1.50
    WHEN 'Beef Short Rib'       THEN 2.50
    WHEN 'Beef Cheek'           THEN 2.00
    WHEN 'Beef Fillet'          THEN 5.00
    WHEN 'Chicken Breast'       THEN 2.00
    WHEN 'Chicken Thigh'        THEN 1.50
    WHEN 'Chicken Wings'        THEN 1.20
    WHEN 'Chicken Liver'        THEN 0.80
    WHEN 'Duck Leg'             THEN 3.00
    WHEN 'Duck Breast'          THEN 3.50
    WHEN 'Pork Belly'           THEN 2.00
    WHEN 'Pork Tenderloin'      THEN 2.50
    WHEN 'Pork Sausages'        THEN 1.20
    WHEN 'Pork Rack'            THEN 3.00
    WHEN 'Pulled Pork'          THEN 1.80
    WHEN 'Bacon Rashers'        THEN 1.50
    WHEN 'Black Pudding'        THEN 1.00
    WHEN 'White Pudding'        THEN 1.00
    WHEN 'Chorizo'              THEN 2.00
    WHEN 'Lamb Shank'           THEN 3.50
    WHEN 'Cod Fillet'           THEN 2.50
    WHEN 'Haddock Fillet'       THEN 2.20
    WHEN 'Salmon Fillet'        THEN 3.00
    WHEN 'Smoked Salmon'        THEN 4.00
    WHEN 'Atlantic Prawns'      THEN 3.50
    WHEN 'Mussels'              THEN 1.50
    WHEN 'Clams'                THEN 2.00
    WHEN 'Calamari'             THEN 2.50
    WHEN 'Crab Claws'           THEN 5.00
    WHEN 'Oysters'              THEN 2.00
    WHEN 'Garlic'               THEN 0.50
    WHEN 'Onion'                THEN 0.20
    WHEN 'Red Onion'            THEN 0.25
    WHEN 'Shallots'             THEN 0.40
    WHEN 'Carrots'              THEN 0.15
    WHEN 'Celery'               THEN 0.15
    WHEN 'Leek'                 THEN 0.20
    WHEN 'Mushrooms'            THEN 0.60
    WHEN 'Wild Mushrooms'       THEN 1.50
    WHEN 'Cherry Tomatoes'      THEN 0.40
    WHEN 'Plum Tomatoes'        THEN 0.30
    WHEN 'Spinach'              THEN 0.30
    WHEN 'Rocket'               THEN 0.40
    WHEN 'Cos Lettuce'          THEN 0.25
    WHEN 'Mixed Leaves'         THEN 0.35
    WHEN 'Cucumber'             THEN 0.20
    WHEN 'Red Cabbage'          THEN 0.15
    WHEN 'Pak Choi'             THEN 0.40
    WHEN 'Sweet Potato'         THEN 0.25
    WHEN 'Rooster Potatoes'     THEN 0.15
    WHEN 'New Potatoes'         THEN 0.20
    WHEN 'Broccoli'             THEN 0.25
    WHEN 'Green Beans'          THEN 0.30
    WHEN 'Asparagus'            THEN 0.80
    WHEN 'Courgette'            THEN 0.25
    WHEN 'Aubergine'            THEN 0.30
    WHEN 'Red Pepper'           THEN 0.40
    WHEN 'Yellow Pepper'        THEN 0.40
    WHEN 'Chilli'               THEN 0.30
    WHEN 'Eggs'                 THEN 0.30
    WHEN 'Butter'               THEN 1.20
    WHEN 'Double Cream'         THEN 0.80
    WHEN 'Cheddar Cheese'       THEN 1.50
    WHEN 'Mozzarella'           THEN 1.80
    WHEN 'Parmesan'             THEN 2.50
    WHEN 'Brie'                 THEN 2.00
    WHEN 'Goats Cheese'         THEN 2.20
    WHEN 'Cream Cheese'         THEN 1.00
    WHEN 'Milk'                 THEN 0.10
    WHEN 'Sour Cream'           THEN 0.80
    WHEN 'Spaghetti'            THEN 0.30
    WHEN 'Penne'                THEN 0.30
    WHEN 'Tagliatelle'          THEN 0.35
    WHEN 'Linguine'             THEN 0.35
    WHEN 'Arborio Rice'         THEN 0.40
    WHEN 'Basmati Rice'         THEN 0.25
    WHEN 'Sourdough Bread'      THEN 0.50
    WHEN 'Brown Bread'          THEN 0.30
    WHEN 'Ciabatta'             THEN 0.40
    WHEN 'Brioche Buns'         THEN 0.60
    WHEN 'Naan Bread'           THEN 0.40
    WHEN 'Fresh Basil'          THEN 0.80
    WHEN 'Fresh Parsley'        THEN 0.60
    WHEN 'Fresh Thyme'          THEN 0.60
    WHEN 'Fresh Rosemary'       THEN 0.60
    WHEN 'Fresh Dill'           THEN 0.70
    WHEN 'Fresh Tarragon'       THEN 0.80
    WHEN 'Bay Leaves'           THEN 0.20
    WHEN 'Black Pepper'         THEN 0.30
    WHEN 'Sea Salt'             THEN 0.10
    WHEN 'Paprika'              THEN 0.40
    WHEN 'Cumin'                THEN 0.40
    WHEN 'Turmeric'             THEN 0.40
    WHEN 'Chilli Flakes'        THEN 0.40
    WHEN 'Dried Oregano'        THEN 0.35
    WHEN 'Cinnamon'             THEN 0.40
    WHEN 'Nutmeg'               THEN 0.50
    WHEN 'Olive Oil'            THEN 0.60
    WHEN 'Extra Virgin Olive Oil' THEN 0.90
    WHEN 'Truffle Oil'          THEN 5.00
    WHEN 'Vegetable Oil'        THEN 0.20
    WHEN 'Sunflower Oil'        THEN 0.20
    WHEN 'Balsamic Vinegar'     THEN 0.60
    WHEN 'White Wine Vinegar'   THEN 0.30
    WHEN 'Apple Cider Vinegar'  THEN 0.30
    WHEN 'Tomato Puree'         THEN 0.40
    WHEN 'Worcestershire Sauce' THEN 0.50
    WHEN 'Soy Sauce'            THEN 0.40
    WHEN 'Hot Sauce'            THEN 0.50
    WHEN 'BBQ Sauce'            THEN 0.40
    WHEN 'Hoisin Sauce'         THEN 0.60
    WHEN 'Dijon Mustard'        THEN 0.50
    WHEN 'Wholegrain Mustard'   THEN 0.50
    WHEN 'Mayonnaise'           THEN 0.40
    WHEN 'Ketchup'              THEN 0.30
    WHEN 'Tartare Sauce'        THEN 0.60
    WHEN 'Marie Rose Sauce'     THEN 0.60
    WHEN 'Caesar Dressing'      THEN 0.70
    WHEN 'Red Onion Marmalade'  THEN 0.80
    WHEN 'Mango Chutney'        THEN 0.70
    WHEN 'Cranberry Sauce'      THEN 0.60
    WHEN 'Apple Sauce'          THEN 0.50
    WHEN 'Horseradish Sauce'    THEN 0.70
    WHEN 'Beef Stock'           THEN 0.30
    WHEN 'Chicken Stock'        THEN 0.25
    WHEN 'Vegetable Stock'      THEN 0.20
    WHEN 'Fish Stock'           THEN 0.30
    WHEN 'Red Wine'             THEN 0.80
    WHEN 'White Wine'           THEN 0.70
    WHEN 'Guinness'             THEN 0.50
    WHEN 'Cider'                THEN 0.40
    WHEN 'Plain Flour'          THEN 0.15
    WHEN 'Self Raising Flour'   THEN 0.15
    WHEN 'Caster Sugar'         THEN 0.20
    WHEN 'Brown Sugar'          THEN 0.20
    WHEN 'Icing Sugar'          THEN 0.20
    WHEN 'Dark Chocolate'       THEN 1.50
    WHEN 'Milk Chocolate'       THEN 1.20
    WHEN 'Cocoa Powder'         THEN 0.80
    WHEN 'Vanilla Extract'      THEN 1.50
    WHEN 'Baking Powder'        THEN 0.30
    WHEN 'Breadcrumbs'          THEN 0.20
    WHEN 'Panko Breadcrumbs'    THEN 0.30
    WHEN 'Lemons'               THEN 0.40
    WHEN 'Limes'                THEN 0.40
    WHEN 'Oranges'              THEN 0.35
    WHEN 'Apples'               THEN 0.30
    WHEN 'Cranberries'          THEN 0.80
    WHEN 'Cherries'             THEN 1.00
    WHEN 'Capers'               THEN 1.20
    WHEN 'Pickles'              THEN 0.40
    WHEN 'Coleslaw'             THEN 0.50
    WHEN 'Custard'              THEN 0.40
    WHEN 'Vanilla Ice Cream'    THEN 0.80
    WHEN 'Salted Caramel Sauce' THEN 0.90
    WHEN 'Toffee Sauce'         THEN 0.80
    WHEN 'Mushy Peas'           THEN 0.30
    WHEN 'Baked Beans'          THEN 0.20
    WHEN 'Truffle'              THEN 8.00
    ELSE 0.00
END;
GO
