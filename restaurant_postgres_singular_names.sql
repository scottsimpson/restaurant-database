-- Before using this PostgreSQL script, you will want to create a new database, open psql, and get connected to that
-- new database.  In BASH this can be done with these two commands:
--   createdb Restaurant
--   psql -d Restaurant
-- or if you're already in the psql environment then you can issue these two commands:
--   CREATE DATABASE "Restaurant";
--   \c Restaurant
-- At this point the prompt should show "Restaurant=# " and then you can paste in the rest of this entire file.

CREATE SEQUENCE customer_id_seq start 101 increment 1;

CREATE TABLE "Customer" (
  id int PRIMARY KEY DEFAULT nextval('customer_id_seq'),
  firstname varchar(200) NOT NULL DEFAULT '',
  lastname varchar(200) NOT NULL DEFAULT '',
  email varchar(200) DEFAULT NULL,
  address varchar(200) DEFAULT NULL,
  city varchar(200) DEFAULT NULL,
  state char(2) DEFAULT NULL,
  phone varchar(20) NOT NULL DEFAULT '',
  birthday date DEFAULT NULL,
  favorite_dish_id int DEFAULT NULL
);

INSERT INTO "Customer" VALUES (1,'Maggi','Domney','mdomney0@wisdompets.com','53177 Fieldstone Pass','San Bernardino','CA','760-702-5469','1938-10-11',15),
(2,'Javier','Dawks','jdawks1@red30design.com','25629 Brown Trail','Hartford','CT','860-906-1459','1953-11-21',13),
(3,'Aleen','Fasey','afasey2@kinetecoinc.com','41967 Mockingbird Court','Boca Raton','FL','561-410-2222','1900-08-10',3),
(4,'Taylor','Jenkins','tjenkins@rouxacademy.org','968 Bartillon Park','Fort Lauderdale','FL','954-294-7424','1961-05-02',8),
(5,'Imogen','Kabsch','ikabsch@landonhotel.com','222 Hudson Point','Anderson','SC','864-326-7456','1919-08-27',17),
(6,'Dunc','Winny','dwinny5@kinetecoinc.com','6 Derek Avenue','Columbus','GA','706-389-4923','1919-07-19',11),
(7,'Cammi','Kynett','ckynett6@orangevalleycaa.org','237 Homewood Hill','Washington','DC','202-798-6252','1927-03-06',5),
(8,'Steffie','Kleis','skleis7@wisdompets.com','360 Little Fleur Park','Evansville','IN','812-301-6915','1957-12-27',8),
(9,'Carilyn','Calver','ccalver8@samoca.org','3664 Emmet Circle','Dulles','VA','571-718-5931','1960-12-17',12),
(10,'Barbara-anne','Sweet','bsweet9@samoca.org','257 Mallory Drive','San Antonio','TX','210-776-2859','1911-04-01',5),
(11,'Faina','Nelles','fnellesa@red30design.com','1143 Nevada Plaza','Reading','PA','484-145-8882','1967-03-06',10),
(12,'Orton','Stavers','ostaversb@orangevalleycaa.org','5 Pankratz Junction','Vienna','VA','571-414-2322','1910-07-20',22),
(13,'Jobina','McKern','jmckernc@rouxacademy.org','28 Dovetail Circle','San Mateo','CA','805-540-9168','1923-01-19',9),
(14,'Paco','Yarranton','pyarrantond@rouxacademy.org','1 Lighthouse Bay Hill','Columbus','OH','614-173-1770','1977-05-08',2),
(15,'Chance','Todeo','ctodeoe@wisdompets.com','2 Debra Trail','Dallas','TX','214-351-1058','1924-08-13',16),
(16,'Carla','Swinfen','cswinfenf@kinetecoinc.com','949 Northview Junction','South Bend','IN','574-883-7972','1989-05-24',10),
(17,'Lani','Over','loverg@wisdompets.com','8 Roxbury Point','Colorado Springs','CO','719-792-4724','1938-08-02',20),
(18,'Anthe','Dinjes','adinjesh@samoca.org','4 American Road','Washington','DC','202-164-5786','1903-12-29',3),
(19,'Amby','Harber','aharberi@hplussport.com','2985 Pearson Circle','Durham','NC','919-557-3321','1925-06-21',9),
(20,'Jacinta','Vallis','jvallisj@kinetecoinc.com','9 Anzinger Lane','Bakersfield','CA','661-103-5365','1994-12-10',10),
(21,'Henri','Pughe','hpughek@orangevalleycaa.org','53 Blue Bill Park Point','Manassas','VA','434-339-5926','1955-01-12',22),
(22,'Cassandre','Wragg','cwraggl@landonhotel.com','92285 Cascade Center','Washington','DC','703-646-1738','1960-05-01',20),
(23,'Amory','Bunyard','abunyardm@samoca.org','9951 Buena Vista Point','Topeka','KS','785-691-3913','1919-01-15',14),
(24,'Carny','Scamp','cscampn@wisdompets.com','9 Valley Edge Road','New York City','NY','212-198-3815','1911-02-01',14),
(25,'Paulie','Kinvig','pkinvigo@hplussport.com','564 Ryan Park','Philadelphia','PA','215-647-3796','1958-08-12',10),
(26,'Taylor','Jenkins','tjenkins@redt30design.com','27170 6th Center','Washington','DC','202-765-8011','1922-05-05',12),
(27,'Yves','Dell''Abbate','ydellabbateq@rouxacademy.org','68966 High Crossing Junction','Richmond','VA','804-689-9010','1902-12-23',8),
(28,'Culley','Cawood','ccawoodr@samoca.org','536 Darwin Trail','Washington','DC','202-959-7069','1933-03-05',12),
(29,'Herby','Aspinal','haspinals@red30design.com','7 Maple Center','Sacramento','CA','916-942-8188','1934-03-28',2),
(30,'Emlyn','Attwool','eattwoolt@hplussport.com','289 Westridge Pass','Des Moines','IA','515-478-3690','1976-08-12',4),
(31,'Osgood','Saunter','osaunteru@red30design.com','9686 Havey Crossing','Oklahoma City','OK','405-620-8345','1954-12-18',14),
(32,'Demetri','Iacobacci','diacobacciv@landonhotel.com','1727 Vermont Point','Newark','DE','302-843-4915','1948-05-05',5),
(33,'Eloisa','Forster','eforsterw@wisdompets.com','45084 Butterfield Point','Kalamazoo','MI','269-400-8205','1928-06-22',10),
(34,'Carlin','Casterou','ccasteroux@landonhotel.com','17 Cordelia Trail','El Paso','TX','915-815-0411','1940-06-10',4),
(35,'Luciano','Winton','lwintony@hplussport.com','386 Fairview Lane','Greensboro','NC','336-968-8032','1951-04-16',4),
(36,'Allyson','Jira','ajiraz@wisdompets.com','51474 Northridge Pass','Syracuse','NY','315-720-5302','1996-01-23',20),
(37,'Jillane','Livingstone','jlivingstone10@wisdompets.com','4 Arizona Hill','Fairfax','VA','571-135-9052','1928-09-30',1),
(38,'Christyna','McGilroy','cmcgilroy11@landonhotel.com','47989 East Court','Washington','DC','202-132-1057','1974-08-01',18),
(39,'Oralla','Dayer','odayer12@samoca.org','478 Sommers Pass','Sacramento','CA','916-274-8584','1977-05-27',2),
(40,'Angelique','Farnham','afarnham13@wisdompets.com','564 Ohio Crossing','Fort Smith','AR','479-118-1613','1929-06-02',20),
(41,'Lowrance','Gratton','lgratton14@hplussport.com','675 Warner Street','New York City','NY','212-562-3242','1946-10-13',15),
(42,'Cleo','Goldwater','cgoldwater15@landonhotel.com','9831 Evergreen Way','Tyler','TX','903-791-7266','1959-09-14',14),
(43,'Menard','Pitone','mpitone16@red30design.com','8 Petterle Road','Boston','MA','318-237-8464','1948-01-06',3),
(44,'Davy','Neely','dneely17@hplussport.com','1 Shelley Road','Orlando','FL','407-752-8159','1942-10-31',1),
(45,'Zechariah','Deniske','zdeniske18@kinetecoinc.com','78 Hayes Lane','Gadsden','AL','256-909-6656','1978-07-17',21),
(46,'Serge','Pethrick','spethrick19@rouxacademy.org','65 Sunbrook Crossing','New Castle','PA','724-424-9472','1965-12-31',1),
(47,'Lydie','Awmack','lawmack1a@samoca.org','454 Prairie Rose Street','Springfield','VA','571-709-9837','1964-03-31',8),
(48,'Clementia','Furminger','cfurminger1b@kinetecoinc.com','78 Longview Avenue','El Paso','TX','915-622-4479','1966-03-17',4),
(49,'Cathryn','Beau','cbeau1c@wisdompets.com','8860 Lien Road','Reno','NV','775-437-9114','1986-09-02',8),
(50,'Jack','Vaan','jvaan1d@wisdompets.com','75 Gateway Circle','Boise','ID','208-648-3163','1949-07-25',15),
(51,'Romeo','Annett','rannett1e@samoca.org','9229 Harbort Point','New York City','NY','212-548-7727','1937-11-20',8),
(52,'Arlen','O''Fihillie','aofihillie1f@wisdompets.com','20 Bartelt Circle','El Paso','TX','915-295-2257','1906-08-30',12),
(53,'Perceval','Redpath','predpath1g@rouxacademy.org','98 Messerschmidt Court','Hyattsville','MD','301-713-2688','1955-12-03',1),
(54,'Ive','Iles','iiles1h@samoca.org','75922 Fieldstone Terrace','San Francisco','CA','415-544-7619','1972-10-13',22),
(55,'Robbert','Walkowski','rwalkowski1i@kinetecoinc.com','43 Fair Oaks Crossing','Los Angeles','CA','626-967-1974','1996-03-19',8),
(56,'Hagen','Itzhayek','hitzhayek1j@landonhotel.com','32205 Drewry Plaza','San Francisco','CA','415-340-3585','1932-10-10',6),
(57,'Kahaleel','Keaton','kkeaton1k@kinetecoinc.com','88256 Roxbury Pass','Long Beach','CA','562-637-8856','1989-08-25',2),
(58,'Purcell','Llop','pllop1l@hplussport.com','8630 Loeprich Plaza','Clearwater','FL','727-959-7623','1950-05-15',3),
(59,'Cornelia','Koppe','ckoppe1m@landonhotel.com','30278 Little Fleur Terrace','Vero Beach','FL','772-132-3079','1972-09-30',8),
(60,'Olympia','Sansun','osansun1n@wisdompets.com','76 Ruskin Street','Brooklyn','NY','212-188-0416','1995-01-16',14),
(61,'Rubia','Fitzsymon','rfitzsymon1o@red30design.com','79 Rieder Avenue','Tampa','FL','813-121-0276','1982-08-30',8),
(62,'Tybie','Balme','tbalme1p@orangevalleycaa.org','17 Pine View Court','Johnson City','TN','423-364-2730','1907-01-21',5),
(63,'Forest','Dubock','fdubock1q@red30design.com','3418 Maryland Circle','Tulsa','OK','918-881-4322','1991-10-05',4),
(64,'Norby','Sleight','nsleight1r@kinetecoinc.com','16198 Welch Place','Oklahoma City','OK','405-786-8722','1955-11-13',7),
(65,'Hayyim','Rossander','hrossander1s@wisdompets.com','5 American Ash Court','Long Beach','CA','323-318-8768','1914-11-08',22),
(66,'Gilbert','Dupoy','gdupoy1t@rouxacademy.org','90863 Hermina Center','Toledo','OH','419-487-3597','1997-09-27',21),
(67,'Whitney','Lamberts','wlamberts1u@red30design.com','23 Fairview Lane','San Diego','CA','858-417-9425','1996-06-15',14),
(68,'Anastasie','Ferguson','aferguson1v@landonhotel.com','28138 Kenwood Park','Salt Lake City','UT','801-920-5569','1930-10-12',1),
(69,'Alaster','Ruggles','aruggles1w@red30design.com','661 Grover Center','Saint Paul','MN','651-761-7780','1990-06-25',15),
(70,'Loretta','Hundey','lhundey1x@kinetecoinc.com','6939 Elka Place','Los Angeles','CA','310-730-8619','1945-08-14',18),
(71,'Winnah','D''Elia','wdelia1y@red30design.com','489 Almo Drive','Whittier','CA','626-579-3814','1965-06-07',10),
(72,'Trip','Pond','tpond1z@wisdompets.com','653 Manley Alley','San Jose','CA','408-716-4969','1954-08-15',19),
(73,'Merle','Sukbhans','msukbhans20@orangevalleycaa.org','574 Cherokee Terrace','Grand Rapids','MI','616-189-2213','1938-10-16',13),
(74,'Giraldo','Algar','galgar21@kinetecoinc.com','17 Knutson Drive','Rochester','NY','585-956-6225','1901-09-14',1),
(75,'Bevvy','Harrowsmith','bharrowsmith22@red30design.com','33 Crescent Oaks Lane','San Antonio','TX','210-572-0107','1954-09-24',6),
(76,'Dyanna','Fulger','dfulger23@red30design.com','15859 Kings Pass','Roanoke','VA','540-320-0153','1926-12-06',16),
(77,'Viola','McLarnon','vmclarnon24@orangevalleycaa.org','16 Hanover Street','Charlotte','NC','704-789-2133','1933-04-20',13),
(78,'Dorella','Linbohm','dlinbohm25@rouxacademy.org','531 Mccormick Street','Stamford','CT','203-835-7673','1935-05-29',4),
(79,'Winslow','Klass','wklass26@kinetecoinc.com','7 Green Road','Shreveport','LA','318-130-3322','1972-04-12',21),
(80,'Francisca','Cranmor','fcranmor27@wisdompets.com','2161 Holy Cross Terrace','Norfolk','VA','757-141-3735','1958-02-24',5),
(81,'Gustave','Alphonso','galphonso28@wisdompets.com','4855 Messerschmidt Crossing','Las Vegas','NV','702-709-0059','1937-03-24',8),
(82,'Jacquette','Spillard','jspillard29@red30design.com','168 Clemons Avenue','Tacoma','WA','253-406-0669','1989-03-04',7),
(83,'Caril','Matejic','cmatejic2a@orangevalleycaa.org','7 Texas Hill','Grand Rapids','MI','616-748-1299','1918-06-17',15),
(84,'Sianna','Drewell','sdrewell2b@kinetecoinc.com','62198 Bultman Park','Milwaukee','WI','414-182-9923','1917-10-19',21),
(85,'Sonnie','MatticcI','smatticci2c@rouxacademy.org','2 Roxbury Avenue','Simi Valley','CA','805-544-5902','1996-05-09',5),
(86,'Brandais','Jeannaud','bjeannaud2d@hplussport.com','19539 Melvin Place','Oklahoma City','OK','405-272-0078','1987-04-18',8),
(87,'Junie','MacRury','jmacrury2e@wisdompets.com','2958 Maple Wood Road','Lake Charles','LA','337-515-7385','1963-12-25',11),
(88,'Gus','Holyland','gholyland2f@red30design.com','62 8th Pass','Seattle','WA','425-916-5021','1966-08-02',8),
(89,'Ab','Jurn','ajurn2g@samoca.org','11398 Norway Maple Place','Oakland','CA','415-269-1567','1997-01-18',11),
(90,'Elmo','Ockland','eockland2h@landonhotel.com','38494 Mitchell Park','Washington','DC','202-866-5269','1943-09-08',15),
(91,'Iver','Palke','ipalke2i@rouxacademy.org','25182 Roxbury Avenue','Philadelphia','PA','215-247-9059','1982-08-04',15),
(92,'Asher','Tapley','atapley2j@kinetecoinc.com','720 Saint Paul Plaza','Hialeah','FL','786-938-4977','1959-08-05',7),
(93,'Joel','Baignard','jbaignard2k@orangevalleycaa.org','8 High Crossing Court','Amarillo','TX','806-995-6798','1937-01-26',13),
(94,'Curr','Fittall','cfittall2l@orangevalleycaa.org','530 Mallory Pass','Green Bay','WI','920-248-2709','1910-08-20',18),
(95,'Lelah','Seathwright','lseathwright2m@samoca.org','2649 Bellgrove Way','Houston','TX','713-248-4719','1999-07-07',8),
(96,'Melantha','Scowcroft','mscowcroft2n@kinetecoinc.com','23879 Reindahl Center','New York City','NY','212-694-0087','1900-04-12',18),
(97,'Herb','McParland','hmcparland2o@rouxacademy.org','39 Algoma Park','Chicago','IL','630-950-3309','1916-12-25',14),
(98,'Clem','Durdy','cdurdy2p@hplussport.com','594 Bonner Point','Des Moines','IA','515-680-5018','1988-03-10',16),
(99,'Kala','Simonian','ksimonian2q@landonhotel.com','95 Waywood Street','Huntington','WV','304-681-5208','1947-11-30',5),
(100,'Blythe','Leggan','bleggan2r@rouxacademy.org','1622 Golf Course Hill','Montgomery','AL','334-770-7364','1996-06-11',5);


