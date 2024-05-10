CREATE DATABASE senzcraft;
use senzcraft;


CREATE TABLE `contacts` (
  `Sl NO` int(11) NOT NULL AUTO_INCREMENT,
  `Phone#` varchar(255) DEFAULT NULL,
  `Contact First Name` varchar(255) DEFAULT NULL,
  `Contact Last Name` varchar(255) DEFAULT NULL,
  `Contact Designation` varchar(255) DEFAULT NULL,
  `Contact Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Sl NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `contacts` (`Sl NO`, `Phone#`, `Contact First Name`, `Contact Last Name`, `Contact Designation`, `Contact Email`) VALUES
(1, '111222333', 'test123', 'last123', 'AM', 'test123@mail.com'),
(2, '222333444', 'test234', 'last234', 'PM', 'test234@mail.com'),
(3, '333444555', 'test345', 'last345', 'CM', 'test345@mail.com'),
(4, '444555666', 'test456', 'last456', 'GM', 'test456@mail.com'),
(5, '555666777', 'last567', 'AM', 'test567@mail.com', NULL),
(6, '666777888', 'test678', 'last678', 'PM', 'test678@mail.com'),
(7, '777888999', 'test789', 'last789', 'CM', 'test789@mail.com'),
(8, '889000110', 'test900', 'last900', 'GM', 'test900@mail.com'),
(9, '1000111221', 'test1011', 'last1011', 'AM', 'test1011@mail.com'),
(10, '1111222332', 'test1122', 'last1122', 'PM', 'test1122@mail.com'),
(11, '1222333443', 'test1233', 'last1233', 'CM', 'test1233@mail.com'),
(12, '1333444554', 'test1344', 'last1344', 'GM', 'test1344@mail.com'),
(13, '1444555665', 'test1455', 'AM', 'test1455@mail.com', NULL),
(14, '1555666776', 'test1566', 'last1566', 'PM', 'test1566@mail.com'),
(15, '1666777887', 'test1677', 'last1677', 'CM', 'test1677@mail.com'),
(16, '1777888998', 'test1788', 'last1788', NULL, NULL),
(17, '1889000109', 'test1899', 'last1899', 'AM', 'test1899@mail.com'),
(18, 'test2010', 'last2010', 'PM', 'test2010@mail.com', NULL);

CREATE TABLE `interest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Sl No` int(11) NOT NULL,
  `Interest` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `interest` (`id`, `Sl No`, `Interest`) VALUES
(1, 1, 'book'),
(2, 1, 'football'),
(3, 4, 'football'),
(4, 5, 'cricket'),
(5, 6, 'book'),
(6, 7, 'book'),
(7, 8, 'chess'),
(8, 9, 'music'),
(9, 10, 'football');