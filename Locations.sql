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

INSERT INTO Locations (LocationID, LocationCity, LocationState, LocationCountry, LocationDescription) VALUES (1, 'Miami', 'Florida', 'United States', 'Miami is a coastal city on the southern tip of Florida in the United States. It is known for its beaches and active night life.');
INSERT INTO Locations (LocationID, LocationCity, LocationState, LocationCountry, LocationDescription) VALUES (2, 'Gatlinburg', 'Tennessee', 'United States', 'Gatlinburg, Tennessee is a small town located in the Smokey Mountains. It is known for its tourist attractions, beautiful outdoor scenery, and its main shopping strip.');
INSERT INTO Locations (LocationID, LocationCity, LocationState, LocationCountry, LocationDescription) VALUES (3, 'New Orleans', 'Louisiana', 'United States', 'New Orleans, Louisiana is a coastal town in Lousiana. It is known for its Mardi Gras celebrations, French Quarter, and unique cajon style cuisine');
# 3 records

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

INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES (1, 1, 'Boat Tour', 'Take a tour of Miami as you sit back and enjoy the sights with a free drink');
INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES (2, 1, 'South Beach Art Deco Walking Tour', 'Enjoy some art as you walk along the beach');
INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES (3, 1, 'Miami Seaquarium', 'Enjoy some shows of extremely talented animals as you watch them interact with trainers. Also there is an aquarium.');
INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES (4, 2, 'Ripleys Aquarium', 'Come and see sharks, pirana, and even penguins at our small but extravagant aquarium');
INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES (5, 2, 'Anakeesta', 'Enjoy the mountainscape from the top of this mountain park. You can also enjoy our treetop walking tour, downhill coaster, and our fine restaurant.');
INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES (6, 2, 'Gatlinburg Skybridge', 'Enjoy the thrill of walking along a bridge that is suspended between two mountain peaks.');
INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES (7, 3, 'National WWII Museum', 'Take a look into history with our unique exhibits on World War 2.');
INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES (8, 3, 'Bourbon Street', 'Visit one of New Orleans oldest attractions while shopping and dining on amazing food.');
INSERT INTO Activities (ActivityID, LocationID, ActivityName, ActivityDescription) VALUES (9, 3, 'Jackson Square', 'Visit a park where artists paint, draw, and sell amazing artworks.');
# 9 records

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

INSERT INTO LocationImages (ImageID, LocationID, ImageName, ImageCaption) VALUES (1, 1, 'Miami', 'Miami downtown district (shot over the Biscayne Bay)');
INSERT INTO LocationImages (ImageID, LocationID, ImageName, ImageCaption) VALUES (2, 2, 'Gatlinburg', 'Anakeesta mountaintop park');
INSERT INTO LocationImages (ImageID, LocationID, ImageName, ImageCaption) VALUES (3, 3, 'New Orleans', 'Bourbon Street');
# 3 records



