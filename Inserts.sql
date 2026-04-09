--insert for locations
INSERT INTO Locations (Address, PostTown, County, EIRCode)
VALUES 
    ('14 O''Connell Street', 'Dublin', 'Dublin', 'D01 F5P2'),
    ('7 Patrick Street', 'Cork', 'Cork', 'T12 YE28');

--insert for employees
INSERT INTO Employees (FName, LName, HourlyRate, Position, MainLocationID)
VALUES
-- Location 1 (Dublin) - 20 Employees
('Sean', 'Murphy', 99.99, 'Owner', 1),
('Aoife', 'Kelly', 18.50, 'Manager', 1),
('Ciaran', 'OBrien', 14.00, 'Chef', 1),
('Sinead', 'Walsh', 12.50, 'Chef', 1),
('Padraig', 'Ryan', 11.00, 'Chef', 1),
('Niamh', 'Brennan', 10.50, 'Server', 1),
('Eoin', 'Collins', 10.50, 'Server', 1),
('Grainne', 'Doyle', 10.50, 'Server', 1),
('Declan', 'Fitzgerald', 10.50, 'Server', 1),
('Aisling', 'McCarthy', 10.00, 'Bartender', 1),
('Ronan', 'Gallagher', 10.00, 'Bartender', 1),
('Clodagh', 'OConnor', 9.50, 'Host', 1),
('Fergal', 'Higgins', 9.50, 'Host', 1),
('Mairead', 'Nolan', 9.00, 'Busser', 1),
('Tadhg', 'Quinn', 9.00, 'Busser', 1),
('Orla', 'Sheahan', 9.00, 'Busser', 1),
('Brendan', 'Byrne', 9.00, 'Dish Washer', 1),
('Siobhan', 'Lawlor', 9.00, 'Dish Washer', 1),
('Kevin', 'Dunne', 9.00, 'Dish Washer', 1),
('Caoimhe', 'Farrell', 10.50, 'Server', 1),

-- Location 2 (Cork) - 20 Employees
('Liam', 'OLeary', 18.50, 'Manager', 2),
('Darragh', 'Healy', 14.00, 'Chef', 2),
('Roisin', 'Buckley', 12.50, 'Chef', 2),
('Cathal', 'Sheehan', 11.00, 'Chef', 2),
('Eimear', 'OCallaghan', 10.50, 'Server', 2),
('Diarmuid', 'Corkery', 10.50, 'Server', 2),
('Aoibhe', 'Deasy', 10.50, 'Server', 2),
('Killian', 'Twomey', 10.50, 'Server', 2),
('Muireann', 'OHerlihy', 10.00, 'Bartender', 2),
('Cormac', 'Desmond', 10.00, 'Bartender', 2),
('Sorcha', 'Fehily', 9.50, 'Host', 2),
('Tiernan', 'Spillane', 9.50, 'Host', 2),
('Blanaid', 'Riordan', 9.00, 'Busser', 2),
('Oisin', 'Moynihan', 9.00, 'Busser', 2),
('Ciara', 'Cronin', 9.00, 'Busser', 2),
('Donncha', 'OKeeffe', 9.00, 'Dish Washer', 2),
('Aoibhinn', 'Hurley', 9.00, 'Dish Washer', 2),
('Colm', 'Sweeney', 9.00, 'Dish Washer', 2),
('Laoise', 'Hennessy', 10.50, 'Server', 2),
('Fionnuala', 'Barry', 10.50, 'Server', 2);

--Supplier
INSERT INTO Supplier (SupplierName, PhoneNum, Email, SupplierType)
VALUES
-- Food Suppliers
('Keelings Fresh Produce', '+353 1 845 7000', 'orders@keelings.ie', 'Fruit & Vegetables'),
('Dawn Meats', '+353 90 648 2100', 'supply@dawnmeats.ie', 'Meat'),
('Carbury Meats', '+353 46 955 1234', 'info@carburymeats.ie', 'Meat'),
('Goatsbridge Trout Farm', '+353 56 444 1000', 'orders@goatsbridge.ie', 'Seafood'),
('Bord Iascaigh Mhara', '+353 1 214 4100', 'seafood@bim.ie', 'Seafood'),
('Glenilen Farm', '+353 23 884 6535', 'info@glenilenfarm.ie', 'Dairy'),
('Killowen Farm', '+353 28 386 1234', 'orders@killowenfarm.ie', 'Dairy'),
('Ballymaloe Foods', '+353 21 465 2531', 'supply@ballymaloefoods.ie', 'Condiments & Sauces'),
('Flahavans', '+353 24 498 0000', 'orders@flahavans.ie', 'Dry Goods'),
('Odlums', '+353 1 409 0100', 'trade@odlums.ie', 'Dry Goods'),

-- Beverage Suppliers
('Diageo Ireland', '+353 1 468 7500', 'orders@diageo.ie', 'Alcohol'),
('Heineken Ireland', '+353 21 453 8600', 'trade@heineken.ie', 'Alcohol'),
('Barry & Fitzwilliam', '+353 1 668 1400', 'wine@barryfitzwilliam.ie', 'Wine'),
('Febvre & Company', '+353 1 216 1400', 'orders@febvre.ie', 'Wine'),
('Soft Options Ireland', '+353 1 532 1234', 'orders@softoptions.ie', 'Soft Drinks'),
('Ballygowan', '+353 69 620 1234', 'trade@ballygowan.ie', 'Water'),
('Bewleys', '+353 1 816 3800', 'orders@bewleys.ie', 'Coffee & Tea'),
('Solaris Botanicals', '+353 21 242 1234', 'info@solarisbotanicals.ie', 'Coffee & Tea'),

-- Equipment & Supplies
('Bunzl McLaughlin', '+353 1 419 3000', 'orders@bunzl.ie', 'Packaging & Disposables'),
('Rational Ireland', '+353 1 890 1234', 'service@rational.ie', 'Kitchen Equipment'),
('Nisbets Ireland', '+353 1 905 1234', 'trade@nisbets.ie', 'Kitchen Equipment'),
('Ecolab Ireland', '+353 1 800 1234', 'orders@ecolab.ie', 'Cleaning Supplies'),
('PureMate Ireland', '+353 1 234 5678', 'info@puremate.ie', 'Cleaning Supplies'),

-- Linen & Uniforms
('Alexander Hotels Supply', '+353 1 677 1234', 'linen@alexandersupply.ie', 'Linen & Laundry'),
('ChefWorks Ireland', '+353 1 890 5678', 'uniforms@chefworks.ie', 'Uniforms'),

-- Miscellaneous
('Irish Gas Networks', '+353 1 679 1234', 'business@gasnetworks.ie', 'Gas & Energy'),
('Bord Gais Energy', '+353 1 611 0000', 'business@bordgais.ie', 'Gas & Energy'),
('Cuisine de France', '+353 1 829 5000', 'orders@cuisinedefrance.ie', 'Bakery'),
('Aryzta Ireland', '+353 1 805 2400', 'trade@aryzta.ie', 'Bakery'),
('Pallas Foods', '+353 61 226 100', 'orders@pallasfoods.ie', 'General Wholesale');

--chefs
INSERT INTO Chefs (EmployeeID, PreferredSupplier, Specialty)
VALUES
(3,  5,  'Beef'),
(4,  3,  'Poultry'),
(5,  10, 'Pasta'),
(22, 2,  'Pork'),
(23, 1,  'Beef'),
(24, 8,  'Poultry');

--chef locations
INSERT INTO ChefLocations (EmployeeID, LocationID, ChefPosition)
VALUES
(3,  1, 'Head Chef'),
(4,  1, 'Sous Chef'),
(5,  1, 'Line Chef'),
(22, 2, 'Head Chef'),
(23, 2, 'Sous Chef'),
(24, 2, 'Line Chef');

--tables
INSERT INTO Tables (TableNum, LocationID, NumSeats, TableType, ServerID, Available)
VALUES
-- Location 1 (Dublin) - 50 Tables
-- Niamh Brennan (EmployeeID 6) - 5 tables
(1,  1, 2, 'Indoor', 6, 1),
(2,  1, 4, 'Indoor', 6, 1),
(3,  1, 4, 'Indoor', 6, 0),
(4,  1, 6, 'Indoor', 6, 1),
(5,  1, 2, 'Outdoor', 6, 1),
-- Eoin Collins (EmployeeID 7) - 5 tables
(6,  1, 2, 'Indoor', 7, 1),
(7,  1, 4, 'Indoor', 7, 0),
(8,  1, 4, 'Outdoor', 7, 1),
(9,  1, 6, 'Outdoor', 7, 1),
(10, 1, 2, 'Indoor', 7, 1),
-- Grainne Doyle (EmployeeID 8) - 5 tables
(11, 1, 2, 'Indoor', 8, 0),
(12, 1, 4, 'Indoor', 8, 1),
(13, 1, 4, 'Indoor', 8, 1),
(14, 1, 6, 'Outdoor', 8, 1),
(15, 1, 2, 'Indoor', 8, 0),
-- Declan Fitzgerald (EmployeeID 9) - 5 tables
(16, 1, 2, 'Indoor', 9, 1),
(17, 1, 4, 'Indoor', 9, 0),
(18, 1, 4, 'Indoor', 9, 1),
(19, 1, 6, 'Indoor', 9, 1),
(20, 1, 2, 'Outdoor', 9, 1),
-- Caoimhe Farrell (EmployeeID 20) - 5 tables
(21, 1, 2, 'Indoor', 20, 1),
(22, 1, 4, 'Indoor', 20, 1),
(23, 1, 6, 'Outdoor', 20, 0),
(24, 1, 4, 'Indoor', 20, 1),
(25, 1, 2, 'Outdoor', 20, 1),
-- Remaining Dublin tables (Bar & Private Dining)
(26, 1, 4, 'Bar', NULL, 1),
(27, 1, 4, 'Bar', NULL, 1),
(28, 1, 4, 'Bar', NULL, 1),
(29, 1, 4, 'Bar', NULL, 0),
(30, 1, 4, 'Bar', NULL, 1),
(31, 1, 6, 'Private Dining', NULL, 1),
(32, 1, 8, 'Private Dining', NULL, 1),
(33, 1, 8, 'Private Dining', NULL, 0),
(34, 1, 6, 'Private Dining', NULL, 1),
(35, 1, 2, 'Indoor', 6, 1),
(36, 1, 4, 'Indoor', 7, 1),
(37, 1, 4, 'Outdoor', 8, 1),
(38, 1, 6, 'Indoor', 9, 0),
(39, 1, 4, 'Indoor', 20, 1),
(40, 1, 2, 'Outdoor', 6, 1),
(41, 1, 4, 'Indoor', 7, 1),
(42, 1, 4, 'Indoor', 8, 0),
(43, 1, 6, 'Outdoor', 9, 1),
(44, 1, 2, 'Indoor', 20, 1),
(45, 1, 4, 'Indoor', 6, 0),
(46, 1, 4, 'Outdoor', 7, 1),
(47, 1, 6, 'Indoor', 8, 1),
(48, 1, 2, 'Indoor', 9, 1),
(49, 1, 4, 'Bar', NULL, 1),
(50, 1, 4, 'Bar', NULL, 1),

