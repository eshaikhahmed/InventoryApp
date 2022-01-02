-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for deadstock
CREATE DATABASE IF NOT EXISTS `deadstock` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `deadstock`;

-- Dumping structure for table deadstock.inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `inventoryid` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `inventory_type` varchar(255) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `condition1` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `active_status` int(11) DEFAULT '1',
  PRIMARY KEY (`inventoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table deadstock.inventory: ~4 rows (approximately)
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` (`inventoryid`, `inventory_name`, `brand`, `inventory_type`, `price`, `condition1`, `image`, `location`, `created_by`, `created_date`, `active_status`) VALUES
	(1, 'Laptop', 'Laptop', 'New', '2254', 'Good', 'engage.jpg', 'Mumbai', 1, '2017-02-16', 1),
	(5, 'Welcome', 'adsf', 'New', '564', 'Scrap', 'marriage.jpg', 'Mumbai', 1, '2017-02-22', 1),
	(7, 'Pencill Packets', 'Pencil', 'New', '3048', 'Scrap', 'engage.jpg', 'Mumbai', 1, '2017-02-22', 1),
	(9, 'Laptop', 'Laptop', 'New', '50000', 'Good', 'car_login.png', 'Mumbai', 1, '2017-02-16', 1),
	(10, 'Twist', 'Pooma', 'New', '5345', 'Better', 'reception.jpg', 'Thane', 1, '2018-01-22', 1),
	(11, 'Test', 'Pooma', 'Old', '300', 'Better', 'engage.jpg', 'Mumbai', 1, '2017-02-22', 1),
	(12, 'Pencil', 'Pencil', 'New', '340', 'Better', 'inventory.jpg', 'Mumbai', 1, '2017-02-22', 1),
	(13, 'Scrap Mat', 'Test', 'New', '59494', 'Scrap', 'marriage.jpg', 'Lab 1', 1, '2017-02-22', 1),
	(14, 'Okay', 'Great', 'New', '340', 'Scrap', 'engage.jpg', 'Lab 1', 1, '2017-02-22', 1);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;

-- Dumping structure for table deadstock.users
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Dumping data for table deadstock.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userid`, `username`, `password`, `fullname`, `gender`, `mobile`, `email`, `user_type`) VALUES
	(1, 'test', 'test', 'Testing', NULL, '8567574', 'test@gmail.com', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
