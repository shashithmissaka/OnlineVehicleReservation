-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 10:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `car_name` varchar(255) NOT NULL,
  `start_location` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `car_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `car_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `distance` int(11) DEFAULT 0,
  `discounted_price` decimal(10,2) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `final_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `username`, `car_name`, `start_location`, `destination`, `price`, `payment_status`, `created_at`, `car_id`, `driver_id`, `car_type`, `payment_method`, `transaction_id`, `distance`, `discounted_price`, `tax_amount`, `final_price`) VALUES
(243, 'ravindu', 'Mercedes-Benz E-Class', 'Colombo', 'Kandy', 30000.00, 'Pending', '2025-03-12 18:26:46', 8, 2, 'Normal', 'Stripe', NULL, 132, 27000.00, 2700.00, 29700.00),
(244, 'shashith', 'Toyota RAV4', 'Colombo', 'Kandy', 10500.00, 'Completed', '2025-03-12 20:35:52', 11, 3, 'Luxury', 'Stripe', 'PAYPAL_TXN_1741811964756', 125, 5250.00, 525.00, 5775.00),
(245, 'shashith', 'Jaguar F-PACE', 'Colombo', 'Kandy', 30000.00, 'Pending', '2025-03-12 20:42:12', 12, 3, 'Luxury', 'Stripe', NULL, 130, 15000.00, 1500.00, 16500.00);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `car_type` varchar(50) DEFAULT NULL,
  `start_location` varchar(100) DEFAULT NULL,
  `destination` varchar(100) DEFAULT NULL,
  `availability` tinyint(1) DEFAULT 1,
  `car_name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `car_type`, `start_location`, `destination`, `availability`, `car_name`, `price`, `driver_id`, `distance`) VALUES
(1, 'Normal', 'Colombo', 'Kandy', 0, 'Toyota Vitz', 30000.00, 1, 100),
(4, 'Semi Luxury', 'Colombo', 'Kandy', 0, 'Tesla Model 3', 30000.00, 2, 128),
(7, 'Luxury', 'Colombo', 'Kandy', 0, 'Mazda CX-9', 10000.00, 1, 145),
(8, 'Normal', 'Colombo', 'Kandy', 0, 'Mercedes-Benz E-Class', 30000.00, 2, 132),
(11, 'Luxury', 'Colombo', 'Kandy', 0, 'Toyota RAV4', 10500.00, 3, 125),
(12, 'Luxury', 'Colombo', 'Kandy', 0, 'Jaguar F-PACE', 30000.00, 3, 130),
(13, 'Luxury', 'Kandy', 'Colombo', 1, 'Toyota Camry', 8500.00, 5, 121),
(14, 'Luxury', 'Galle', 'Kandy', 1, 'Mercedes-Benz C-Class', 18000.00, 4, 201),
(15, 'Normal', 'Negombo', 'Colombo', 1, 'Suzuki Alto', 4500.00, 4, 35),
(16, 'Luxury', 'Jaffna', 'Colombo', 1, 'BMW 5 Series', 25000.00, 4, 371),
(17, 'Semi Luxury', 'Matara', 'Galle', 1, 'Nissan X-Trail', 9200.00, 5, 51),
(18, 'Semi Luxury', 'Kandy', 'Galle', 1, 'Lexus RX', 20000.00, 1, 51),
(19, 'Normal', 'Colombo', 'Anuradhapura', 1, 'Honda Fit', 5000.00, 2, 150),
(20, 'Luxury', 'Badulla', 'Colombo', 1, 'Mazda CX-5', 9700.00, 4, 221),
(22, 'Semi Luxury', 'Anuradhapura', 'Kandy', 1, 'Hyundai Tucson', 10500.00, 1, 150),
(23, 'Normal', 'Colombo', 'Kurunegala', 1, 'Toyota Aqua', 6000.00, 2, 90),
(24, 'Luxury', 'Kurunegala', 'Colombo', 1, 'Jaguar XF', 28000.00, 2, 90),
(25, 'Semi Luxury', 'Galle', 'Matara', 1, 'Subaru Forester', 8800.00, 2, 51),
(26, 'Luxury', 'Colombo', 'Jaffna', 1, 'Range Rover Evoque', 32000.00, 2, 371),
(27, 'Semi Luxury', 'Colombo', 'Negombo', 1, 'Kia Picanto', 4800.00, 1, 35),
(28, 'Luxury', 'Negombo', 'Colombo', 1, 'BMW i8', 1500.00, 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `driver_name`, `phone`) VALUES
(1, 'Amal Perera', '0771234569'),
(2, 'Kamal Silva', '0772345678'),
(3, 'Nimal Fernando', '0773456789'),
(4, 'Sunil Jayawardena', '0774567890'),
(5, 'Rohan Weerasinghe', '0775678901'),
(7, 'Pasan Udaraka', '0746547895');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `attempt_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('FAILED','SUCCESS') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `username`, `attempt_time`, `status`) VALUES
(1, 'shashith', '2025-03-12 20:14:16', 'FAILED');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `driver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `booking_id`, `payment_status`, `payment_method`, `transaction_id`, `amount`, `created_at`, `driver_id`) VALUES
(164, 244, 'Completed', 'PayPal', 'PAYPAL_TXN_1741811964756', 5775.00, '2025-03-12 20:39:24', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nic`, `phone`, `email`) VALUES
(76, 'shashith', 'shashith', '961060141V', '0773953578', 'sm@sm.lk');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `LogFailedLogin` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    INSERT INTO login_attempts (username, attempt_time, status)
    VALUES (NEW.username, NOW(), 'FAILED');
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_booking_driver` (`driver_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_car_driver` (`driver_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `fk_driver_id` (`driver_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk_booking_driver` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`) ON DELETE SET NULL;

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `fk_car_driver` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`) ON DELETE SET NULL;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_payment_driver` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