-- Location 2 (Cork) - 50 Tables
-- Eimear OCallaghan (EmployeeID 25) - 5 tables
(1,  2, 2, 'Indoor', 25, 1),
(2,  2, 4, 'Indoor', 25, 1),
(3,  2, 4, 'Indoor', 25, 0),
(4,  2, 6, 'Indoor', 25, 1),
(5,  2, 2, 'Outdoor', 25, 1),
-- Diarmuid Corkery (EmployeeID 26) - 5 tables
(6,  2, 2, 'Indoor', 26, 1),
(7,  2, 4, 'Indoor', 26, 0),
(8,  2, 4, 'Outdoor', 26, 1),
(9,  2, 6, 'Outdoor', 26, 1),
(10, 2, 2, 'Indoor', 26, 1),
-- Aoibhe Deasy (EmployeeID 27) - 5 tables
(11, 2, 2, 'Indoor', 27, 0),
(12, 2, 4, 'Indoor', 27, 1),
(13, 2, 4, 'Indoor', 27, 1),
(14, 2, 6, 'Outdoor', 27, 1),
(15, 2, 2, 'Indoor', 27, 0),
-- Killian Twomey (EmployeeID 28) - 5 tables
(16, 2, 2, 'Indoor', 28, 1),
(17, 2, 4, 'Indoor', 28, 0),
(18, 2, 4, 'Indoor', 28, 1),
(19, 2, 6, 'Indoor', 28, 1),
(20, 2, 2, 'Outdoor', 28, 1),
-- Laoise Hennessy (EmployeeID 39) - 5 tables
(21, 2, 2, 'Indoor', 39, 1),
(22, 2, 4, 'Indoor', 39, 1),
(23, 2, 6, 'Outdoor', 39, 0),
(24, 2, 4, 'Indoor', 39, 1),
(25, 2, 2, 'Outdoor', 39, 1),
-- Fionnuala Barry (EmployeeID 40) - 5 tables
(26, 2, 2, 'Indoor', 40, 1),
(27, 2, 4, 'Indoor', 40, 1),
(28, 2, 4, 'Outdoor', 40, 0),
(29, 2, 6, 'Indoor', 40, 1),
(30, 2, 2, 'Indoor', 40, 1),
-- Remaining Cork tables (Bar & Private Dining)
(31, 2, 4, 'Bar', NULL, 1),
(32, 2, 4, 'Bar', NULL, 1),
(33, 2, 4, 'Bar', NULL, 0),
(34, 2, 4, 'Bar', NULL, 1),
(35, 2, 6, 'Private Dining', NULL, 1),
(36, 2, 8, 'Private Dining', NULL, 1),
(37, 2, 8, 'Private Dining', NULL, 0),
(38, 2, 6, 'Private Dining', NULL, 1),
(39, 2, 2, 'Indoor', 25, 0),
(40, 2, 4, 'Indoor', 26, 1),
(41, 2, 4, 'Outdoor', 27, 1),
(42, 2, 6, 'Indoor', 28, 0),
(43, 2, 4, 'Indoor', 39, 1),
(44, 2, 2, 'Outdoor', 40, 1),
(45, 2, 4, 'Indoor', 25, 1),
(46, 2, 4, 'Outdoor', 26, 0),
(47, 2, 6, 'Indoor', 27, 1),
(48, 2, 2, 'Indoor', 28, 1),
(49, 2, 4, 'Bar', NULL, 1),
(50, 2, 4, 'Bar', NULL, 1);

--Charities
INSERT INTO Charities (CharityName, LocationID, CharityAddress, PhoneNum)
VALUES
-- Location 1 (Dublin) - 10 Food Charities
('Dublin Food Bank',              1, 'Robinhood Industrial Estate, Dublin 22',     '+353 1 460 1660'),
('FoodCloud Dublin',              1, 'Whitestown Business Park, Tallaght, Dublin', '+353 1 531 2478'),
('Capuchin Day Centre',           1, '29 Bow Street, Smithfield, Dublin 7',        '+353 1 873 0599'),
('Meals on Wheels Dublin',        1, '19 Carmanhall Road, Sandyford, Dublin 18',   '+353 1 295 8900'),
('Society of St Vincent de Paul', 1, '91 Morehampton Rd, Donnybrook, Dublin 4',   '+353 1 884 8200'),
('Crosscare Food Bank',           1, 'Clonliffe Road, Dublin 3',                   '+353 1 836 0536'),
('Inner City Helping Homeless',   1, '5 Gardiner Row, Dublin 1',                   '+353 1 872 4688'),
('Dublin Penny Dinners',          1, '118 Phibsborough Road, Dublin 7',            '+353 1 830 3676'),
('Bia Food Initiative',           1, 'Jamestown Road, Inchicore, Dublin 8',        '+353 1 453 8778'),
('Feed Our Homeless Dublin',      1, '11 Aungier Street, Dublin 2',                '+353 1 525 2530'),

-- Location 2 (Cork) - 10 Food Charities
('Cork Food Bank',                2, 'Tramore Road, Cork City',                    '+353 21 431 4063'),
('Penny Dinners Cork',            2, 'Paul Street, Cork City',                     '+353 21 427 6287'),
('FoodCloud Cork',                2, 'Sarsfield Road, Wilton, Cork City',          '+353 21 531 2478'),
('Meals on Wheels Cork',          2, 'Evergreen Road, Cork City',                  '+353 21 496 1399'),
('Cork Soup Kitchen',             2, 'Kyrl Street, Cork City',                     '+353 21 427 1234'),
('Society of St Vincent de Paul', 2, '19 Drawbridge Street, Cork City',            '+353 21 427 2259'),
('Cork Inner City Food Aid',      2, 'Shandon Street, Cork City',                  '+353 21 450 1234'),
('Helping Hand Cork',             2, 'Douglas Road, Cork City',                    '+353 21 489 5678'),
('Community Food Initiative',     2, 'Togher Road, Cork City',                     '+353 21 431 5678'),
('Cork Emergency Food Bank',      2, 'Blarney Street, Cork City',                  '+353 21 430 1234');

--Dishes
INSERT INTO Dishes (LocationID, DishName, Description, Price, Active)
VALUES
-- Location 1 (Dublin) - 50 Dishes
-- Starters
(1, 'Soup of the Day',              'Freshly made soup served with homemade brown bread and butter',                                      6.50,  1),
(1, 'Garlic Bread',                 'Toasted ciabatta with garlic butter and fresh herbs',                                                5.00,  1),
(1, 'Chicken Wings',                'Crispy chicken wings tossed in a choice of BBQ or buffalo sauce',                                    9.50,  1),
(1, 'Smoked Salmon',                'Irish smoked salmon with cream cheese, capers and toasted brown bread',                              12.00, 1),
(1, 'Beef Carpaccio',               'Thinly sliced raw beef with rocket, parmesan shavings and truffle oil',                              13.50, 1),
(1, 'Prawn Cocktail',               'Chilled Atlantic prawns with Marie Rose sauce on a bed of crisp lettuce',                            11.00, 1),
(1, 'Chicken Liver Pate',           'Smooth chicken liver pate with toasted sourdough and red onion marmalade',                           9.00,  1),
(1, 'Crispy Calamari',              'Lightly battered calamari rings served with lemon aioli',                                            10.50, 1),
(1, 'Bruschetta',                   'Toasted sourdough topped with fresh tomatoes, basil and extra virgin olive oil',                     7.50,  1),
(1, 'Brie Wedges',                  'Deep fried brie wedges with a cranberry dipping sauce',                                              8.50,  1),
-- Mains - Beef
(1, 'Sirloin Steak',                '10oz Irish sirloin steak served with chunky chips, roasted tomato and mushroom',                     32.00, 1),
(1, 'Ribeye Steak',                 '12oz Irish ribeye steak with peppercorn sauce, fries and seasonal vegetables',                       36.00, 1),
(1, 'Beef Burger',                  'House beef burger with cheddar, lettuce, tomato, pickles and fries',                                 16.50, 1),
(1, 'Slow Braised Beef Short Rib',  'Tender slow cooked beef short rib with creamy mash and red wine jus',                                24.00, 1),
(1, 'Beef Stew',                    'Traditional Irish beef and Guinness stew with colcannon mash and soda bread',                        18.00, 1),
-- Mains - Poultry
(1, 'Roast Half Chicken',           'Herb roasted half chicken with roast potatoes, seasonal veg and gravy',                              19.50, 1),
(1, 'Chicken Parmesan',             'Breaded chicken breast with marinara sauce, melted mozzarella and spaghetti',                        18.50, 1),
(1, 'Chicken Caesar Salad',         'Grilled chicken breast with cos lettuce, parmesan, croutons and Caesar dressing',                    15.00, 1),
(1, 'Duck Confit',                  'Slow cooked duck leg with dauphinoise potatoes, red cabbage and orange jus',                         26.00, 1),
(1, 'Chicken Tikka Masala',         'Tender chicken in a rich spiced tomato and cream sauce with basmati rice and naan',                  17.50, 1),
-- Mains - Pasta
(1, 'Spaghetti Carbonara',          'Spaghetti with smoked bacon, egg yolk, parmesan and black pepper',                                   15.50, 1),
(1, 'Penne Arrabbiata',             'Penne pasta in a spicy tomato sauce with garlic, chilli and fresh basil',                            13.50, 1),
(1, 'Tagliatelle Bolognese',        'Slow cooked beef ragu with fresh tagliatelle and parmesan',                                          16.00, 1),
(1, 'Seafood Linguine',             'Linguine with prawns, mussels and clams in a white wine and garlic sauce',                           22.00, 1),
(1, 'Mushroom Risotto',             'Creamy arborio rice with wild mushrooms, truffle oil and parmesan',                                   16.00, 1),
-- Mains - Pork
(1, 'Pork Belly',                   'Slow roasted pork belly with apple sauce, colcannon and cider jus',                                  22.00, 1),
(1, 'Pork Tenderloin',              'Pan seared pork tenderloin with creamy mustard sauce, roast potatoes and greens',                    21.00, 1),
(1, 'Pulled Pork Sandwich',         'Slow cooked pulled pork with coleslaw and BBQ sauce in a brioche bun with fries',                    15.50, 1),
(1, 'Pork Schnitzel',               'Breaded pork schnitzel with fried egg, capers, lemon and fries',                                    18.00, 1),
(1, 'Irish Breakfast',              'Grilled bacon, pork sausages, black and white pudding, eggs, mushrooms and toast',                   14.00, 1),
-- Mains - Seafood
(1, 'Fish and Chips',               'Beer battered cod with chunky chips, mushy peas and tartare sauce',                                  17.00, 1),
(1, 'Grilled Salmon',               'Atlantic salmon fillet with dill butter, new potatoes and seasonal greens',                          22.00, 1),
(1, 'Seafood Chowder',              'Creamy chowder with cod, salmon, prawns and mussels served with brown bread',                        14.00, 1),
-- Sides
(1, 'Chunky Chips',                 'Thick cut golden chips with sea salt',                                                               4.50,  1),
(1, 'Garlic Mash',                  'Creamy mashed potato with roasted garlic and butter',                                                4.50,  1),
(1, 'Seasonal Vegetables',          'Buttered seasonal vegetables',                                                                       4.00,  1),
(1, 'Side Salad',                   'Mixed leaves with cherry tomatoes, cucumber and house dressing',                                     4.00,  1),
(1, 'Onion Rings',                  'Crispy battered onion rings with dipping sauce',                                                     4.50,  1),
-- Desserts
(1, 'Sticky Toffee Pudding',        'Warm sticky toffee pudding with vanilla ice cream and toffee sauce',                                 8.00,  1),
(1, 'Chocolate Lava Cake',          'Warm chocolate fondant with a molten centre served with vanilla ice cream',                          8.50,  1),
(1, 'Cheesecake of the Day',        'Ask your server for todays cheesecake selection',                                                    7.50,  1),
(1, 'Creme Brulee',                 'Classic vanilla creme brulee with a caramelised sugar crust',                                        7.50,  1),
(1, 'Ice Cream Selection',          'Three scoops of homemade ice cream with your choice of sauce',                                       6.50,  1),
(1, 'Apple Crumble',                'Warm apple crumble with custard or vanilla ice cream',                                               7.50,  1),
-- Kids Menu
(1, 'Kids Chicken Nuggets',         'Homemade chicken nuggets with chips and baked beans',                                                8.00,  1),
(1, 'Kids Pasta',                   'Penne pasta with tomato sauce and parmesan',                                                         7.50,  1),
(1, 'Kids Burger',                  'Mini beef burger with chips and ketchup',                                                            8.00,  1),
(1, 'Kids Fish Goujons',            'Crispy fish goujons with chips and peas',                                                            8.00,  1),
(1, 'Kids Sausages',                'Pork sausages with mash and peas',                                                                   7.50,  1),

