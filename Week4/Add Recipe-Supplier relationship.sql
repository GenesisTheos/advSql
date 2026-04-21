ALTER TABLE Ingredients
ADD SupplierID INT NULL;

ALTER TABLE Ingredients
ADD CONSTRAINT FK_Ingredients_Supplier
FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID);

-- Meat (Dawn Meats = 2, Carbury Meats = 3)
UPDATE Ingredients SET SupplierID = 2 WHERE IngredientName IN ('Beef Sirloin', 'Beef Ribeye', 'Beef Mince', 'Beef Short Rib', 'Beef Cheek', 'Beef Fillet', 'Lamb Shank');
UPDATE Ingredients SET SupplierID = 3 WHERE IngredientName IN ('Chicken Breast', 'Chicken Thigh', 'Chicken Wings', 'Chicken Liver', 'Duck Leg', 'Duck Breast', 'Pork Belly', 'Pork Tenderloin', 'Pork Sausages', 'Pork Rack', 'Pulled Pork', 'Bacon Rashers', 'Black Pudding', 'White Pudding', 'Chorizo');

-- Seafood (Goatsbridge = 4, Bord Iascaigh Mhara = 5)
UPDATE Ingredients SET SupplierID = 4 WHERE IngredientName IN ('Cod Fillet', 'Haddock Fillet', 'Salmon Fillet', 'Smoked Salmon');
UPDATE Ingredients SET SupplierID = 5 WHERE IngredientName IN ('Atlantic Prawns', 'Mussels', 'Clams', 'Calamari', 'Crab Claws', 'Oysters');

-- Fruit & Vegetables (Keelings = 1)
UPDATE Ingredients SET SupplierID = 1 WHERE IngredientName IN (
    'Garlic', 'Onion', 'Red Onion', 'Shallots', 'Carrots', 'Celery', 'Leek',
    'Mushrooms', 'Wild Mushrooms', 'Cherry Tomatoes', 'Plum Tomatoes', 'Spinach',
    'Rocket', 'Cos Lettuce', 'Mixed Leaves', 'Cucumber', 'Red Cabbage', 'Pak Choi',
    'Sweet Potato', 'Rooster Potatoes', 'New Potatoes', 'Broccoli', 'Green Beans',
    'Asparagus', 'Courgette', 'Aubergine', 'Red Pepper', 'Yellow Pepper', 'Chilli',
    'Fresh Basil', 'Fresh Parsley', 'Fresh Thyme', 'Fresh Rosemary', 'Fresh Dill',
    'Fresh Tarragon', 'Bay Leaves', 'Lemons', 'Limes', 'Oranges', 'Apples',
    'Cranberries', 'Cherries'
);

-- Dairy (Glenilen = 6, Killowen = 7)
UPDATE Ingredients SET SupplierID = 6 WHERE IngredientName IN ('Eggs', 'Butter', 'Double Cream', 'Milk', 'Sour Cream');
UPDATE Ingredients SET SupplierID = 7 WHERE IngredientName IN ('Cheddar Cheese', 'Mozzarella', 'Parmesan', 'Brie', 'Goats Cheese', 'Cream Cheese');

-- Condiments & Sauces (Ballymaloe = 8)
UPDATE Ingredients SET SupplierID = 8 WHERE IngredientName IN (
    'Tomato Puree', 'Worcestershire Sauce', 'Soy Sauce', 'Hot Sauce', 'BBQ Sauce',
    'Hoisin Sauce', 'Dijon Mustard', 'Wholegrain Mustard', 'Mayonnaise', 'Ketchup',
    'Tartare Sauce', 'Marie Rose Sauce', 'Caesar Dressing', 'Red Onion Marmalade',
    'Mango Chutney', 'Cranberry Sauce', 'Apple Sauce', 'Horseradish Sauce',
    'Balsamic Vinegar', 'White Wine Vinegar', 'Apple Cider Vinegar'
);

-- Dry Goods / Bakery (Flahavans = 9, Odlums = 10, Cuisine de France = 28, Aryzta = 29)
UPDATE Ingredients SET SupplierID = 10 WHERE IngredientName IN (
    'Plain Flour', 'Self Raising Flour', 'Caster Sugar', 'Brown Sugar', 'Icing Sugar',
    'Baking Powder', 'Breadcrumbs', 'Panko Breadcrumbs', 'Cocoa Powder'
);
UPDATE Ingredients SET SupplierID = 9 WHERE IngredientName IN (
    'Spaghetti', 'Penne', 'Tagliatelle', 'Linguine', 'Arborio Rice', 'Basmati Rice'
);
UPDATE Ingredients SET SupplierID = 28 WHERE IngredientName IN ('Sourdough Bread', 'Brown Bread', 'Ciabatta', 'Naan Bread');
UPDATE Ingredients SET SupplierID = 29 WHERE IngredientName IN ('Brioche Buns');

-- Alcohol / Wine (Diageo = 11, Barry & Fitzwilliam = 13)
UPDATE Ingredients SET SupplierID = 11 WHERE IngredientName IN ('Guinness', 'Cider');
UPDATE Ingredients SET SupplierID = 13 WHERE IngredientName IN ('Red Wine', 'White Wine');

-- General Wholesale - Pallas Foods = 30 (stocks, oils, spices, sauces, misc)
UPDATE Ingredients SET SupplierID = 30 WHERE IngredientName IN (
    'Black Pepper', 'Sea Salt', 'Paprika', 'Cumin', 'Turmeric', 'Chilli Flakes',
    'Dried Oregano', 'Cinnamon', 'Nutmeg', 'Olive Oil', 'Extra Virgin Olive Oil',
    'Truffle Oil', 'Vegetable Oil', 'Sunflower Oil',
    'Beef Stock', 'Chicken Stock', 'Vegetable Stock', 'Fish Stock',
    'Dark Chocolate', 'Milk Chocolate', 'Vanilla Extract',
    'Vanilla Ice Cream', 'Salted Caramel Sauce', 'Toffee Sauce', 'Custard',
    'Mushy Peas', 'Baked Beans', 'Capers', 'Pickles', 'Coleslaw', 'Truffle'
);