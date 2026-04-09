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