-- Location 2 (Cork) - 50 Dishes
-- Starters
(2, 'Soup of the Day',              'Freshly made soup served with homemade brown bread and butter',                                      6.50,  1),
(2, 'Garlic Bread',                 'Toasted ciabatta with garlic butter and fresh herbs',                                                5.00,  1),
(2, 'Chicken Wings',                'Crispy chicken wings tossed in a choice of BBQ or buffalo sauce',                                    9.50,  1),
(2, 'Smoked Salmon',                'Cork smoked salmon with cream cheese, capers and toasted brown bread',                               12.00, 1),
(2, 'Beef Tartare',                 'Hand chopped raw beef with capers, shallots, egg yolk and toasted sourdough',                        13.50, 1),
(2, 'Prawn Cocktail',               'Chilled Atlantic prawns with Marie Rose sauce on a bed of crisp lettuce',                            11.00, 1),
(2, 'Duck Spring Rolls',            'Crispy duck spring rolls with hoisin dipping sauce and pickled cucumber',                            10.50, 1),
(2, 'Crispy Calamari',              'Lightly battered calamari rings served with lemon aioli',                                            10.50, 1),
(2, 'Bruschetta',                   'Toasted sourdough topped with fresh tomatoes, basil and extra virgin olive oil',                     7.50,  1),
(2, 'Goats Cheese Tart',            'Warm goats cheese and caramelised onion tart with dressed rocket salad',                             9.50,  1),
-- Mains - Beef
(2, 'Sirloin Steak',                '10oz Irish sirloin steak served with chunky chips, roasted tomato and mushroom',                     32.00, 1),
(2, 'Fillet Steak',                 '8oz Irish fillet steak with béarnaise sauce, fries and seasonal vegetables',                         42.00, 1),
(2, 'Beef Burger',                  'House beef burger with smoked cheddar, lettuce, tomato, pickles and fries',                          16.50, 1),
(2, 'Slow Braised Beef Cheek',      'Tender slow cooked beef cheek with creamy mash, roasted carrots and red wine jus',                   26.00, 1),
(2, 'Beef and Guinness Pie',        'Rich beef and Guinness pie with shortcrust pastry, mash and seasonal vegetables',                    19.00, 1),
-- Mains - Poultry
(2, 'Roast Half Chicken',           'Herb roasted half chicken with roast potatoes, seasonal veg and gravy',                              19.50, 1),
(2, 'Chicken Parmesan',             'Breaded chicken breast with marinara sauce, melted mozzarella and spaghetti',                        18.50, 1),
(2, 'Chicken Caesar Salad',         'Grilled chicken breast with cos lettuce, parmesan, croutons and Caesar dressing',                    15.00, 1),
(2, 'Duck Breast',                  'Pan seared duck breast with sweet potato puree, pak choi and cherry jus',                            28.00, 1),
(2, 'Chicken Curry',                'Tender chicken in a rich spiced sauce with basmati rice, naan and mango chutney',                    17.50, 1),
-- Mains - Pasta
(2, 'Spaghetti Carbonara',          'Spaghetti with smoked bacon, egg yolk, parmesan and black pepper',                                   15.50, 1),
(2, 'Penne Arrabbiata',             'Penne pasta in a spicy tomato sauce with garlic, chilli and fresh basil',                            13.50, 1),
(2, 'Tagliatelle Bolognese',        'Slow cooked beef ragu with fresh tagliatelle and parmesan',                                          16.00, 1),
(2, 'Seafood Linguine',             'Linguine with prawns, mussels and clams in a white wine and garlic sauce',                           22.00, 1),
(2, 'Truffle Mushroom Risotto',     'Creamy arborio rice with wild mushrooms, black truffle and aged parmesan',                           17.50, 1),
-- Mains - Pork
(2, 'Pork Belly',                   'Slow roasted pork belly with apple puree, colcannon and cider jus',                                  22.00, 1),
(2, 'Pork Tenderloin',              'Pan seared pork tenderloin with creamy mustard sauce, roast potatoes and greens',                    21.00, 1),
(2, 'Pulled Pork Sandwich',         'Slow cooked pulled pork with coleslaw and BBQ sauce in a brioche bun with fries',                    15.50, 1),
(2, 'Pork Rack',                    'Roasted rack of pork with crackling, apple sauce, roast potatoes and seasonal veg',                  28.00, 1),
(2, 'Pork and Chorizo Stew',        'Hearty pork and chorizo stew with crusty bread and butter',                                          18.00, 1),
-- Mains - Seafood
(2, 'Fish and Chips',               'Beer battered haddock with chunky chips, mushy peas and tartare sauce',                              17.00, 1),
(2, 'Grilled Salmon',               'Atlantic salmon fillet with dill butter, new potatoes and seasonal greens',                          22.00, 1),
(2, 'Seafood Chowder',              'Creamy chowder with cod, salmon, prawns and mussels served with brown bread',                        14.00, 1),
-- Sides
(2, 'Chunky Chips',                 'Thick cut golden chips with sea salt',                                                               4.50,  1),
(2, 'Truffle Fries',                'Thin cut fries with truffle oil, parmesan and fresh herbs',                                          5.50,  1),
(2, 'Seasonal Vegetables',          'Buttered seasonal vegetables',                                                                       4.00,  1),
(2, 'Side Salad',                   'Mixed leaves with cherry tomatoes, cucumber and house dressing',                                     4.00,  1),
(2, 'Onion Rings',                  'Crispy battered onion rings with dipping sauce',                                                     4.50,  1),
-- Desserts
(2, 'Sticky Toffee Pudding',        'Warm sticky toffee pudding with vanilla ice cream and toffee sauce',                                 8.00,  1),
(2, 'Chocolate Lava Cake',          'Warm chocolate fondant with a molten centre served with vanilla ice cream',                          8.50,  1),
(2, 'Cheesecake of the Day',        'Ask your server for todays cheesecake selection',                                                    7.50,  1),
(2, 'Creme Brulee',                 'Classic vanilla creme brulee with a caramelised sugar crust',                                        7.50,  1),
(2, 'Ice Cream Selection',          'Three scoops of homemade ice cream with your choice of sauce',                                       6.50,  1),
(2, 'Warm Brownie',                 'Warm chocolate brownie with salted caramel ice cream and chocolate sauce',                           8.00,  1),
-- Kids Menu
(2, 'Kids Chicken Nuggets',         'Homemade chicken nuggets with chips and baked beans',                                                8.00,  1),
(2, 'Kids Pasta',                   'Penne pasta with tomato sauce and parmesan',                                                         7.50,  1),
(2, 'Kids Burger',                  'Mini beef burger with chips and ketchup',                                                            8.00,  1),
(2, 'Kids Fish Goujons',            'Crispy fish goujons with chips and peas',                                                            8.00,  1),
(2, 'Kids Sausages',                'Pork sausages with mash and peas',                                                                   7.50,  1);
INSERT INTO Dishes (LocationID, DishName, Description, Price, Active)
VALUES
(1, 'Lamb Shank',  'Slow braised Irish lamb shank with creamy mash, roasted root vegetables and rosemary jus', 26.00, 1),
(2, 'Seafood Platter', 'Fresh Atlantic prawns, smoked salmon, crab claws and oysters served with brown bread and lemon butter', 38.00, 1);

--Ingredients
INSERT INTO Ingredients (IngredientName, IngredientStock)
VALUES
-- Meats
('Beef Sirloin',            50),
('Beef Ribeye',             40),
('Beef Mince',              80),
('Beef Short Rib',          30),
('Beef Cheek',              25),
('Beef Fillet',             20),
('Chicken Breast',          100),
('Chicken Thigh',           80),
('Chicken Wings',           120),
('Chicken Liver',           40),
('Duck Leg',                30),
('Duck Breast',             25),
('Pork Belly',              45),
('Pork Tenderloin',         35),
('Pork Sausages',           90),
('Pork Rack',               20),
('Pulled Pork',             40),
('Bacon Rashers',           100),
('Black Pudding',           60),
('White Pudding',           60),
('Chorizo',                 50),
('Lamb Shank',              30),

-- Seafood
('Cod Fillet',              40),
('Haddock Fillet',          35),
('Salmon Fillet',           50),
('Smoked Salmon',           40),
('Atlantic Prawns',         60),
('Mussels',                 50),
('Clams',                   40),
('Calamari',                45),
('Crab Claws',              20),
('Oysters',                 30),

-- Vegetables
('Garlic',                  200),
('Onion',                   200),
('Red Onion',               150),
('Shallots',                100),
('Carrots',                 150),
('Celery',                  100),
('Leek',                    80),
('Mushrooms',               150),
('Wild Mushrooms',          60),
('Cherry Tomatoes',         150),
('Plum Tomatoes',           100),
('Spinach',                 120),
('Rocket',                  100),
('Cos Lettuce',             80),
('Mixed Leaves',            100),
('Cucumber',                80),
('Red Cabbage',             60),
('Pak Choi',                40),
('Sweet Potato',            80),
('Rooster Potatoes',        300),
('New Potatoes',            150),
('Broccoli',                100),
('Green Beans',             100),
('Asparagus',               60),
('Courgette',               80),
('Aubergine',               60),
('Red Pepper',              100),
('Yellow Pepper',           80),
('Chilli',                  100),

-- Dairy & Eggs
('Eggs',                    300),
('Butter',                  200),
('Double Cream',            150),
('Cheddar Cheese',          100),
('Mozzarella',              80),
('Parmesan',                80),
('Brie',                    40),
('Goats Cheese',            40),
('Cream Cheese',            60),
('Milk',                    200),
('Sour Cream',              80),

-- Pasta & Grains
('Spaghetti',               100),
('Penne',                   100),
('Tagliatelle',             80),
('Linguine',                80),
('Arborio Rice',            80),
('Basmati Rice',            100),
('Sourdough Bread',         80),
('Brown Bread',             100),
('Ciabatta',                80),
('Brioche Buns',            60),
('Naan Bread',              60),

-- Herbs & Spices
('Fresh Basil',             100),
('Fresh Parsley',           100),
('Fresh Thyme',             100),
('Fresh Rosemary',          80),
('Fresh Dill',              80),
('Fresh Tarragon',          60),
('Bay Leaves',              100),
('Black Pepper',            200),
('Sea Salt',                200),
('Paprika',                 100),
('Cumin',                   80),
('Turmeric',                80),
('Chilli Flakes',           100),
('Dried Oregano',           100),
('Cinnamon',                80),
('Nutmeg',                  80),

-- Oils & Vinegars
('Olive Oil',               100),
('Extra Virgin Olive Oil',  80),
('Truffle Oil',             30),
('Vegetable Oil',           100),
('Sunflower Oil',           100),
('Balsamic Vinegar',        60),
('White Wine Vinegar',      60),
('Apple Cider Vinegar',     60),

-- Sauces & Condiments
('Tomato Puree',            100),
('Worcestershire Sauce',    80),
('Soy Sauce',               80),
('Hot Sauce',               80),
('BBQ Sauce',               100),
('Hoisin Sauce',            60),
('Dijon Mustard',           80),
('Wholegrain Mustard',      80),
('Mayonnaise',              100),
('Ketchup',                 100),
('Tartare Sauce',           60),
('Marie Rose Sauce',        60),
('Caesar Dressing',         60),
('Red Onion Marmalade',     40),
('Mango Chutney',           40),
('Cranberry Sauce',         40),
('Apple Sauce',             40),
('Horseradish Sauce',       40),

