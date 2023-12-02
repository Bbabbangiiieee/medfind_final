-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 02:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medfind`
--

-- --------------------------------------------------------

--
-- Table structure for table `classification`
--

CREATE TABLE `classification` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classification`
--

INSERT INTO `classification` (`class_id`, `class_name`) VALUES
(101, 'Liquid'),
(102, 'Tablet'),
(103, 'Capsules'),
(104, 'Injections'),
(105, 'Implants'),
(106, 'Drops'),
(107, 'Topical'),
(108, 'Suppositories'),
(110, 'Cream'),
(112, 'Syrup');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `med_id` int(11) NOT NULL,
  `med_name` varchar(100) DEFAULT NULL,
  `med_quan` int(11) DEFAULT NULL,
  `med_price` decimal(10,2) DEFAULT NULL,
  `med_pack` int(11) DEFAULT NULL,
  `med_dosage` varchar(50) DEFAULT NULL,
  `med_class` int(50) DEFAULT NULL,
  `med_stat` varchar(50) DEFAULT NULL,
  `med_added` date DEFAULT NULL,
  `med_exp` date DEFAULT NULL,
  `pharmacy` int(11) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `med_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`med_id`, `med_name`, `med_quan`, `med_price`, `med_pack`, `med_dosage`, `med_class`, `med_stat`, `med_added`, `med_exp`, `pharmacy`, `images`, `med_desc`) VALUES
(119, 'Biogesic', 120, '140.00', 202, '250mg/60mL', 101, 'Available', '2022-12-15', '2024-07-23', 2, 'Biogesic 60ml Susp.jpg', 'medicine for flu'),
(120, 'Biogesic', 500, '4.50', 203, '500mg', 102, 'Available', '2022-12-15', '2023-08-15', 2, 'Biogesic-Tablet-Product-Shot-New.jpg', 'medicine for flu'),
(121, 'BL Cream Rx', 34, '44.00', 207, '7g', 110, 'Available', '2022-12-15', '2024-03-13', 2, 'BL Cream Rx.jpg', 'moisturizer, diaper rash, skin burns'),
(122, 'BL Cream', 68, '60.00', 209, '10g', 110, 'Available', '2022-12-15', '2025-03-11', 2, 'BL Cream Tube.jpg', 'moisturizer, diaper rash, skin burns'),
(123, 'Blood Set Terumo', 10, '120.00', 210, 'n/a', 104, 'Available', '2022-12-15', '2024-06-15', 2, 'Blood set.png', ''),
(124, 'Bonamine', 280, '15.00', 203, '25mg', 102, 'Available', '2022-12-15', '2024-12-25', 2, 'Bonamin 25mg chew.webp', 'prevention and relief of nausea, dizziness and vomiting associated with motion sickness'),
(125, 'Boostavit', 0, '208.00', 202, '120mL', 101, 'Not Available', '2022-12-15', '2022-12-31', 2, 'Boostavit 120ml.jpg', ''),
(126, 'Broncaire Expectorant', 59, '115.00', 202, '60mL', 101, 'Available', '2022-12-15', '2022-12-05', 2, 'Broncaire 60ml.webp', ''),
(127, 'Bronchofen', 270, '121.00', 202, '1mg/0.8mg/mL/15mL', 106, 'Available', '2022-12-15', '2025-01-13', 2, 'Bronchofen-Drops.jpg', ''),
(128, 'Burinex', 100, '25.90', 203, '1mg', 102, 'Available', '2022-12-15', '2024-08-30', 2, 'Burinex.jpg', ''),
(129, 'Buscopan', 15, '28.00', 203, '10mg', 102, 'Available', '2022-12-15', '2022-12-10', 2, 'Buscopan 10 mg.jpg', ''),
(130, 'Aciclovir', 5, '7.50', 203, '200mg', 102, 'Available', '2022-12-15', '2022-12-05', 1, 'Aciclovir.jpg', ''),
(131, 'Aciclovir', 38, '20.25', 203, '400mg', 102, 'Available', '2022-12-15', '2024-08-01', 1, 'aciclovir-400mg.jpg', ''),
(132, 'Advil Liquigel', 7, '36.00', 203, '200mg', 103, 'Available', '2022-12-15', '2024-05-05', 1, 'advil 200mg.webp', ''),
(133, 'Alaxan FR', 53, '8.00', 203, '200mg/325mg', 103, 'Available', '2022-12-15', '2025-06-13', 1, 'alaxan capsule 200-325 mg.webp', ''),
(134, 'Ambroxol', 234, '1.00', 203, '30mg', 102, 'Available', '2022-12-15', '2022-12-01', 1, 'ambroxol 30mg.jpg', ''),
(135, 'Ambroxol', 167, '12.00', 203, '75mg', 102, 'Available', '2022-12-15', '2023-10-04', 1, 'ambroxol 75mg.webp', ''),
(136, 'Ambroxol', 56, '30.00', 207, '15ml', 106, 'Available', '2022-12-15', '2024-09-20', 1, 'ambroxol drop.png', ''),
(137, 'Biogesic', 65, '3.60', 203, '500mg', 102, 'Available', '2022-12-15', '2024-01-30', 1, 'Biogesic-Tablet-Product-Shot-New.jpg', ''),
(138, 'Advil', 673, '23.00', 203, '250mg', 102, 'Available', '2022-12-16', '2022-12-31', 1, 'advil 200mg.webp', '');

-- --------------------------------------------------------

--
-- Table structure for table `packaging`
--

CREATE TABLE `packaging` (
  `pack_id` int(11) NOT NULL,
  `pack_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packaging`
--

INSERT INTO `packaging` (`pack_id`, `pack_name`) VALUES
(201, 'Vials'),
(202, 'Bottles'),
(203, 'Blister'),
(204, 'Sachets'),
(205, 'Syringes'),
(206, 'Ampoules'),
(207, 'Cartons'),
(208, 'Boxes'),
(209, 'Tube'),
(210, 'Set');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_details`
--

