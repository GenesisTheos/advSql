Use Restaurant;
GO

-- Add price column to Ingrients Table.
ALTER TABLE Ingredients
ADD IngredientPrice DECIMAL(10,2) NOT NULL DEFAULT 0.00;
GO

-- Update all prices.
UPDATE Ingredients
SET IngredientPrice = CASE IngredientName
    WHEN 'Beef Sirloin'       THEN 18.99
    WHEN 'Beef Ribeye'        THEN 22.99
    WHEN 'Beef Mince'         THEN 8.99
    WHEN 'Beef Short Rib'     THEN 14.99
    WHEN 'Beef Cheek'         THEN 12.99
    WHEN 'Beef Fillet'        THEN 28.99
    WHEN 'Chicken Breast'     THEN 6.99
    WHEN 'Chicken Thigh'      THEN 5.49
    WHEN 'Chicken Wings'      THEN 4.99
    WHEN 'Chicken Liver'      THEN 3.49
    WHEN 'Duck Leg'           THEN 9.99
    WHEN 'Duck Breast'        THEN 12.99
    WHEN 'Pork Belly'         THEN 9.99
    WHEN 'Pork Tenderloin'    THEN 11.99
    WHEN 'Pork Sausages'      THEN 5.99
    WHEN 'Pork Rack'          THEN 16.99
    WHEN 'Pulled Pork'        THEN 8.99
    WHEN 'Bacon Rashers'      THEN 5.49
    WHEN 'Black Pudding'      THEN 3.99
    WHEN 'White Pudding'      THEN 3.99
    WHEN 'Chorizo'            THEN 6.49
    WHEN 'Lamb Shank'         THEN 14.99
    WHEN 'Cod Fillet'         THEN 10.99
    WHEN 'Haddock Fillet'     THEN 9.99
    WHEN 'Salmon Fillet'      THEN 11.99
    WHEN 'Smoked Salmon'      THEN 13.99
    WHEN 'Atlantic Prawns'    THEN 12.99
    WHEN 'Mussels'            THEN 7.99
    WHEN 'Clams'              THEN 8.99
    WHEN 'Calamari'           THEN 9.49
    WHEN 'Crab Claws'         THEN 16.99
    WHEN 'Oysters'            THEN 18.99
    WHEN 'Garlic'             THEN 0.99
    WHEN 'Onion'              THEN 0.79
    WHEN 'Red Onion'          THEN 0.99
    WHEN 'Shallots'           THEN 1.49
    WHEN 'Carrots'            THEN 0.89
    WHEN 'Celery'             THEN 1.29
    WHEN 'Leek'               THEN 1.49
    WHEN 'Mushrooms'          THEN 2.49
    WHEN 'Wild Mushrooms'     THEN 5.99
    WHEN 'Cherry Tomatoes'    THEN 1.99
    WHEN 'Plum Tomatoes'      THEN 1.49
    WHEN 'Spinach'            THEN 1.99
    WHEN 'Rocket'             THEN 1.99
    WHEN 'Cos Lettuce'        THEN 1.49
    WHEN 'Mixed Leaves'       THEN 1.99
    WHEN 'Cucumber'           THEN 0.99
    WHEN 'Red Cabbage'        THEN 0.99
    WHEN 'Pak Choi'           THEN 1.99
    WHEN 'Sweet Potato'       THEN 1.29
    WHEN 'Rooster Potatoes'   THEN 0.69
    WHEN 'New Potatoes'       THEN 1.29
    WHEN 'Broccoli'           THEN 1.49
    WHEN 'Green Beans'        THEN 1.99
    WHEN 'Asparagus'          THEN 3.49
    WHEN 'Courgette'          THEN 1.29
    WHEN 'Aubergine'          THEN 1.49
    WHEN 'Red Pepper'         THEN 1.49
    WHEN 'Yellow Pepper'      THEN 1.49
    WHEN 'Chilli'             THEN 0.99
    WHEN 'Eggs'               THEN 2.99
    WHEN 'Butter'             THEN 2.49
    WHEN 'Double Cream'       THEN 1.99
    WHEN 'Cheddar Cheese'     THEN 3.99
    WHEN 'Mozzarella'         THEN 2.99
    WHEN 'Parmesan'           THEN 4.49
    WHEN 'Brie'               THEN 3.99
    WHEN 'Goats Cheese'       THEN 4.99
    WHEN 'Cream Cheese'       THEN 2.49
    WHEN 'Milk'               THEN 1.29
    WHEN 'Sour Cream'         THEN 1.99
    WHEN 'Spaghetti'          THEN 1.49
    WHEN 'Penne'              THEN 1.49
    WHEN 'Tagliatelle'        THEN 1.79
    WHEN 'Linguine'           THEN 1.79
    WHEN 'Arborio Rice'       THEN 2.49
    WHEN 'Basmati Rice'       THEN 1.99
    WHEN 'Sourdough Bread'    THEN 3.49
    WHEN 'Brown Bread'        THEN 1.99
    WHEN 'Ciabatta'           THEN 2.49
    WHEN 'Brioche Buns'       THEN 2.99
    WHEN 'Naan Bread'         THEN 1.99
    WHEN 'Fresh Basil'        THEN 1.49
    WHEN 'Fresh Parsley'      THEN 1.29
    WHEN 'Fresh Thyme'        THEN 1.29
    WHEN 'Fresh Rosemary'     THEN 1.29
    WHEN 'Fresh Dill'         THEN 1.49
    WHEN 'Fresh Tarragon'     THEN 1.49
    WHEN 'Bay Leaves'         THEN 0.99
    WHEN 'Black Pepper'       THEN 1.99
    WHEN 'Sea Salt'           THEN 1.49
    WHEN 'Paprika'            THEN 1.49
    WHEN 'Cumin'              THEN 1.49
    WHEN 'Turmeric'           THEN 1.49
    WHEN 'Chilli Flakes'      THEN 1.49
    WHEN 'Dried Oregano'      THEN 1.29
    WHEN 'Cinnamon'           THEN 1.49
    WHEN 'Nutmeg'             THEN 1.49
    WHEN 'Olive Oil'              THEN 4.99
    WHEN 'Extra Virgin Olive Oil' THEN 6.99
    WHEN 'Truffle Oil'            THEN 14.99
    WHEN 'Vegetable Oil'          THEN 2.49
    WHEN 'Sunflower Oil'          THEN 2.49
    WHEN 'Balsamic Vinegar'       THEN 3.99
    WHEN 'White Wine Vinegar'     THEN 1.99
    WHEN 'Apple Cider Vinegar'    THEN 2.49
    WHEN 'Tomato Puree'       THEN 1.29
    WHEN 'Worcestershire Sauce' THEN 2.49
    WHEN 'Soy Sauce'          THEN 1.99
    WHEN 'Hot Sauce'          THEN 2.49
    WHEN 'BBQ Sauce'          THEN 2.49
    WHEN 'Hoisin Sauce'       THEN 2.49
    WHEN 'Dijon Mustard'      THEN 2.49
    WHEN 'Wholegrain Mustard' THEN 2.49
    WHEN 'Mayonnaise'         THEN 2.49
    WHEN 'Ketchup'            THEN 1.99
    WHEN 'Tartare Sauce'      THEN 2.99
    WHEN 'Marie Rose Sauce'   THEN 2.99
    WHEN 'Caesar Dressing'    THEN 2.99
    WHEN 'Red Onion Marmalade' THEN 3.49
    WHEN 'Mango Chutney'      THEN 2.99
    WHEN 'Cranberry Sauce'    THEN 2.49
    WHEN 'Apple Sauce'        THEN 1.99
    WHEN 'Horseradish Sauce'  THEN 2.99
    WHEN 'Beef Stock'         THEN 1.99
    WHEN 'Chicken Stock'      THEN 1.99
    WHEN 'Vegetable Stock'    THEN 1.79
    WHEN 'Fish Stock'         THEN 2.49
    WHEN 'Red Wine'           THEN 7.99
    WHEN 'White Wine'         THEN 6.99
    WHEN 'Guinness'           THEN 3.49
    WHEN 'Cider'              THEN 2.99
    WHEN 'Plain Flour'        THEN 1.29
    WHEN 'Self Raising Flour' THEN 1.49
    WHEN 'Caster Sugar'       THEN 1.49
    WHEN 'Brown Sugar'        THEN 1.79
    WHEN 'Icing Sugar'        THEN 1.49
    WHEN 'Dark Chocolate'     THEN 2.99
    WHEN 'Milk Chocolate'     THEN 2.49
    WHEN 'Cocoa Powder'       THEN 2.49
    WHEN 'Vanilla Extract'    THEN 3.49
    WHEN 'Baking Powder'      THEN 1.29
    WHEN 'Breadcrumbs'        THEN 1.29
    WHEN 'Panko Breadcrumbs'  THEN 1.99
    WHEN 'Lemons'             THEN 0.49
    WHEN 'Limes'              THEN 0.49
    WHEN 'Oranges'            THEN 0.79
    WHEN 'Apples'             THEN 0.69
    WHEN 'Cranberries'        THEN 2.99
    WHEN 'Cherries'           THEN 3.49
    WHEN 'Capers'             THEN 2.49
    WHEN 'Pickles'            THEN 1.99
    WHEN 'Coleslaw'           THEN 1.99
    WHEN 'Custard'            THEN 1.99
    WHEN 'Vanilla Ice Cream'  THEN 3.99
    WHEN 'Salted Caramel Sauce' THEN 3.49
    WHEN 'Toffee Sauce'       THEN 2.99
    WHEN 'Mushy Peas'         THEN 1.29
    WHEN 'Baked Beans'        THEN 0.99
    WHEN 'Truffle'            THEN 29.99
    ELSE 0.00
END;