-- Stocks & Alcohol
('Beef Stock',              80),
('Chicken Stock',           80),
('Vegetable Stock',         80),
('Fish Stock',              60),
('Red Wine',                60),
('White Wine',              60),
('Guinness',                60),
('Cider',                   40),

-- Baking & Desserts
('Plain Flour',             150),
('Self Raising Flour',      100),
('Caster Sugar',            150),
('Brown Sugar',             100),
('Icing Sugar',             80),
('Dark Chocolate',          80),
('Milk Chocolate',          80),
('Cocoa Powder',            80),
('Vanilla Extract',         80),
('Baking Powder',           100),
('Breadcrumbs',             100),
('Panko Breadcrumbs',       80),

-- Fruits
('Lemons',                  150),
('Limes',                   100),
('Oranges',                 80),
('Apples',                  100),
('Cranberries',             60),
('Cherries',                60),

-- Miscellaneous
('Capers',                  60),
('Pickles',                 60),
('Coleslaw',                60),
('Custard',                 60),
('Vanilla Ice Cream',       80),
('Salted Caramel Sauce',    60),
('Toffee Sauce',            60),
('Mushy Peas',              60),
('Baked Beans',             80),
('Truffle',                 20);

-- Recipes
INSERT INTO Recipes (IngredientID, DishID, IngredientQuantity)
VALUES

-- ============================================================
-- LOCATION 1 (DUBLIN) MAINS
-- ============================================================

-- DishID 11 | Sirloin Steak
(1,   11, 280),  -- Beef Sirloin
(52,  11, 250),  -- Rooster Potatoes
(42,  11, 100),  -- Cherry Tomatoes
(40,  11, 80),   -- Mushrooms
(63,  11, 20),   -- Butter
(97,  11, 5),    -- Sea Salt
(88,  11, 3),    -- Black Pepper

-- DishID 12 | Ribeye Steak
(2,   12, 340),  -- Beef Ribeye
(52,  12, 200),  -- Rooster Potatoes
(64,  12, 100),  -- Double Cream
(88,  12, 10),   -- Black Pepper
(63,  12, 20),   -- Butter
(121, 12, 50),   -- Beef Stock
(54,  12, 80),   -- Broccoli
(55,  12, 60),   -- Green Beans
(97,  12, 5),    -- Sea Salt

-- DishID 13 | Beef Burger
(3,   13, 200),  -- Beef Mince
(65,  13, 40),   -- Cheddar Cheese
(46,  13, 30),   -- Cos Lettuce
(43,  13, 60),   -- Plum Tomatoes
(110, 13, 30),   -- Pickles
(79,  13, 1),    -- Brioche Bun
(52,  13, 200),  -- Rooster Potatoes
(109, 13, 20),   -- Ketchup
(108, 13, 20),   -- Mayonnaise
(97,  13, 3),    -- Sea Salt
(88,  13, 3),    -- Black Pepper

-- DishID 14 | Slow Braised Beef Short Rib
(4,   14, 350),  -- Beef Short Rib
(52,  14, 250),  -- Rooster Potatoes
(63,  14, 30),   -- Butter
(64,  14, 60),   -- Double Cream
(125, 14, 150),  -- Red Wine
(121, 14, 100),  -- Beef Stock
(34,  14, 80),   -- Onion
(37,  14, 60),   -- Carrots
(38,  14, 40),   -- Celery
(86,  14, 5),    -- Fresh Thyme
(88,  14, 3),    -- Black Pepper
(97,  14, 5),    -- Sea Salt

-- DishID 15 | Beef Stew
(3,   15, 300),  -- Beef Mince
(126, 15, 330),  -- Guinness
(121, 15, 150),  -- Beef Stock
(34,  15, 100),  -- Onion
(37,  15, 100),  -- Carrots
(38,  15, 60),   -- Celery
(40,  15, 80),   -- Mushrooms
(52,  15, 250),  -- Rooster Potatoes
(63,  15, 30),   -- Butter
(71,  15, 50),   -- Milk
(44,  15, 60),   -- Spinach
(86,  15, 5),    -- Fresh Thyme
(88,  15, 3),    -- Black Pepper
(97,  15, 5),    -- Sea Salt
(77,  15, 80),   -- Brown Bread

-- DishID 16 | Roast Half Chicken
(7,   16, 500),  -- Chicken Breast
(52,  16, 250),  -- Rooster Potatoes
(63,  16, 30),   -- Butter
(84,  16, 5),    -- Fresh Rosemary
(86,  16, 5),    -- Fresh Thyme
(33,  16, 10),   -- Garlic
(122, 16, 100),  -- Chicken Stock
(54,  16, 80),   -- Broccoli
(55,  16, 60),   -- Green Beans
(97,  16, 5),    -- Sea Salt
(88,  16, 3),    -- Black Pepper

-- DishID 17 | Chicken Parmesan
(7,   17, 200),  -- Chicken Breast
(73,  17, 180),  -- Spaghetti
(66,  17, 80),   -- Mozzarella
(43,  17, 150),  -- Plum Tomatoes
(33,  17, 10),   -- Garlic
(83,  17, 5),    -- Fresh Basil
(134, 17, 80),   -- Breadcrumbs
(62,  17, 1),    -- Eggs
(96,  17, 10),   -- Olive Oil
(97,  17, 5),    -- Sea Salt
(88,  17, 3),    -- Black Pepper

-- DishID 18 | Chicken Caesar Salad
(7,   18, 180),  -- Chicken Breast
(46,  18, 120),  -- Cos Lettuce
(67,  18, 40),   -- Parmesan
(76,  18, 40),   -- Sourdough Bread
(113, 18, 60),   -- Caesar Dressing
(96,  18, 10),   -- Olive Oil
(97,  18, 5),    -- Sea Salt
(88,  18, 3),    -- Black Pepper

-- DishID 19 | Duck Confit
(11,  19, 350),  -- Duck Leg
(52,  19, 250),  -- Rooster Potatoes
(64,  19, 150),  -- Double Cream
(49,  19, 100),  -- Red Cabbage
(139, 19, 2),    -- Oranges
(63,  19, 20),   -- Butter
(33,  19, 10),   -- Garlic
(121, 19, 80),   -- Beef Stock
(97,  19, 5),    -- Sea Salt
(88,  19, 3),    -- Black Pepper

-- DishID 20 | Chicken Tikka Masala
(7,   20, 200),  -- Chicken Breast
(43,  20, 200),  -- Plum Tomatoes
(64,  20, 100),  -- Double Cream
(34,  20, 80),   -- Onion
(33,  20, 15),   -- Garlic
(91,  20, 10),   -- Cumin
(90,  20, 10),   -- Paprika
(92,  20, 5),    -- Turmeric
(75,  20, 180),  -- Basmati Rice
(80,  20, 1),    -- Naan Bread
(96,  20, 15),   -- Olive Oil
(97,  20, 5),    -- Sea Salt

-- DishID 21 | Spaghetti Carbonara
(73,  21, 180),  -- Spaghetti
(18,  21, 100),  -- Bacon Rashers
(62,  21, 3),    -- Eggs
(67,  21, 60),   -- Parmesan
(88,  21, 5),    -- Black Pepper
(97,  21, 5),    -- Sea Salt
(96,  21, 10),   -- Olive Oil

-- DishID 22 | Penne Arrabbiata
(74,  22, 180),  -- Penne
(43,  22, 200),  -- Plum Tomatoes
(33,  22, 15),   -- Garlic
(61,  22, 10),   -- Chilli
(83,  22, 10),   -- Fresh Basil
(96,  22, 20),   -- Olive Oil
(97,  22, 5),    -- Sea Salt
(88,  22, 3),    -- Black Pepper

-- DishID 23 | Tagliatelle Bolognese
(75,  23, 180),  -- Tagliatelle
(3,   23, 200),  -- Beef Mince
(34,  23, 80),   -- Onion
(37,  23, 60),   -- Carrots
(38,  23, 40),   -- Celery
(33,  23, 10),   -- Garlic
(43,  23, 150),  -- Plum Tomatoes
(102, 23, 30),   -- Tomato Puree
(125, 23, 100),  -- Red Wine
(67,  23, 40),   -- Parmesan
(96,  23, 15),   -- Olive Oil
(97,  23, 5),    -- Sea Salt
(88,  23, 3),    -- Black Pepper

-- DishID 24 | Seafood Linguine
(76,  24, 180),  -- Linguine
(27,  24, 100),  -- Atlantic Prawns
(28,  24, 100),  -- Mussels
(29,  24, 80),   -- Clams
(33,  24, 15),   -- Garlic
(126, 24, 150),  -- White Wine
(83,  24, 10),   -- Fresh Basil
(97,  24, 10),   -- Extra Virgin Olive Oil
(88,  24, 3),    -- Black Pepper

-- DishID 25 | Mushroom Risotto
(74,  25, 180),  -- Arborio Rice
(41,  25, 150),  -- Wild Mushrooms
(40,  25, 80),   -- Mushrooms
(99,  25, 10),   -- Truffle Oil
(67,  25, 50),   -- Parmesan
(34,  25, 60),   -- Onion
(33,  25, 10),   -- Garlic
(123, 25, 150),  -- Vegetable Stock
(63,  25, 30),   -- Butter
(125, 25, 100),  -- White Wine
(97,  25, 5),    -- Sea Salt
(88,  25, 3),    -- Black Pepper

-- DishID 26 | Pork Belly
(13,  26, 350),  -- Pork Belly
(52,  26, 250),  -- Rooster Potatoes
(63,  26, 30),   -- Butter
(71,  26, 50),   -- Milk
(44,  26, 60),   -- Spinach
(118, 26, 60),   -- Apple Sauce
(127, 26, 150),  -- Cider
(122, 26, 80),   -- Chicken Stock
(97,  26, 5),    -- Sea Salt
(88,  26, 3),    -- Black Pepper

-- DishID 27 | Pork Tenderloin
(14,  27, 250),  -- Pork Tenderloin
(52,  27, 250),  -- Rooster Potatoes
(64,  27, 100),  -- Double Cream
(107, 27, 20),   -- Wholegrain Mustard
(106, 27, 10),   -- Dijon Mustard
(122, 27, 80),   -- Chicken Stock
(63,  27, 20),   -- Butter
(44,  27, 80),   -- Spinach
(97,  27, 5),    -- Sea Salt
(88,  27, 3),    -- Black Pepper

-- DishID 28 | Pulled Pork Sandwich
(17,  28, 200),  -- Pulled Pork
(104, 28, 60),   -- BBQ Sauce
(79,  28, 1),    -- Brioche Bun
(111, 28, 60),   -- Coleslaw
(52,  28, 200),  -- Rooster Potatoes
(97,  28, 3),    -- Sea Salt

-- DishID 29 | Pork Schnitzel
(14,  29, 220),  -- Pork Tenderloin
(134, 29, 80),   -- Breadcrumbs
(62,  29, 2),    -- Eggs
(109, 29, 20),   -- Capers
(136, 29, 1),    -- Lemons
(52,  29, 200),  -- Rooster Potatoes
(100, 29, 200),  -- Vegetable Oil
(97,  29, 5),    -- Sea Salt
(88,  29, 3),    -- Black Pepper

-- DishID 30 | Irish Breakfast
(18,  30, 100),  -- Bacon Rashers
(15,  30, 120),  -- Pork Sausages
(19,  30, 60),   -- Black Pudding
(20,  30, 60),   -- White Pudding
(62,  30, 2),    -- Eggs
(40,  30, 60),   -- Mushrooms
(76,  30, 60),   -- Sourdough Bread
(63,  30, 20),   -- Butter
(109, 30, 20),   -- Ketchup
(97,  30, 3),    -- Sea Salt