CREATE SEQUENCE dish_id_seq start 23 increment 1;

CREATE TABLE "Dish" (
  id int PRIMARY KEY DEFAULT nextval('dish_id_seq'),
  "name" varchar(200) DEFAULT NULL,
  description varchar(500) DEFAULT NULL,
  price decimal(3,2) DEFAULT NULL
);

INSERT INTO "Dish" VALUES (1,'Parmesan Deviled Eggs','These delectable little bites are made with organic eggs, fresh Parmesan, and chopped pine nuts.',8.00),
(2,'Artichokes with Garlic Aioli','Our artichokes are brushed with an olive oil and rosemary blend and then broiled to perfection. Served with a side of creamy garlic aioli.',9.00),
(3,'French Onion Soup','Caramelized onions slow cooked in a savory broth, topped with sourdough and a provolone cheese blend. Served with sourdough bread.',7.00),
(4,'Mini Cheeseburgers','These mini cheeseburgers are served on a fresh baked pretzel bun with lettuce, tomato, avocado, and your choice of cheese.',8.00),
(5,'Panko Stuffed Mushrooms','Large mushroom caps are filled a savory cream cheese, bacon and panko breadcrumb stuffing, topped with cheddar cheese.',7.00),
(6,'Garden Buffet','Choose from our fresh local, organically grown ingredients to make a custom salad.',9.99),
(7,'House Salad','Our house salad is made with romaine lettuce and spinach, topped with tomatoes, cucumbers, red onions and carrots. Served with a dressing of your choice.',7.00),
(8,'Chef''s Salad','The chef''s salad has cucumber, tomatoes, red onions, mushrooms, hard-boiled eggs, cheese, and hot grilled chicken on a bed of romaine lettuce. Served with croutons and your choice of dressing.',9.00),
(9,'Quinoa Salmon Salad','Our quinoa salad is served with quinoa, tomatoes, cucumber, scallions, and smoked salmon. Served with your choice of dressing.',9.99),
(10,'Classic Burger','Our classic burger is made with 100% pure angus beef, served with lettuce, tomatoes, onions, pickles, and cheese of your choice. Veggie burger available upon request. Served with French fries, fresh fruit, or a side salad.',9.99),
(11,'Tomato Bruschetta Tortellini','This classic cheese tortellini is cooked in a sun-dried tomato sauce. Served with bruschetta topped with a tomato and basil marinara.',9.99),
(12,'Handcrafted Pizza','Our thin crust pizzas are made fresh daily and topped with your choices of fresh meats, veggies, cheese, and sauce. Price includes two toppings. Add $1 for each additional topping.',9.99),
(13,'Barbecued Tofu Skewers','Our barbecued skewers include tofu, cherry tomatoes, bell peppers, and zucchini marinated in a ginger sesame sauce and charbroiled. Served with steamed rice.',9.99),
(14,'Fiesta Family Platter','This platter is perfect for sharing! Enjoy our spicy buffalo wings, traditional nachos, and cheese quesadillas served with freshly made guacamole dip.',9.99),
(15,'Creme Brulee','Elegantly crafted creamy vanilla custard with a caramelized crunchy layer on top. Served with seasonal fruit.',9.00),
(16,'Cheesecake','Our New York Style Cheesecake is rich, smooth, and creamy. Available in various flavors, and with seasonal fruit toppings.',9.00),
(17,'Chocolate Chip Brownie','A warm chocolate chip brownie served with chocolate or vanilla ice cream and rich chocolate sauce.',6.00),
(18,'Apple Pie','Made with local granny smith apples to bring you the freshest classic apple pie available.',5.00),
(19,'Mixed Berry Tart','Raspberries, blueberries, and strawberries on top of a creamy filling served in a crispy tart.',7.00),
(20,'Tropical Blue Smoothie','This blueberry mint-based smoothie is refreshing and perfect for any celebration.',6.00),
(21,'Pomegranate Iced Tea','Our unique blend of pomegranate juice, black Rooibos, and mint tea creates this light fusion of flavors.',4.00),
(22,'Cafe Latte','Our house blend of espresso and foamed milk. Can be served with flavored syrups and over ice. Non-dairy substitutions available upon request.',6.00);


