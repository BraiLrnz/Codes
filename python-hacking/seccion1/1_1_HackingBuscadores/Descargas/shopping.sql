# phpMyAdmin MySQL-Dump
# version 2.3.3pl1
# http://www.phpmyadmin.net/ (download page)
#
# Host: localhost
# Generation Time: Apr 09, 2003 at 11:46 AM
# Server version: 3.23.32
# PHP Version: 4.3.0
# Database : `shopping`
# --------------------------------------------------------

#
# Table structure for table `Clients`
#

CREATE TABLE Clients (
  PkClient int(12) NOT NULL auto_increment,
  Email varchar(255) NOT NULL default '',
  Password varchar(255) NOT NULL default '',
  Name varchar(255) NOT NULL default '',
  Address varchar(255) NOT NULL default '',
  City varchar(255) NOT NULL default '',
  State varchar(255) NOT NULL default '',
  Country varchar(255) NOT NULL default '',
  Zip varchar(10) NOT NULL default '',
  Phone varchar(15) NOT NULL default '',
  SName varchar(255) NOT NULL default '',
  SAddress varchar(255) NOT NULL default '',
  SCity varchar(255) NOT NULL default '',
  SState varchar(255) NOT NULL default '',
  SCountry varchar(255) NOT NULL default '',
  SZip varchar(10) NOT NULL default '',
  SPhone varchar(15) NOT NULL default '',
  Credit_Card varchar(255) NOT NULL default '',
  Credit_Number varchar(255) NOT NULL default '',
  Expiration date NOT NULL default '0000-00-00',
  PRIMARY KEY (PkClient),
  KEY Email(Email),
  KEY Password(Password)
) TYPE=MyISAM;

#
# Dumping data for table `clients`
#

INSERT INTO Clients VALUES (1, 'demo@demo.com', 'demo', 'Jorge Solis', 'Clavel 12', 'Madrid', 'Madrid', 'Spain', '2000', '111111', 'Jorge Solis', 'Clavel 12', 'Madrid', 'Madrid', 'Spain', '2000', '111111', 'American Express', '123456789', '2003-04-00');
# --------------------------------------------------------

#
# Table structure for table `Details`
#

CREATE TABLE Details (
  FkOrder int(11) NOT NULL default '0',
  FkProduct int(11) NOT NULL default '0',
  Qty int(11) NOT NULL default '0'
) TYPE=MyISAM;

#
# Dumping data for table `details`
#

INSERT INTO Details VALUES (1, 16, 1);
INSERT INTO Details VALUES (2, 16, 1);
INSERT INTO Details VALUES (3, 0, 0);
INSERT INTO Details VALUES (3, 1, 1);
INSERT INTO Details VALUES (4, 0, 0);
INSERT INTO Details VALUES (4, 1, 1);
INSERT INTO Details VALUES (5, 0, 0);
INSERT INTO Details VALUES (5, 21, 1);
INSERT INTO Details VALUES (6, 0, 0);
INSERT INTO Details VALUES (6, 16, 1);
# --------------------------------------------------------

#
# Table structure for table `Family`
#

CREATE TABLE Family (
  PkFamily int(11) NOT NULL auto_increment,
  Name varchar(255) NOT NULL default '',
  Image varchar(255) default NULL,
  Description mediumtext NOT NULL,
  PRIMARY KEY (PkFamily)
) TYPE=MyISAM;

#
# Dumping data for table `Family`
#

INSERT INTO Family VALUES (1, 'Sausage', '09-chorizo-extra-gran-vela-.jpg', '');
INSERT INTO Family VALUES (2, 'Sausages, salamis and fuet', '40-salami-extra.jpg', '');
INSERT INTO Family VALUES (3, 'Stuffed pork loin', '66-Lomo-embuchado-extra.jpg', '');
INSERT INTO Family VALUES (4, 'Yorks: Pork hams and shoulders', '58-Jamon-cocido-San-Pablo.jpg', '');
INSERT INTO Family VALUES (5, 'Poultry', '51-Chopped-de-Pavo.jpg', '');
# --------------------------------------------------------

#
# Table structure for table `Orders`
#

CREATE TABLE Orders (
  PkOrder int(11) NOT NULL auto_increment,
  FkClient int(11) NOT NULL default '0',
  Total float NOT NULL default '0',
  Shipping varchar(255) NOT NULL default '',
  Date timestamp(14) NOT NULL,
  PRIMARY KEY (PkOrder)
) TYPE=MyISAM;

# --------------------------------------------------------

#
# Table structure for table `Products`
#

CREATE TABLE Products (
  PkProduct int(11) NOT NULL auto_increment,
  FkFamily int(11) NOT NULL default '0',
  Name varchar(255) NOT NULL default '',
  Content int(11) NOT NULL default '0',
  Weigth decimal(4,2) NOT NULL default '0.00',
  Price decimal(4,2) NOT NULL default '0.00',
  Image varchar(255) NOT NULL default '',
  PRIMARY KEY (PkProduct)
) TYPE=MyISAM;

#
# Dumping data for table `Products`
#