-- DishID 31 | Fish and Chips
(23,  31, 220),  -- Cod Fillet
(52,  31, 250),  -- Rooster Potatoes
(128, 31, 150),  -- Plain Flour
(62,  31, 1),    -- Eggs
(126, 31, 150),  -- Guinness
(155, 31, 80),   -- Mushy Peas
(111, 31, 40),   -- Tartare Sauce
(100, 31, 200),  -- Vegetable Oil
(97,  31, 5),    -- Sea Salt

-- DishID 32 | Grilled Salmon
(25,  32, 220),  -- Salmon Fillet
(53,  32, 200),  -- New Potatoes
(63,  32, 30),   -- Butter
(85,  32, 10),   -- Fresh Dill
(55,  32, 80),   -- Green Beans
(56,  32, 60),   -- Asparagus
(136, 32, 1),    -- Lemons
(97,  32, 5),    -- Sea Salt
(88,  32, 3),    -- Black Pepper

-- DishID 33 | Seafood Chowder
(23,  33, 100),  -- Cod Fillet
(25,  33, 100),  -- Salmon Fillet
(27,  33, 80),   -- Atlantic Prawns
(28,  33, 80),   -- Mussels
(64,  33, 200),  -- Double Cream
(34,  33, 60),   -- Onion
(39,  33, 60),   -- Leek
(37,  33, 60),   -- Carrots
(124, 33, 150),  -- Fish Stock
(52,  33, 100),  -- Rooster Potatoes
(63,  33, 20),   -- Butter
(77,  33, 80),   -- Brown Bread
(97,  33, 5),    -- Sea Salt
(88,  33, 3),    -- Black Pepper

-- ============================================================
-- LOCATION 2 (CORK) MAINS
-- ============================================================

-- DishID 61 | Sirloin Steak
(1,   61, 280),  -- Beef Sirloin
(52,  61, 250),  -- Rooster Potatoes
(42,  61, 100),  -- Cherry Tomatoes
(40,  61, 80),   -- Mushrooms
(63,  61, 20),   -- Butter
(97,  61, 5),    -- Sea Salt
(88,  61, 3),    -- Black Pepper

-- DishID 62 | Fillet Steak
(6,   62, 225),  -- Beef Fillet
(52,  62, 200),  -- Rooster Potatoes
(62,  62, 2),    -- Eggs
(63,  62, 80),   -- Butter
(86,  62, 5),    -- Fresh Tarragon
(98,  62, 20),   -- White Wine Vinegar
(54,  62, 80),   -- Broccoli
(55,  62, 60),   -- Green Beans
(97,  62, 5),    -- Sea Salt
(88,  62, 3),    -- Black Pepper

-- DishID 63 | Beef Burger
(3,   63, 200),  -- Beef Mince
(65,  63, 40),   -- Cheddar Cheese
(46,  63, 30),   -- Cos Lettuce
(43,  63, 60),   -- Plum Tomatoes
(110, 63, 30),   -- Pickles
(79,  63, 1),    -- Brioche Bun
(52,  63, 200),  -- Rooster Potatoes
(109, 63, 20),   -- Ketchup
(108, 63, 20),   -- Mayonnaise
(97,  63, 3),    -- Sea Salt
(88,  63, 3),    -- Black Pepper

-- DishID 64 | Slow Braised Beef Cheek
(5,   64, 350),  -- Beef Cheek
(52,  64, 250),  -- Rooster Potatoes
(63,  64, 30),   -- Butter
(64,  64, 60),   -- Double Cream
(125, 64, 150),  -- Red Wine
(121, 64, 100),  -- Beef Stock
(37,  64, 100),  -- Carrots
(34,  64, 60),   -- Onion
(86,  64, 5),    -- Fresh Thyme
(97,  64, 5),    -- Sea Salt
(88,  64, 3),    -- Black Pepper

-- DishID 65 | Beef and Guinness Pie
(3,   65, 300),  -- Beef Mince
(126, 65, 330),  -- Guinness
(121, 65, 150),  -- Beef Stock
(34,  65, 100),  -- Onion
(37,  65, 80),   -- Carrots
(40,  65, 80),   -- Mushrooms
(128, 65, 200),  -- Plain Flour
(63,  65, 100),  -- Butter
(52,  65, 250),  -- Rooster Potatoes
(86,  65, 5),    -- Fresh Thyme
(97,  65, 5),    -- Sea Salt
(88,  65, 3),    -- Black Pepper

-- DishID 66 | Roast Half Chicken
(7,   66, 500),  -- Chicken Breast
(52,  66, 250),  -- Rooster Potatoes
(63,  66, 30),   -- Butter
(84,  66, 5),    -- Fresh Rosemary
(86,  66, 5),    -- Fresh Thyme
(33,  66, 10),   -- Garlic
(122, 66, 100),  -- Chicken Stock
(54,  66, 80),   -- Broccoli
(55,  66, 60),   -- Green Beans
(97,  66, 5),    -- Sea Salt
(88,  66, 3),    -- Black Pepper

-- DishID 67 | Chicken Parmesan
(7,   67, 200),  -- Chicken Breast
(73,  67, 180),  -- Spaghetti
(66,  67, 80),   -- Mozzarella
(43,  67, 150),  -- Plum Tomatoes
(33,  67, 10),   -- Garlic
(83,  67, 5),    -- Fresh Basil
(134, 67, 80),   -- Breadcrumbs
(62,  67, 1),    -- Eggs
(96,  67, 10),   -- Olive Oil
(97,  67, 5),    -- Sea Salt
(88,  67, 3),    -- Black Pepper

-- DishID 68 | Chicken Caesar Salad
(7,   68, 180),  -- Chicken Breast
(46,  68, 120),  -- Cos Lettuce
(67,  68, 40),   -- Parmesan
(76,  68, 40),   -- Sourdough Bread
(113, 68, 60),   -- Caesar Dressing
(96,  68, 10),   -- Olive Oil
(97,  68, 5),    -- Sea Salt
(88,  68, 3),    -- Black Pepper

-- DishID 69 | Duck Breast
(12,  69, 250),  -- Duck Breast
(51,  69, 200),  -- Sweet Potato
(50,  69, 100),  -- Pak Choi
(63,  69, 20),   -- Butter
(141, 69, 80),   -- Cherries
(121, 69, 80),   -- Beef Stock
(33,  69, 10),   -- Garlic
(97,  69, 5),    -- Sea Salt
(88,  69, 3),    -- Black Pepper

-- DishID 70 | Chicken Curry
(7,   70, 200),  -- Chicken Breast
(43,  70, 200),  -- Plum Tomatoes
(64,  70, 100),  -- Double Cream
(34,  70, 80),   -- Onion
(33,  70, 15),   -- Garlic
(91,  70, 10),   -- Cumin
(90,  70, 10),   -- Paprika
(92,  70, 5),    -- Turmeric
(75,  70, 180),  -- Basmati Rice
(80,  70, 1),    -- Naan Bread
(115, 70, 40),   -- Mango Chutney
(96,  70, 15),   -- Olive Oil
(97,  70, 5),    -- Sea Salt

-- DishID 71 | Spaghetti Carbonara
(73,  71, 180),  -- Spaghetti
(18,  71, 100),  -- Bacon Rashers
(62,  71, 3),    -- Eggs
(67,  71, 60),   -- Parmesan
(88,  71, 5),    -- Black Pepper
(97,  71, 5),    -- Sea Salt
(96,  71, 10),   -- Olive Oil

-- DishID 72 | Penne Arrabbiata
(74,  72, 180),  -- Penne
(43,  72, 200),  -- Plum Tomatoes
(33,  72, 15),   -- Garlic
(61,  72, 10),   -- Chilli
(83,  72, 10),   -- Fresh Basil
(96,  72, 20),   -- Olive Oil
(97,  72, 5),    -- Sea Salt
(88,  72, 3),    -- Black Pepper

-- DishID 73 | Tagliatelle Bolognese
(75,  73, 180),  -- Tagliatelle
(3,   73, 200),  -- Beef Mince
(34,  73, 80),   -- Onion
(37,  73, 60),   -- Carrots
(38,  73, 40),   -- Celery
(33,  73, 10),   -- Garlic
(43,  73, 150),  -- Plum Tomatoes
(102, 73, 30),   -- Tomato Puree
(125, 73, 100),  -- Red Wine
(67,  73, 40),   -- Parmesan
(96,  73, 15),   -- Olive Oil
(97,  73, 5),    -- Sea Salt
(88,  73, 3),    -- Black Pepper

-- DishID 74 | Seafood Linguine
(76,  74, 180),  -- Linguine
(27,  74, 100),  -- Atlantic Prawns
(28,  74, 100),  -- Mussels
(29,  74, 80),   -- Clams
(33,  74, 15),   -- Garlic
(126, 74, 150),  -- White Wine
(83,  74, 10),   -- Fresh Basil
(97,  74, 10),   -- Extra Virgin Olive Oil
(88,  74, 3),    -- Black Pepper

-- DishID 75 | Truffle Mushroom Risotto
(74,  75, 180),  -- Arborio Rice
(41,  75, 150),  -- Wild Mushrooms
(40,  75, 80),   -- Mushrooms
(157, 75, 20),   -- Truffle
(99,  75, 10),   -- Truffle Oil
(67,  75, 60),   -- Parmesan
(34,  75, 60),   -- Onion
(33,  75, 10),   -- Garlic
(123, 75, 150),  -- Vegetable Stock
(63,  75, 30),   -- Butter
(126, 75, 100),  -- White Wine
(97,  75, 5),    -- Sea Salt
(88,  75, 3),    -- Black Pepper

-- DishID 76 | Pork Belly
(13,  76, 350),  -- Pork Belly
(52,  76, 250),  -- Rooster Potatoes
(63,  76, 30),   -- Butter
(71,  76, 50),   -- Milk
(44,  76, 60),   -- Spinach
(140, 76, 2),    -- Apples
(127, 76, 150),  -- Cider
(122, 76, 80),   -- Chicken Stock
(97,  76, 5),    -- Sea Salt
(88,  76, 3),    -- Black Pepper

-- DishID 77 | Pork Tenderloin
(14,  77, 250),  -- Pork Tenderloin
(52,  77, 250),  -- Rooster Potatoes
(64,  77, 100),  -- Double Cream
(107, 77, 20),   -- Wholegrain Mustard
(106, 77, 10),   -- Dijon Mustard
(122, 77, 80),   -- Chicken Stock
(63,  77, 20),   -- Butter
(44,  77, 80),   -- Spinach
(97,  77, 5),    -- Sea Salt
(88,  77, 3),    -- Black Pepper

-- DishID 78 | Pulled Pork Sandwich
(17,  78, 200),  -- Pulled Pork
(104, 78, 60),   -- BBQ Sauce
(79,  78, 1),    -- Brioche Bun
(111, 78, 60),   -- Coleslaw
(52,  78, 200),  -- Rooster Potatoes
(97,  78, 3),    -- Sea Salt

-- DishID 79 | Pork Rack
(16,  79, 450),  -- Pork Rack
(118, 79, 60),   -- Apple Sauce
(52,  79, 250),  -- Rooster Potatoes
(54,  79, 80),   -- Broccoli
(55,  79, 60),   -- Green Beans
(63,  79, 20),   -- Butter
(84,  79, 5),    -- Fresh Rosemary
(97,  79, 5),    -- Sea Salt
(88,  79, 3),    -- Black Pepper

-- DishID 80 | Pork and Chorizo Stew
(13,  80, 250),  -- Pork Belly
(21,  80, 100),  -- Chorizo
(43,  80, 200),  -- Plum Tomatoes
(34,  80, 80),   -- Onion
(33,  80, 10),   -- Garlic
(59,  80, 80),   -- Red Pepper
(122, 80, 150),  -- Chicken Stock
(86,  80, 5),    -- Fresh Thyme
(76,  80, 100),  -- Sourdough Bread
(63,  80, 20),   -- Butter
(97,  80, 5),    -- Sea Salt
(88,  80, 3),    -- Black Pepper