CREATE TABLE "CustomerDish" (
  id SERIAL PRIMARY KEY,
  customer_id int DEFAULT NULL,
  dish_id int DEFAULT NULL
);

INSERT INTO "CustomerDish" (customer_id, dish_id) VALUES (7,3),(7,4),(7,21),(41,3),(41,8),(41,2),(35,8),(35,9);


CREATE SEQUENCE order_id_seq start 11 increment 1;

CREATE TABLE "Order" (
  id int PRIMARY KEY DEFAULT nextval('order_id_seq'),
  customer_id int DEFAULT NULL,
  orderdate timestamp DEFAULT NULL
);

INSERT INTO "Order" VALUES (1,17,'2019-02-01 17:32:00'),
(2,17,'2019-02-02 16:52:00'),
(3,2,'2019-02-02 16:53:00'),
(4,45,'2019-02-02 16:58:00'),
(5,86,'2019-02-03 12:04:00'),
(6,39,'2019-02-04 14:31:00'),
(7,71,'2019-03-15 11:31:00'),
(8,17,'2019-03-15 16:22:00'),
(9,51,'2019-03-15 18:29:00'),
(10,66,'2019-03-15 19:25:00');


CREATE TABLE "OrderDish" (
  id SERIAL PRIMARY KEY,
  order_id int DEFAULT NULL,
  dish_id int DEFAULT NULL
);