CREATE TABLE `pharmacy_details` (
  `pharm_id` int(11) NOT NULL,
  `pharm_name` varchar(255) DEFAULT NULL,
  `pharm_address` varchar(255) DEFAULT NULL,
  `pharm_no` varchar(255) DEFAULT NULL,
  `pharm_email` varchar(255) DEFAULT NULL,
  `pharm_open` time DEFAULT NULL,
  `pharm_close` time DEFAULT NULL,
  `cover` varchar(100) DEFAULT NULL,
  `map` varchar(255) NOT NULL,
  `direction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacy_details`
--

INSERT INTO `pharmacy_details` (`pharm_id`, `pharm_name`, `pharm_address`, `pharm_no`, `pharm_email`, `pharm_open`, `pharm_close`, `cover`, `map`, `direction`) VALUES
(1, 'RM Health & Med', '66RW+43X, Tibanga Highway, Iligan City', 'n/a', 'rm@gmail.com', '08:00:00', '22:00:00', 'rm.png', 'RM Pharmacy, Tibanga, Iligan City', '/66RW%2B43X+RM+Pharmacy+Health+%26+Med,+Iligan+City,+Lanao+del+Norte/@8.2403664,124.2430481'),
(2, '18th Avenue Pharmacy', '66RW+HMG, Tibanga Highway, Iligan City', '(063) 228-6293', '18thp@gmail.com', '08:00:00', '22:00:00', '18thave.jpg', '18th Avenue Pharmacy, Tibanga, Iligan City', '/66RW%2BHMG+18th+Avenue+Pharmacy,+Tibanga+Highway,+Iligan+City,+Lanao+del+Norte/@8.2414538,124.2445');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pharmacy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `pharmacy`) VALUES
(1, 'Christina Mae', 'mineunmi143@gmail.com', 'mintaehyung', 1),
(2, 'Tina', 'asd@gmail.com', 'mintaehyung', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `med_pack` (`med_pack`),
  ADD KEY `med_class` (`med_class`),
  ADD KEY `pharmacy` (`pharmacy`);

--
-- Indexes for table `packaging`
--
ALTER TABLE `packaging`
  ADD PRIMARY KEY (`pack_id`);

--
-- Indexes for table `pharmacy_details`
--
ALTER TABLE `pharmacy_details`
  ADD PRIMARY KEY (`pharm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD KEY `pharmacy` (`pharmacy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classification`
--
ALTER TABLE `classification`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `packaging`
--
ALTER TABLE `packaging`
  MODIFY `pack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `pharmacy_details`
--
ALTER TABLE `pharmacy_details`
  MODIFY `pharm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`pharmacy`) REFERENCES `pharmacy_details` (`pharm_id`),
  ADD CONSTRAINT `medicine_ibfk_2` FOREIGN KEY (`med_class`) REFERENCES `classification` (`class_id`),
  ADD CONSTRAINT `medicine_ibfk_3` FOREIGN KEY (`med_pack`) REFERENCES `packaging` (`pack_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`pharmacy`) REFERENCES `pharmacy_details` (`pharm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