-- DishID 81 | Fish and Chips
(24,  81, 220),  -- Haddock Fillet
(52,  81, 250),  -- Rooster Potatoes
(128, 81, 150),  -- Plain Flour
(62,  81, 1),    -- Eggs
(126, 81, 150),  -- Guinness
(155, 81, 80),   -- Mushy Peas
(111, 81, 40),   -- Tartare Sauce
(100, 81, 200),  -- Vegetable Oil
(97,  81, 5),    -- Sea Salt

-- DishID 82 | Grilled Salmon
(25,  82, 220),  -- Salmon Fillet
(53,  82, 200),  -- New Potatoes
(63,  82, 30),   -- Butter
(85,  82, 10),   -- Fresh Dill
(55,  82, 80),   -- Green Beans
(56,  82, 60),   -- Asparagus
(136, 82, 1),    -- Lemons
(97,  82, 5),    -- Sea Salt
(88,  82, 3),    -- Black Pepper

-- DishID 83 | Seafood Chowder
(23,  83, 100),  -- Cod Fillet
(25,  83, 100),  -- Salmon Fillet
(27,  83, 80),   -- Atlantic Prawns
(28,  83, 80),   -- Mussels
(64,  83, 200),  -- Double Cream
(34,  83, 60),   -- Onion
(39,  83, 60),   -- Leek
(37,  83, 60),   -- Carrots
(124, 83, 150),  -- Fish Stock
(52,  83, 100),  -- Rooster Potatoes
(63,  83, 20),   -- Butter
(77,  83, 80),   -- Brown Bread
(97,  83, 5),    -- Sea Salt
(88,  83, 3),    -- Black Pepper

-- ============================================================
-- ADDITIONAL DISHES
-- ============================================================

-- DishID 101 | Lamb Shank (L1)
(22,  101, 400), -- Lamb Shank
(52,  101, 250), -- Rooster Potatoes
(63,  101, 30),  -- Butter
(64,  101, 60),  -- Double Cream
(37,  101, 100), -- Carrots
(84,  101, 10),  -- Fresh Rosemary
(121, 101, 100), -- Beef Stock
(125, 101, 100), -- Red Wine
(97,  101, 5),   -- Sea Salt
(88,  101, 3),   -- Black Pepper

-- DishID 102 | Seafood Platter (L2)
(27,  102, 150), -- Atlantic Prawns
(26,  102, 100), -- Smoked Salmon
(31,  102, 120), -- Crab Claws
(32,  102, 6),   -- Oysters
(77,  102, 80),  -- Brown Bread
(63,  102, 40),  -- Butter
(136, 102, 1),   -- Lemons
(97,  102, 5);   -- Sea Salt

-- Customers
INSERT INTO Customers (CustFName, CustLName, PhoneNum, Email, Age, FavoriteDish, FavoriteEmployee)
VALUES
('Ciarán', 'OShea', '0871234599', 'ciaran.oshea@gmail.com', 29, 47, 18);
('Liam',      'Murphy',      '0851234567', 'liam.murphy@gmail.com',        34, 87,  12),
('Aoife',     'Kelly',       '0872345678', 'aoife.kelly@hotmail.com',       28, 3,   7),
('Conor',     'Ryan',        '0863456789', 'conor.ryan@gmail.com',          45, 56,  23),
('Siobhan',   'OBrien',      '0854567890', 'siobhan.obrien@yahoo.com',      31, 14,  38),
('Padraig',   'Walsh',       '0875678901', 'padraig.walsh@gmail.com',       52, 72,  5),
('Niamh',     'Smith',       '0866789012', 'niamh.smith@hotmail.com',       26, 99,  17),
('Eoin',      'OConnor',     '0857890123', 'eoin.oconnor@gmail.com',        39, 41,  2),
('Ciara',     'Byrne',       '0878901234', 'ciara.byrne@yahoo.com',         22, 8,   31),
('Declan',    'ONeill',      '0869012345', 'declan.oneill@gmail.com',       47, 63,  14),
('Roisin',    'McCarthy',    '0850123456', 'roisin.mccarthy@hotmail.com',   33, 27,  9),
('Fergal',    'Doyle',       '0871234560', 'fergal.doyle@gmail.com',        29, 5,   36),
('Aisling',   'Hughes',      '0862345671', 'aisling.hughes@yahoo.com',      41, 82,  21),
('Sean',      'Farrell',     '0853456782', 'sean.farrell@gmail.com',        55, 19,  3),
('Orla',      'Quinn',       '0874567893', 'orla.quinn@hotmail.com',        24, 47,  28),
('Brendan',   'Gallagher',   '0865678904', 'brendan.gallagher@gmail.com',   37, 91,  16),
('Sinead',    'Doherty',     '0856789015', 'sinead.doherty@yahoo.com',      30, 33,  40),
('Cillian',   'Kennedy',     '0877890126', 'cillian.kennedy@gmail.com',     43, 68,  11),
('Grainne',   'Lynch',       '0868901237', 'grainne.lynch@hotmail.com',     27, 12,  25),
('Darragh',   'Murray',      '0859012348', 'darragh.murray@gmail.com',      50, 76,  6),
('Fiona',     'OSullivan',   '0870123459', 'fiona.osullivan@yahoo.com',     35, 24,  33),
('Ronan',     'Fitzpatrick', '0861234560', 'ronan.fitzpatrick@gmail.com',   48, 55,  19),
('Caoimhe',   'Brennan',     '0852345671', 'caoimhe.brennan@hotmail.com',   23, 38,  8),
('Diarmuid',  'Power',       '0873456782', 'diarmuid.power@gmail.com',      36, 100, 34),
('Clodagh',   'Nolan',       '0864567893', 'clodagh.nolan@yahoo.com',       29, 7,   1),
('Cathal',    'Fleming',     '0855678904', 'cathal.fleming@gmail.com',      53, 44,  27),
('Aoibhe',    'Sheridan',    '0876789015', 'aoibhe.sheridan@hotmail.com',   21, 61,  15),
('Killian',   'OReilly',     '0867890126', 'killian.oreilly@gmail.com',     44, 29,  39),
('Sorcha',    'Daly',        '0858901237', 'sorcha.daly@yahoo.com',         32, 83,  22),
('Tadhg',     'Healy',       '0879012348', 'tadhg.healy@gmail.com',         57, 16,  4),
('Maeve',     'Burke',       '0860123459', 'maeve.burke@hotmail.com',       26, 52,  30),
('Cormac',    'Moran',       '0851234568', 'cormac.moran@gmail.com',        40, 93,  13),
('Eimear',    'Connolly',    '0872345679', 'eimear.connolly@yahoo.com',     34, 37,  37),
('Ruairi',    'Kavanagh',    '0863456780', 'ruairi.kavanagh@gmail.com',     49, 71,  20),
('Niamh',     'Boyle',       '0854567891', 'niamh.boyle@hotmail.com',       25, 9,   10),
('Donagh',    'OCallaghan',  '0875678902', 'donagh.ocallaghan@gmail.com',   38, 48,  29),
('Emer',      'Reilly',      '0866789013', 'emer.reilly@yahoo.com',         31, 85,  18),
('Cian',      'Higgins',     '0857890124', 'cian.higgins@gmail.com',        46, 22,  35),
('Sadhbh',    'OGorman',     '0878901235', 'sadhbh.ogorman@hotmail.com',    27, 64,  7),
('Oisin',     'Dunne',       '0869012346', 'oisin.dunne@gmail.com',         42, 31,  24),
('Laoise',    'Whelan',      '0850123457', 'laoise.whelan@yahoo.com',       29, 97,  32),
('Eanna',     'Stapleton',   '0871234561', 'eanna.stapleton@gmail.com',     54, 13,  6),
('Riona',     'Costello',    '0862345672', 'riona.costello@hotmail.com',    23, 58,  26),
('Fionn',     'McDonagh',    '0853456783', 'fionn.mcdonagh@gmail.com',      37, 40,  40),
('Ailbhe',    'Cronin',      '0874567894', 'ailbhe.cronin@yahoo.com',       30, 77,  3),
('Senan',     'Forde',       '0865678905', 'senan.forde@gmail.com',         45, 25,  17),
('Meadhbh',   'Regan',       '0856789016', 'meadhbh.regan@hotmail.com',     28, 89,  11),
('Tiarna',    'Foley',       '0877890127', 'tiarna.foley@gmail.com',        33, 6,   36),
('Caoilfhinn','Lyons',       '0868901238', 'caoilfhinn.lyons@yahoo.com',    51, 42,  21),
('Eoghan',    'Prendergast', '0859012349', 'eoghan.prendergast@gmail.com',  39, 74,  9),
('Blathnaid', 'Smyth',       '0870123450', 'blathnaid.smyth@hotmail.com',   26, 18,  38),
('James',     'OBrien',      '0861234561', 'james.obrien@gmail.com',        43, 96,  14),
('Emma',      'Walsh',       '0852345672', 'emma.walsh@yahoo.com',          31, 35,  28),
('Jack',      'Ryan',        '0873456783', 'jack.ryan@gmail.com',           56, 50,  2),
('Sophie',    'Kelly',       '0864567894', 'sophie.kelly@hotmail.com',      24, 11,  33),
('Harry',     'Murphy',      '0855678905', 'harry.murphy@gmail.com',        47, 67,  19),
('Emily',     'Smith',       '0876789016', 'emily.smith@yahoo.com',         29, 28,  5),
('Charlie',   'ONeill',      '0867890127', 'charlie.oneill@gmail.com',      35, 90,  31),
('Olivia',    'Byrne',       '0858901238', 'olivia.byrne@hotmail.com',      22, 43,  16),
('Noah',      'McCarthy',    '0879012349', 'noah.mccarthy@gmail.com',       48, 15,  39),
('Isabella',  'Doyle',       '0860123450', 'isabella.doyle@yahoo.com',      34, 79,  23),
('Lucas',     'Hughes',      '0851234569', 'lucas.hughes@gmail.com',        41, 2,   8),
('Mia',       'Farrell',     '0872345670', 'mia.farrell@hotmail.com',       27, 57,  34),
('Oliver',    'Quinn',       '0863456781', 'oliver.quinn@gmail.com',        52, 34,  12),
('Amelia',    'Gallagher',   '0854567892', 'amelia.gallagher@yahoo.com',    30, 88,  27),
('Elijah',    'Doherty',     '0875678903', 'elijah.doherty@gmail.com',      44, 21,  4),
('Ava',       'Kennedy',     '0866789014', 'ava.kennedy@hotmail.com',       26, 66,  37),
('William',   'Lynch',       '0857890125', 'william.lynch@gmail.com',       38, 49,  15),
('Sophia',    'Murray',      '0878901236', 'sophia.murray@yahoo.com',       32, 92,  30),
('James',     'OSullivan',   '0869012347', 'james.osullivan@gmail.com',     55, 10,  22),
('Charlotte', 'Fitzpatrick', '0850123458', 'charlotte.fitzpatrick@hotmail.com', 23, 73, 1),
('Benjamin',  'Brennan',     '0871234562', 'benjamin.brennan@gmail.com',    46, 36,  18),
('Isla',      'Power',       '0862345673', 'isla.power@yahoo.com',          28, 81,  35),
('Mason',     'Nolan',       '0853456784', 'mason.nolan@gmail.com',         40, 17,  10),
('Grace',     'Fleming',     '0874567895', 'grace.fleming@hotmail.com',     33, 95,  26),
('Logan',     'Sheridan',    '0865678906', 'logan.sheridan@gmail.com',      50, 4,   40),
('Lily',      'OReilly',     '0856789017', 'lily.oreilly@yahoo.com',        25, 62,  13),
('Ethan',     'Daly',        '0877890128', 'ethan.daly@gmail.com',          43, 26,  29),
('Hannah',    'Healy',       '0868901239', 'hannah.healy@hotmail.com',      37, 84,  7),
('Alexander', 'Burke',       '0859012340', 'alexander.burke@gmail.com',     29, 39,  20),
('Zoe',       'Moran',       '0870123451', 'zoe.moran@yahoo.com',           48, 70,  32),
('Daniel',    'Connolly',    '0861234562', 'daniel.connolly@gmail.com',     31, 23,  6),
('Chloe',     'Kavanagh',    '0852345673', 'chloe.kavanagh@hotmail.com',    26, 98,  25),
('Michael',   'Boyle',       '0873456784', 'michael.boyle@gmail.com',       53, 45,  38),
('Ella',      'OCallaghan',  '0864567895', 'ella.ocallaghan@yahoo.com',     22, 59,  11),
('Ryan',      'Reilly',      '0855678906', 'ryan.reilly@gmail.com',         36, 80,  3),
('Aria',      'Higgins',     '0876789017', 'aria.higgins@hotmail.com',      44, 32,  24),
('Dylan',     'OGorman',     '0867890128', 'dylan.ogorman@gmail.com',       27, 94,  16),
('Freya',     'Dunne',       '0858901239', 'freya.dunne@yahoo.com',         39, 1,   39),
('Luke',      'Whelan',      '0879012340', 'luke.whelan@gmail.com',         32, 53,  9),
('Zara',      'Stapleton',   '0860123451', 'zara.stapleton@hotmail.com',    57, 69,  34),
('Joshua',    'Costello',    '0851234560', 'joshua.costello@gmail.com',     24, 20,  2),
('Penelope',  'McDonagh',    '0872345671', 'penelope.mcdonagh@yahoo.com',   41, 86,  28),
('Thomas',    'Cronin',      '0863456782', 'thomas.cronin@gmail.com',       35, 46,  17),
('Scarlett',  'Forde',       '0854567893', 'scarlett.forde@hotmail.com',    28, 75,  36),
('Henry',     'Regan',       '0875678904', 'henry.regan@gmail.com',         49, 30,  5),
('Violet',    'Foley',       '0866789015', 'violet.foley@yahoo.com',        33, 78,  21),
('Sebastian', 'Lyons',       '0857890126', 'sebastian.lyons@gmail.com',     45, 54,  14),
('Aurora',    'Prendergast', '0878901237', 'aurora.prendergast@hotmail.com',27, 65,  33),
('Owen',      'Smyth',       '0869012348', 'owen.smyth@gmail.com',          38, 37,  8);