INSERT INTO "OrderDish" (order_id, dish_id) VALUES (1,12),(2,5),(2,9),(3,7),(3,10),(3,16),(4,14),(5,9),(5,19),(6,20),(6,8),(7,11),(7,11),(7,3),(8,16),(9,18),(9,22),(10,21),(10,13),(10,13);


CREATE SEQUENCE event_id_seq start 16 increment 1;

CREATE TABLE "Event" (
  id int PRIMARY KEY DEFAULT nextval('event_id_seq'),
  "name" varchar(200) DEFAULT NULL,
  description varchar(500) DEFAULT NULL,
  "date" timestamp DEFAULT NULL,
  location varchar(200) DEFAULT ''
);

INSERT INTO "Event" VALUES (1,'Winter Wonderland','Join us to celebrate 2014 in a garden of organic splendor! This event will focus on seasonal treats made with health in mind!','2014-01-01 18:00:00','Landon Hotel'),
(2,'Winter Wonderland','Join us to celebrate 2015 in a garden of organic splendor! This event will focus on seasonal treats made with health in mind!','2015-01-01 18:00:00','Landon Hotel'),
(3,'Winter Wonderland','Join us to celebrate 2016 in a garden of organic splendor! This event will focus on seasonal treats made with health in mind!','2016-01-01 18:00:00','Landon Hotel'),
(4,'Winter Wonderland','Join us to celebrate 2017 in a garden of organic splendor! This event will focus on seasonal treats made with health in mind!','2017-01-01 18:00:00','Landon Hotel'),
(5,'Winter Wonderland','Join us to celebrate 2018 in a garden of organic splendor! This event will focus on seasonal treats made with health in mind!','2018-01-01 18:00:00','Landon Hotel'),
(6,'Winter Wonderland','Join us to celebrate 2019 in a garden of organic splendor! This event will focus on seasonal treats made with health in mind!','2019-01-01 18:00:00','Landon Hotel'),
(7,'Swing into Spring','Swing into Spring with your favorite springtime dishs! Fresh produce and delectable desserts will be featured during this vegan-friendly soiree!','2019-04-01 12:00:00','The Kale Grotto'),
(8,'Summer''s Here','Join us by the pool at the Landon Hotel San Francisco to celebrate the arrival of the warm(er) season! You bring the sunscreen, we''ll bring the barbecued tofu!','2019-06-25 11:00:00','Rooftop Pool'),
(9,'Eating Healthy at School','Apples and Peanut butter? Yes! Get the school year started off right with our healthy cooking class for kids. Schoolgoers will learn how to pack a balanced and healthy lunch that''s ...','2019-09-01 09:00:00','Teaching Kitchen'),
(10,'Eating Healthy at School','Celery can be a great snack! Get the school year started off right with our healthy cooking class for kids. Schoolgoers will learn how to pack a balanced and healthy lunch that''s ...','2019-09-08 09:00:00','Teaching Kitchen'),
(11,'Eating Healthy at School','Cheese and whole wheat crackers are an easy snack! Get the school year started off right with our healthy cooking class for kids. Schoolgoers will learn how to pack a balanced and healthy lunch that''s ...','2019-09-15 09:00:00','Teaching Kitchen'),
(12,'Eating Healthy at School','Make your own guacamole with just a few ingredients! Get the school year started off right with our healthy cooking class for kids. Schoolgoers will learn how to pack a balanced and healthy lunch that''s ...','2019-09-22 09:00:00','Teaching Kitchen'),
(13,'Eating Healthy at School','Raisins and nuts are an easy and healthy snack. Get the school year started off right with our healthy cooking class for kids. Schoolgoers will learn how to pack a balanced and healthy lunch that''s ...','2019-09-29 09:00:00','Teaching Kitchen'),
(14,'Eating Healthy at School','Did someone say Durian? Get the school year started off right with our healthy cooking class for kids. Schoolgoers will learn how to pack a balanced and healthy lunch that''s ...','2019-10-06 09:00:00','Teaching Kitchen'),
(15,'Fall Ball','Why should winter get all the fancy ballroom dancing? Join us this autumn for a black-tie affair amongst the (organic) pumpkins!','2019-10-31 17:00:00','Rick''s Organic Pumpkin Farm');