INSERT INTO Products VALUES (1, 1, 'Handmade spicy sausage', 2, '2.00', '5.20', '06-chorizo-artesano.jpg');
INSERT INTO Products VALUES (2, 1, '"Gran Vela" spicy sausage', 6, '9.90', '7.10', '09-chorizo-extra-gran-vela-.jpg');
INSERT INTO Products VALUES (3, 1, 'Spicy sausage with pepper', 4, '6.40', '7.20', '05-chorizo-a-la-pimienta.jpg');
INSERT INTO Products VALUES (4, 1, '"Red Label" spicy sausage', 6, '9.90', '7.60', '07-chorizo-extra-etiqueta-r.jpg');
INSERT INTO Products VALUES (5, 1, 'Home-made spicy sausage', 12, '3.00', '5.30', '54-Chorizo-casero-picante-y.jpg');
INSERT INTO Products VALUES (6, 1, 'Home-made extra spicy sausage', 12, '3.00', '4.50', '54-Chorizo-casero-picante-y.jpg');
INSERT INTO Products VALUES (7, 1, '"Pamplona" spicy sausage', 2, '4.00', '6.00', '11-chorizo-pamplona.jpg');
INSERT INTO Products VALUES (8, 1, 'Extra quality spicy sausage 1 kg', 6, '6.00', '8.20', '09-chorizo-extra-gran-vela-.jpg');
INSERT INTO Products VALUES (9, 2, '"Velita" extra quality sausage', 12, '3.00', '9.00', '76-Salchichon-extra-velita.jpg');
INSERT INTO Products VALUES (10, 2, '"Cardenal" extra quality sausage', 4, '6.80', '8.65', '43-salchichon-cardenal.jpg');
INSERT INTO Products VALUES (11, 2, '"Oretano" III quality sausage 1 kg', 6, '6.00', '8.65', '45-salchichon-oretano.jpg');
INSERT INTO Products VALUES (12, 2, '"Oretano" III quality sausage 1,5 kg', 5, '7.50', '9.45', '45-salchichon-oretano.jpg');
INSERT INTO Products VALUES (13, 2, 'Salami Extra 120', 1, '4.10', '5.60', '40-salami-extra.jpg');
INSERT INTO Products VALUES (14, 2, 'Salami Extra 90', 1, '4.10', '4.90', '41-salami-extra-1.jpg');
INSERT INTO Products VALUES (15, 2, 'Fuet Extra', 25, '4.00', '10.25', '56-Fuet-extra.jpg');
INSERT INTO Products VALUES (16, 3, 'Stuffed pork loin', 4, '6.00', '8.80', '66-Lomo-embuchado-extra.jpg');
INSERT INTO Products VALUES (17, 3, 'Stuffed pork loin (half pieces)', 8, '6.00', '8.80', '66-Lomo-embuchado-extra.jpg');
INSERT INTO Products VALUES (18, 3, 'Serrano pork loin', 6, '6.60', '7.20', '67-Lomo-serrano.jpg');
INSERT INTO Products VALUES (19, 3, 'Serrano pork loin (half pieces)', 12, '6.60', '9.20', '67-Lomo-serrano.jpg');
INSERT INTO Products VALUES (20, 3, 'Duroc pork loin', 4, '6.40', '12.00', 'LOMO-PURO-DUROC.jpg');
INSERT INTO Products VALUES (21, 4, '"Deliss" extra Cooked Ham', 1, '6.40', '8.20', '57-Jamon-cocido-deliss.jpg');
INSERT INTO Products VALUES (22, 4, '"San Pablo" Cooked Ham', 1, '7.20', '8.00', '58-Jamon-cocido-San-Pablo.jpg');
INSERT INTO Products VALUES (23, 4, '"Supremo Guitarra" Cooked Ham', 1, '7.20', '8.50', '31-paleta-cocida-guitarra.jpg');
INSERT INTO Products VALUES (24, 4, 'Pork shoulder cold meat', 2, '9.00', '9.60', '33-paleta-cocida-oro.jpg');
INSERT INTO Products VALUES (25, 4, 'Cold meat III 11x11', 3, '9.00', '10.20', '16-fiambre-de-magro-11x11.jpg');
INSERT INTO Products VALUES (26, 4, '"Oro" cold meat 11x11', 3, '9.00', '9.60', '33-paleta-cocida-oro.jpg');
INSERT INTO Products VALUES (27, 4, 'Iberian York Delicatessen', 1, '4.00', '10.50', '17-fiambre-de-york-iberico.jpg');
INSERT INTO Products VALUES (28, 5, 'Chicken extra quality cold meat', 2, '9.00', '6.60', '38-pollo-extra.jpg');
INSERT INTO Products VALUES (29, 5, 'Turkey Chopped', 3, '9.00', '9.90', '51-Chopped-de-Pavo.jpg');
INSERT INTO Products VALUES (30, 5, 'Turkey breast', 1, '4.00', '11.00', '72-Pechuga-de-pavo.jpg');
INSERT INTO Products VALUES (31, 5, 'Turkey york', 1, '4.00', '9.50', '46-york-de-pavo.jpg');