-- Orders
INSERT INTO Orders (OrderType, OrderTime, PaymentMethod, LocationID, OrderTotal, EmployeeID, CustID)
VALUES
('In-Person', '2024-01-05 12:15:00', 'Card',  1, 45.50,  3,  12),
('Online',    '2024-01-05 13:30:00', 'Card',  2, 32.00,  17, 45),
('In-Person', '2024-01-06 11:00:00', 'Cash',  1, 28.75,  8,  7),
('Online',    '2024-01-06 14:45:00', 'Card',  1, 67.20,  22, 33),
('In-Person', '2024-01-07 18:30:00', 'Cash',  2, 41.00,  35, 88),
('In-Person', '2024-01-07 19:15:00', 'Card',  1, 54.50,  11, 21),
('Online',    '2024-01-08 10:00:00', 'Card',  2, 38.75,  29, 64),
('In-Person', '2024-01-08 13:00:00', 'Cash',  1, 22.50,  4,  5),
('Online',    '2024-01-09 16:20:00', 'Card',  2, 89.00,  38, 92),
('In-Person', '2024-01-09 20:00:00', 'Card',  1, 47.25,  15, 17),
('In-Person', '2024-01-10 12:30:00', 'Cash',  2, 33.50,  7,  56),
('Online',    '2024-01-10 14:00:00', 'Card',  1, 61.00,  26, 39),
('In-Person', '2024-01-11 11:45:00', 'Card',  2, 29.75,  13, 73),
('Online',    '2024-01-11 17:30:00', 'Card',  1, 52.00,  40, 28),
('In-Person', '2024-01-12 13:15:00', 'Cash',  2, 36.50,  2,  81),
('In-Person', '2024-01-12 19:45:00', 'Card',  1, 74.25,  19, 14),
('Online',    '2024-01-13 09:30:00', 'Card',  2, 43.00,  31, 67),
('In-Person', '2024-01-13 12:00:00', 'Cash',  1, 27.50,  6,  49),
('Online',    '2024-01-14 15:45:00', 'Card',  2, 95.75,  24, 3),
('In-Person', '2024-01-14 18:00:00', 'Card',  1, 58.00,  37, 95),
('In-Person', '2024-01-15 11:30:00', 'Cash',  2, 31.25,  10, 42),
('Online',    '2024-01-15 14:15:00', 'Card',  1, 66.50,  28, 78),
('In-Person', '2024-01-16 12:45:00', 'Card',  2, 49.00,  1,  25),
('Online',    '2024-01-16 16:00:00', 'Card',  1, 82.75,  33, 60),
('In-Person', '2024-01-17 13:30:00', 'Cash',  2, 24.50,  16, 11),
('In-Person', '2024-01-17 19:00:00', 'Card',  1, 55.25,  39, 84),
('Online',    '2024-01-18 10:30:00', 'Card',  2, 37.00,  5,  37),
('In-Person', '2024-01-18 12:15:00', 'Cash',  1, 43.75,  21, 69),
('Online',    '2024-01-19 15:00:00', 'Card',  2, 71.50,  34, 2),
('In-Person', '2024-01-19 18:45:00', 'Card',  1, 39.00,  12, 53),
('In-Person', '2024-01-20 11:15:00', 'Cash',  2, 26.75,  27, 96),
('Online',    '2024-01-20 13:45:00', 'Card',  1, 63.50,  9,  18),
('In-Person', '2024-01-21 12:00:00', 'Card',  2, 48.25,  36, 71),
('Online',    '2024-01-21 16:30:00', 'Card',  1, 77.00,  23, 44),
('In-Person', '2024-01-22 13:45:00', 'Cash',  2, 34.50,  14, 87),
('In-Person', '2024-01-22 19:30:00', 'Card',  1, 59.75,  40, 30),
('Online',    '2024-01-23 09:00:00', 'Card',  2, 46.00,  18, 62),
('In-Person', '2024-01-23 11:30:00', 'Cash',  1, 21.25,  30, 9),
('Online',    '2024-01-24 14:00:00', 'Card',  2, 88.50,  7,  75),
('In-Person', '2024-01-24 17:45:00', 'Card',  1, 53.00,  25, 26),
('In-Person', '2024-01-25 12:30:00', 'Cash',  2, 30.75,  32, 98),
('Online',    '2024-01-25 15:15:00', 'Card',  1, 65.25,  11, 51),
('In-Person', '2024-01-26 11:00:00', 'Card',  2, 42.50,  20, 34),
('Online',    '2024-01-26 13:30:00', 'Card',  1, 79.00,  38, 77),
('In-Person', '2024-01-27 14:15:00', 'Cash',  2, 35.25,  4,  16),
('In-Person', '2024-01-27 18:30:00', 'Card',  1, 57.50,  15, 89),
('Online',    '2024-01-28 10:00:00', 'Card',  2, 44.75,  29, 43),
('In-Person', '2024-01-28 12:45:00', 'Cash',  1, 23.00,  6,  65),
('Online',    '2024-01-29 16:15:00', 'Card',  2, 93.25,  37, 8),
('In-Person', '2024-01-29 19:00:00', 'Card',  1, 50.50,  22, 100),
('In-Person', '2024-02-01 11:45:00', 'Cash',  2, 28.00,  13, 55),
('Online',    '2024-02-01 14:30:00', 'Card',  1, 69.75,  31, 22),
('In-Person', '2024-02-02 12:15:00', 'Card',  2, 45.00,  8,  79),
('Online',    '2024-02-02 15:45:00', 'Card',  1, 83.50,  26, 38),
('In-Person', '2024-02-03 13:00:00', 'Cash',  2, 32.25,  19, 91),
('In-Person', '2024-02-03 18:15:00', 'Card',  1, 61.75,  3,  13),
('Online',    '2024-02-04 09:45:00', 'Card',  2, 40.00,  35, 46),
('In-Person', '2024-02-04 11:30:00', 'Cash',  1, 25.50,  10, 68),
('Online',    '2024-02-05 14:00:00', 'Card',  2, 76.25,  28, 1),
('In-Person', '2024-02-05 17:45:00', 'Card',  1, 48.00,  40, 57),
('In-Person', '2024-02-06 12:00:00', 'Cash',  2, 29.50,  17, 83),
('Online',    '2024-02-06 13:30:00', 'Card',  1, 72.00,  24, 29),
('In-Person', '2024-02-07 11:15:00', 'Card',  2, 38.75,  9,  70),
('Online',    '2024-02-07 16:00:00', 'Card',  1, 91.50,  33, 15),
('In-Person', '2024-02-08 13:45:00', 'Cash',  2, 27.25,  1,  97),
('In-Person', '2024-02-08 19:15:00', 'Card',  1, 56.00,  36, 41),
('Online',    '2024-02-09 10:15:00', 'Card',  2, 64.75,  21, 24),
('In-Person', '2024-02-09 12:30:00', 'Cash',  1, 33.00,  14, 86),
('Online',    '2024-02-10 15:30:00', 'Card',  2, 87.25,  27, 6),
('In-Person', '2024-02-10 18:00:00', 'Card',  1, 51.50,  5,  72),
('In-Person', '2024-02-11 11:00:00', 'Cash',  2, 36.75,  39, 48),
('Online',    '2024-02-11 14:45:00', 'Card',  1, 68.00,  16, 93),
('In-Person', '2024-02-12 12:30:00', 'Card',  2, 43.25,  30, 19),
('Online',    '2024-02-12 16:15:00', 'Card',  1, 80.50,  12, 61),
('In-Person', '2024-02-13 13:00:00', 'Cash',  2, 31.00,  23, 35),
('In-Person', '2024-02-13 18:45:00', 'Card',  1, 59.25,  7,  76),
('Online',    '2024-02-14 09:30:00', 'Card',  2, 97.00,  34, 52),
('In-Person', '2024-02-14 12:00:00', 'Cash',  1, 44.50,  18, 4),
('Online',    '2024-02-15 15:00:00', 'Card',  2, 73.75,  32, 90),
('In-Person', '2024-02-15 17:30:00', 'Card',  1, 37.00,  11, 27),
('In-Person', '2024-02-16 11:30:00', 'Cash',  2, 25.75,  20, 63),
('Online',    '2024-02-16 14:00:00', 'Card',  1, 85.50,  38, 99),
('In-Person', '2024-02-17 12:45:00', 'Card',  2, 46.25,  6,  36),
('Online',    '2024-02-17 16:30:00', 'Card',  1, 62.00,  25, 80),
('In-Person', '2024-02-18 13:15:00', 'Cash',  2, 39.75,  40, 20),
('In-Person', '2024-02-18 19:00:00', 'Card',  1, 54.00,  2,  74),
('Online',    '2024-02-19 10:45:00', 'Card',  2, 78.25,  15, 47),
('In-Person', '2024-02-19 12:15:00', 'Cash',  1, 30.50,  29, 10),
('Online',    '2024-02-20 15:15:00', 'Card',  2, 92.00,  8,  85),
('In-Person', '2024-02-20 18:30:00', 'Card',  1, 47.75,  37, 32),
('In-Person', '2024-02-21 11:00:00', 'Cash',  2, 22.25,  13, 58),
('Online',    '2024-02-21 13:45:00', 'Card',  1, 70.50,  26, 94),
('In-Person', '2024-02-22 12:00:00', 'Card',  2, 55.75,  4,  23),
('Online',    '2024-02-22 16:45:00', 'Card',  1, 84.00,  19, 66),
('In-Person', '2024-02-23 13:30:00', 'Cash',  2, 28.50,  33, 40),
('In-Person', '2024-02-23 18:00:00', 'Card',  1, 60.25,  10, 82),
('Online',    '2024-02-24 09:15:00', 'Card',  2, 75.00,  22, 59),
('In-Person', '2024-02-24 11:45:00', 'Cash',  1, 34.75,  36, 31),
('In-Person', '2024-02-25 13:15:00', 'Card', 1, 42.75, 16, 11),
('Online',    '2024-02-25 17:30:00', 'Cash', 2, 67.50, 28, 57);

