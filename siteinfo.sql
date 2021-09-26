# Dump File
#
# Database is ported from MS Access
#------------------------------------------------------
#Program Version 5.1.232

#--DROP DATABASE IF EXISTS SiteInfo;
#--CREATE DATABASE IF NOT EXISTS SiteInfo;
#--USE SiteInfo;

#
# Table structure for table Locations
#

DROP TABLE IF EXISTS Locations;

CREATE TABLE Locations ( 
  LocationID INTEGER NOT NULL AUTO_INCREMENT,
  LocationCity VARCHAR(100) NOT NULL,
  LocationState VARCHAR(100),
  LocationCountry VARCHAR(100),
  LocationDescription LONGTEXT,
  INDEX (LocationID),
  INDEX (LocationCity),
  PRIMARY KEY (LocationID)
)ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table Locations
#

INSERT INTO Locations (LocationID, LocationCity, LocationState, LocationCountry, LocationDescription) VALUES 
(1, 'Miami', 'Florida', 'United States', 'Miami is a coastal city on the southern tip of Florida in the United States. It is known for its beaches and active night life.'),
(2, 'Gatlinburg', 'Tennessee', 'United States', 'Gatlinburg, Tennessee is a small town located in the Smokey Mountains. It is known for its tourist attractions, beautiful outdoor scenery, and its main shopping strip.'),
(3, 'New Orleans', 'Louisiana', 'United States', 'New Orleans, Louisiana is a coastal town in Lousiana. It is known for its Mardi Gras celebrations, French Quarter, and unique cajon style cuisine'),
(4, 'New York', 'New York', 'United States', 'New York City, New York is a city located in the north east of the United States.  Packed with history, the “City that never sleeps.” will provide non-stop adventure for anyone looking for an exciting trip.'),
(5, 'San Francisco', 'California', 'United States', 'San Francisco, California is a city located on the west coast of the United States which features shopping, history, and fun for the whole family.\r\n'),
(6, 'Sydney', 'New South Wales', 'Australia', 'Sydney is a city located on the southeastern coast of Australia.  Featuring world class seafood, shopping and a history going back to 1788.'),
(7, 'Paris', 'Île-de-france', 'France', 'Paris is the largest city in France. It is the hub for French economics, politics, traffic, and culture. With a plethora of museums and art, you’ll fall in love with the culture and everything this city has to offer.'),
(8, 'Brussels', 'Brussels-Capital Region', 'Belgium', 'Brussels, known as the European Quarter, is considered the capital of Europe. It is the administrative, commercial, and financial heart of Belgium. .'),
(9, 'Frankfurk', 'Hesse', 'Germany', '\r\nFrankfurt is the most populated city in Germany. Located in the state of Hesse, it is referred to as an “alpha world city” as it is the global hub for commerce, culture, education, and tourism.\r\n');
# 9 records

#
# Table structure for table Activities
#

DROP TABLE IF EXISTS Activities;

CREATE TABLE Activities (
  ActivityID INTEGER NOT NULL AUTO_INCREMENT, 
  LocationID INTEGER, 
  ActivityName VARCHAR(255), 
  ActivityDescription VARCHAR(255), 
  PRIMARY KEY (ActivityID) 
)ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table Activities
#

INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES 
(1, 1, 'Boat Tour', 'Take a tour of Miami as you sit back and enjoy the sights with a free drink'),
(2, 1, 'South Beach Art Deco Walking Tour', 'Enjoy some art as you walk along the beach'),
(3, 1, 'Miami Seaquarium', 'Enjoy some shows of extremely talented animals as you watch them interact with trainers. Also there is an aquarium.'),
(4, 2, 'Ripleys Aquarium', 'Come and see sharks, pirana, and even penguins at our small but extravagant aquarium'),
(5, 2, 'Anakeesta', 'Enjoy the mountainscape from the top of this mountain park. You can also enjoy our treetop walking tour, downhill coaster, and our fine restaurant.'),
(6, 2, 'Gatlinburg Skybridge', 'Enjoy the thrill of walking along a bridge that is suspended between two mountain peaks.'),
(7, 3, 'National WWII Museum', 'Take a look into history with our unique exhibits on World War 2.'),
(8, 3, 'Bourbon Street', 'Visit one of New Orleans oldest attractions while shopping and dining on amazing food.'),
(9, 3, 'Jackson Square', 'Visit a park where artists paint, draw, and sell amazing artworks.'),
(10,7,'Watch the Sunset from the Eiffel Tower','View the gorgeous sunset from this romantic location'),
(11,7,'Take a Seine River Cruise','Relax and float through France on this cruise'),
(12,7,'Make a Pilgrimage to Mont Saint-Michel','Visit this lovely island in Normandy'),
(13,8,'Tour the Musical Instruments Museum','Discover the history of music'),
(14,8,'Tour the St. Michael and St. Gudula Cathedral',' Visit one of the oldest cathedrals in Europe'),
(15,8,'Tour the Parc du Cinquantenaire','Visit this historic military exercise grounds'),
(16,9,'Visit Stadel Museum','Tour this amazing art museum'),
(17,9,'Visit Main Tower','Tour one of the tallest buildings in Germany'),
(18,9,'Visit Romer','Tour one of the oldest and most import landmarks in Frankfurt'),
(19,4,'Times Square','Visit Times Square to experience all the excitement New York has to offer.'),
(20,4,'Museum of Natural History','Check out all the exicting exhibits involving natural phenomena at the Museum of Natural History.'),
(21,4,'Metropolitan Museum of Art','From Fabrege Eggs to Battle armor, the Metropolitan Museum of Art has something for everyone to enjoy.'),
(22,5,'Golden Gate Bridge','Check out the spectacular view at the Golden Gate Bridge!'),
(23,5,'Fisherman’s Wharf','See a functioning fishing wharf while visiting San Francisco.'),
(24,5,'Alcatraz Prison','Visit the prison where inmates from Whitey Bulger to Al Capone were housed!'),
(25,6,'Sydney Opera','Explore the Sydney Opera House.'),
(26,6,'Sydney Tower Eye','Visit the tallest structure in Sydney!.'),
(27,6,'Hyde Park','Enjoy a relaxing day at Hyde Park.');
# 27 records

#
# Table structure for table LocationImages
#

DROP TABLE IF EXISTS LocationImages;

CREATE TABLE LocationImages (
  ImageID INTEGER NOT NULL AUTO_INCREMENT, 
  LocationID INTEGER, 
  ImageName VARCHAR(255), 
  ImageCaption VARCHAR(255), 
  PRIMARY KEY (ImageID)
)ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table LocationImages
# 

INSERT INTO LocationImages (ImageID, LocationID, ImageName, ImageCaption) VALUES
(1, 1, 'Miami', 'Miami downtown district (shot over the Biscayne Bay)'),
(2, 2, 'Gatlinburg', 'Anakeesta mountaintop park'),
(3, 3, 'New Orleans', 'Bourbon Street'),
(4, 4, 'New York', 'Times Square'),
(5, 7, 'Paris', 'Eiffel Tower'),
(6, 8, 'Brussels', 'Grand Place'),
(7, 9, 'Frankfurt', 'Main River'),
(8, 5, 'San Francisco', 'Golden Gate Bridge'),
(9, 6, 'Sydney', 'Sydney Operahouse');
# 9 records