CREATE TABLE "CustomerEvent" (
  id SERIAL PRIMARY KEY,
  customer_id int DEFAULT NULL,
  event_id int DEFAULT NULL
);

INSERT INTO "CustomerEvent" (customer_id, event_id) VALUES (7,1),(7,2),(42,1),(89,1),(95,1),(4,1),(95,2),(42,5),(42,4),(71,1);


CREATE TABLE "EventsLocation" (
  id SERIAL PRIMARY KEY,
  event_name varchar(200) DEFAULT NULL,
  location varchar(200) DEFAULT NULL
);

INSERT INTO "EventsLocation" (event_name, location) VALUES ('Winter Wonderland','Landon Hotel'),
('Eating Healthy at School','Teaching Kitchen'),
('Swing into Spring','The Kale Grotto'),
('Summer''s Here','Rooftop Pool'),
('Fall Ball','Rick''s Organic Pumpkin Farm');


CREATE TABLE "Reservation" (
  id SERIAL PRIMARY KEY,
  customer_id int DEFAULT NULL,
  "date" timestamp DEFAULT NULL,
  party_size int DEFAULT NULL
);

INSERT INTO "Reservation" (customer_id, "date", party_size) VALUES (17,'2019-02-05 14:00:00',3),
(45,'2019-02-05 14:30:00',4),
(51,'2019-02-06 20:00:00',2),
(89,'2019-02-06 11:00:00',1),
(44,'2019-02-07 13:30:00',5),
(39,'2019-02-08 10:00:00',4),
(86,'2019-02-08 15:15:00',3),
(17,'2019-02-09 13:00:00',3),
(39,'2019-02-09 10:00:00',5),
(33,'2019-02-09 10:00:00',4),
(78,'2019-02-06 14:30:00',3),
(84,'2019-02-06 18:00:00',5),
(9,'2019-02-06 15:00:00',4);