-- Reservations
INSERT INTO Reservations (CustID, LocationID, TablePreference, TableChosen, ResDateTime, PartyNum, RecurringReservation, ReservationStatus)
VALUES
(1,   1, 12,  8,   '2026-04-09 12:00:00', 2,  0, 'ACTIVE'),
(2,   2, 67,  71,  '2026-04-09 12:30:00', 4,  0, 'ACTIVE'),
(3,   1, 5,   5,   '2026-04-09 13:00:00', 2,  1, 'ACTIVE'),
(4,   2, 88,  92,  '2026-04-09 13:30:00', 6,  0, 'ACTIVE'),
(5,   1, 23,  19,  '2026-04-09 14:00:00', 3,  0, 'ACTIVE'),
(6,   2, 55,  55,  '2026-04-09 14:30:00', 2,  1, 'ACTIVE'),
(7,   1, 38,  41,  '2026-04-09 15:00:00', 5,  0, 'ACTIVE'),
(8,   2, 74,  68,  '2026-04-09 15:30:00', 2,  0, 'ACTIVE'),
(9,   1, 7,   7,   '2026-04-09 18:00:00', 4,  1, 'ACTIVE'),
(10,  2, 99,  95,  '2026-04-09 18:30:00', 3,  0, 'ACTIVE'),
(11,  1, 16,  22,  '2026-04-09 19:00:00', 2,  0, 'ACTIVE'),
(12,  2, 61,  61,  '2026-04-09 19:30:00', 6,  1, 'ACTIVE'),
(13,  1, 44,  44,  '2026-04-09 20:00:00', 2,  0, 'ACTIVE'),
(14,  2, 83,  79,  '2026-04-09 20:30:00', 4,  0, 'ACTIVE'),
(15,  1, 3,   6,   '2026-04-09 21:00:00', 3,  0, 'ACTIVE'),
(16,  2, 57,  57,  '2026-04-10 12:00:00', 2,  1, 'ACTIVE'),
(17,  1, 29,  33,  '2026-04-10 12:30:00', 5,  0, 'ACTIVE'),
(18,  2, 91,  88,  '2026-04-10 13:00:00', 2,  0, 'ACTIVE'),
(19,  1, 11,  11,  '2026-04-10 13:30:00', 4,  1, 'ACTIVE'),
(20,  2, 76,  76,  '2026-04-10 14:00:00', 3,  0, 'ACTIVE'),
(21,  1, 48,  45,  '2026-04-10 14:30:00', 2,  0, 'ACTIVE'),
(22,  2, 63,  67,  '2026-04-10 18:00:00', 6,  0, 'ACTIVE'),
(23,  1, 19,  19,  '2026-04-10 18:30:00', 2,  1, 'ACTIVE'),
(24,  2, 84,  84,  '2026-04-10 19:00:00', 4,  0, 'ACTIVE'),
(25,  1, 36,  39,  '2026-04-10 19:30:00', 3,  0, 'ACTIVE'),
(26,  2, 52,  52,  '2026-04-10 20:00:00', 2,  1, 'ACTIVE'),
(27,  1, 8,   8,   '2026-04-10 20:30:00', 5,  0, 'ACTIVE'),
(28,  2, 97,  93,  '2026-04-10 21:00:00', 2,  0, 'ACTIVE'),
(29,  1, 25,  28,  '2025-11-14 12:00:00', 4,  0, 'COMPLETED'),
(30,  2, 71,  71,  '2025-11-14 12:30:00', 3,  1, 'COMPLETED'),
(31,  1, 42,  42,  '2025-11-21 13:00:00', 2,  0, 'COMPLETED'),
(32,  2, 58,  62,  '2025-11-21 13:30:00', 6,  0, 'COMPLETED'),
(33,  1, 14,  14,  '2025-11-28 14:00:00', 2,  1, 'COMPLETED'),
(34,  2, 89,  89,  '2025-11-28 14:30:00', 4,  0, 'COMPLETED'),
(35,  1, 31,  35,  '2025-12-05 18:00:00', 3,  0, 'COMPLETED'),
(36,  2, 66,  66,  '2025-12-05 18:30:00', 2,  1, 'COMPLETED'),
(37,  1, 2,   2,   '2025-12-12 19:00:00', 5,  0, 'COMPLETED'),
(38,  2, 78,  75,  '2025-12-12 19:30:00', 2,  0, 'COMPLETED'),
(39,  1, 47,  47,  '2025-12-19 20:00:00', 4,  0, 'COMPLETED'),
(40,  2, 53,  53,  '2025-12-19 20:30:00', 3,  1, 'COMPLETED'),
(41,  1, 21,  24,  '2025-12-26 12:00:00', 2,  0, 'COMPLETED'),
(42,  2, 96,  96,  '2025-12-26 12:30:00', 6,  0, 'COMPLETED'),
(43,  1, 9,   9,   '2026-01-03 13:00:00', 2,  1, 'COMPLETED'),
(44,  2, 69,  72,  '2026-01-03 13:30:00', 4,  0, 'COMPLETED'),
(45,  1, 34,  34,  '2026-01-10 14:00:00', 3,  0, 'COMPLETED'),
(46,  2, 85,  85,  '2026-01-10 14:30:00', 2,  1, 'COMPLETED'),
(47,  1, 17,  13,  '2026-01-17 18:00:00', 5,  0, 'COMPLETED'),
(48,  2, 60,  60,  '2026-01-17 18:30:00', 2,  0, 'COMPLETED'),
(49,  1, 43,  43,  '2026-01-24 19:00:00', 4,  0, 'COMPLETED'),
(50,  2, 77,  80,  '2026-01-24 19:30:00', 3,  1, 'COMPLETED'),
(51,  1, 6,   6,   '2026-01-31 12:00:00', 2,  0, 'CANCELLED'),
(52,  2, 94,  94,  '2026-01-31 12:30:00', 6,  0, 'CANCELLED'),
(53,  1, 27,  27,  '2026-02-07 13:00:00', 2,  1, 'CANCELLED'),
(54,  2, 51,  58,  '2026-02-07 13:30:00', 4,  0, 'CANCELLED'),
(55,  1, 39,  39,  '2026-04-13 14:00:00', 3,  0, 'ACTIVE'),
(56,  2, 82,  82,  '2026-04-13 14:30:00', 2,  1, 'ACTIVE'),
(57,  1, 13,  17,  '2026-04-13 18:00:00', 5,  0, 'ACTIVE'),
(58,  2, 73,  73,  '2026-04-13 18:30:00', 2,  0, 'ACTIVE'),
(59,  1, 46,  46,  '2026-04-13 19:00:00', 4,  0, 'ACTIVE'),
(60,  2, 56,  56,  '2026-04-13 19:30:00', 3,  1, 'ACTIVE'),
(61,  1, 4,   4,   '2026-04-14 12:00:00', 2,  0, 'ACTIVE'),
(62,  2, 90,  87,  '2026-04-14 12:30:00', 6,  0, 'ACTIVE'),
(63,  1, 32,  32,  '2026-04-14 13:00:00', 2,  1, 'ACTIVE'),
(64,  2, 64,  64,  '2026-04-14 13:30:00', 4,  0, 'ACTIVE'),
(65,  1, 20,  23,  '2026-04-14 14:00:00', 3,  0, 'ACTIVE'),
(66,  2, 98,  98,  '2026-04-14 14:30:00', 2,  1, 'ACTIVE'),
(67,  1, 37,  37,  '2026-04-14 18:00:00', 5,  0, 'ACTIVE'),
(68,  2, 70,  70,  '2026-04-14 18:30:00', 2,  0, 'ACTIVE'),
(69,  1, 10,  10,  '2026-04-14 19:00:00', 4,  0, 'ACTIVE'),
(70,  2, 86,  83,  '2026-04-14 19:30:00', 3,  1, 'ACTIVE'),
(71,  1, 49,  49,  '2026-04-14 20:00:00', 2,  0, 'ACTIVE'),
(72,  2, 59,  59,  '2026-04-14 20:30:00', 6,  0, 'ACTIVE'),
(73,  1, 15,  18,  '2026-02-14 12:00:00', 2,  1, 'CANCELLED'),
(74,  2, 100, 100, '2026-02-14 12:30:00', 4,  0, 'CANCELLED'),
(75,  1, 26,  26,  '2026-02-21 13:00:00', 3,  0, 'CANCELLED'),
(76,  2, 75,  75,  '2026-02-21 13:30:00', 2,  1, 'CANCELLED'),
(77,  1, 40,  40,  '2026-04-15 14:00:00', 5,  0, 'ACTIVE'),
(78,  2, 54,  54,  '2026-04-15 14:30:00', 2,  0, 'ACTIVE'),
(79,  1, 1,   1,   '2026-04-15 18:00:00', 4,  0, 'ACTIVE'),
(80,  2, 81,  81,  '2026-04-15 18:30:00', 3,  1, 'ACTIVE'),
(81,  1, 33,  36,  '2026-04-15 19:00:00', 2,  0, 'ACTIVE'),
(82,  2, 68,  68,  '2026-04-15 19:30:00', 6,  0, 'ACTIVE'),
(83,  1, 22,  22,  '2026-04-15 20:00:00', 2,  1, 'ACTIVE'),
(84,  2, 93,  93,  '2026-04-15 20:30:00', 4,  0, 'ACTIVE'),
(85,  1, 45,  45,  '2026-04-16 12:00:00', 3,  0, 'ACTIVE'),
(86,  2, 62,  62,  '2026-04-16 12:30:00', 2,  1, 'ACTIVE'),
(87,  1, 18,  18,  '2026-04-16 13:00:00', 5,  0, 'ACTIVE'),
(88,  2, 87,  87,  '2026-04-16 13:30:00', 2,  0, 'ACTIVE'),
(89,  1, 30,  30,  '2026-04-16 14:00:00', 4,  0, 'ACTIVE'),
(90,  2, 79,  79,  '2026-04-16 14:30:00', 3,  1, 'ACTIVE'),
(91,  1, 50,  50,  '2026-04-16 18:00:00', 2,  0, 'ACTIVE'),
(92,  2, 65,  65,  '2026-04-16 18:30:00', 6,  0, 'ACTIVE'),
(93,  1, 24,  24,  '2026-04-16 19:00:00', 2,  1, 'ACTIVE'),
(94,  2, 92,  92,  '2026-04-16 19:30:00', 4,  0, 'ACTIVE'),
(95,  1, 41,  41,  '2026-04-16 20:00:00', 3,  0, 'ACTIVE'),
(96,  2, 74,  74,  '2026-04-16 20:30:00', 2,  1, 'ACTIVE'),
(97,  1, 28,  28,  '2026-04-17 12:00:00', 5,  0, 'ACTIVE'),
(98,  2, 97,  97,  '2026-04-17 12:30:00', 2,  0, 'ACTIVE'),
(99,  1, 35,  35,  '2026-04-17 13:00:00', 4,  0, 'ACTIVE'),
(100, 2, 61,  61,  '2026-04-17 13:30:00', 3,  1, 'ACTIVE');

-- KitchenDetails
INSERT INTO KitchenDetails (LocationID, NumStoves, HeadChef, SousChef, MinNumCooks)
VALUES
(1, 8, 1,  2,  5),
(2, 6, 4, 5, 4);
