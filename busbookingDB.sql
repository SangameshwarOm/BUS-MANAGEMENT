-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jan 30, 2024 at 12:17 PM
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
-- Database: `busbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_name` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_name`, `admin_password`) VALUES
('Praveenkumar', 'admin@123'),
('Sangamesh', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `bus_name` varchar(100) NOT NULL,
  `bording_point` varchar(100) NOT NULL,
  `droping_point` varchar(100) NOT NULL,
  `timing` varchar(100) NOT NULL,
  `ticket_price` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`bus_name`, `bording_point`, `droping_point`, `timing`, `ticket_price`) VALUES
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('A2S Travels', 'Chennai', 'Pondicherry', '8:00 AM', '500'),
('A2S Travels', 'Trichy', 'Srirangam', '9:30 AM', '220'),
('A2S Travels', 'Kanyakumari', 'Rameswaram', '11:00 AM', '140'),
('A2S Travels', 'Madurai', 'Theni', '1:00 PM', '150'),
('A2S Travels', 'Coimbatore', 'Udhagamandalam', '3:30 PM', '600'),
('A2S Travels', 'Erode', 'Mettupalayam', '5:00 PM', '140'),
('A2S Travels', 'Nagercoil', 'Kanyakumari', '7:00 PM', '110'),
('Baba Travels', 'Chennai', 'Mahabalipuram', '8:00 AM', '500'),
('Baba Travels', 'Trichy', 'Srirangam', '9:30 AM', '220'),
('Baba Travels', 'Madurai', 'Rameswaram', '11:00 AM', '150'),
('Baba Travels', 'Kumbakonam', 'Thanjavur', '1:00 PM', '110'),
('Baba Travels', 'Salem', 'Yercaud', '3:30 PM', '110'),
('Baba Travels', 'Coimbatore', 'Udhagamandalam', '5:00 PM', '600'),
('Baba Travels', 'Nagercoil', 'Trivandrum', '7:00 PM', '110'),
('Captain Travels', 'Chennai', 'Puducherry', '8:00 AM', '500'),
('Captain Travels', 'Thanjavur', 'Trichy', '9:30 AM', '100'),
('Captain Travels', 'Madurai', 'Theni', '11:00 AM', '150'),
('Captain Travels', 'Kanchipuram', 'Mahabalipuram', '1:00 PM', '130'),
('Captain Travels', 'Coimbatore', 'Mettupalayam', '3:30 PM', '600'),
('Captain Travels', 'Erode', 'Coonoor', '5:00 PM', '140'),
('Captain Travels', 'Kanyakumari', 'Kovalam', '7:00 PM', '140'),
('Dev Travels', 'Chennai', 'Tiruvannamalai', '8:00 AM', '500'),
('Dev Travels', 'Srirangam', 'Trichy', '9:30 AM', '100'),
('Dev Travels', 'Madurai', 'Sivagangai', '11:00 AM', '150'),
('Dev Travels', 'Thanjavur', 'Kumbakonam', '1:00 PM', '100'),
('Dev Travels', 'Coimbatore', 'Palani', '3:30 PM', '600'),
('Dev Travels', 'Salem', 'Namakkal', '5:00 PM', '110'),
('Dev Travels', 'Nagercoil', 'Trivandrum', '7:00 PM', '110'),
('Essaar Friends Travels', 'Chennai', 'Mahabalipuram', '8:00 AM', '500'),
('Essaar Friends Travels', 'Trichy', 'Kumbakonam', '9:30 AM', '220'),
('Essaar Friends Travels', 'Madurai', 'Theni', '11:00 AM', '150'),
('Essaar Friends Travels', 'Thanjavur', 'Darasuram', '1:00 PM', '100'),
('Essaar Friends Travels', 'Ooty', 'Coonoor', '3:30 PM', '90'),
('Essaar Friends Travels', 'Coimbatore', 'Palani', '5:00 PM', '600'),
('Essaar Friends Travels', 'Nagercoil', 'Varkala', '7:00 PM', '110'),
('GBT Travels', 'Chennai', 'Puducherry', '8:00 AM', '500'),
('GBT Travels', 'Srirangam', 'Trichy', '9:30 AM', '100'),
('GBT Travels', 'Madurai', 'Sivagangai', '11:00 AM', '150'),
('GBT Travels', 'Kanchipuram', 'Vellore', '1:00 PM', '130'),
('GBT Travels', 'Ooty', 'Kodaikanal', '3:30 PM', '90'),
('GBT Travels', 'Salem', 'Yercaud', '5:00 PM', '110'),
('GBT Travels', 'Trivandrum', 'Kovalam', '7:00 PM', ''),
('Hare Krishna Travels', 'Chennai', 'Tiruvannamalai', '8:00 AM', '500'),
('Hare Krishna Travels', 'Thanjavur', 'Swamimalai', '9:30 AM', '100'),
('Hare Krishna Travels', 'Madurai', 'Rameswaram', '11:00 AM', '150'),
('Hare Krishna Travels', 'Srirangam', 'Trichy', '1:00 PM', '100'),
('Hare Krishna Travels', 'Coimbatore', 'Valparai', '3:30 PM', '600'),
('Hare Krishna Travels', 'Erode', 'Mettupalayam', '5:00 PM', '140'),
('Hare Krishna Travels', 'Nagercoil', 'Kanyakumari', '7:00 PM', '110'),
('INDIGO Travels', 'Chennai', 'Chidambaram', '8:00 AM', '500'),
('INDIGO Travels', 'Trichy', 'Dindigul', '9:30 AM', '220'),
('INDIGO Travels', 'Madurai', 'Tuticorin', '11:00 AM', '150'),
('INDIGO Travels', 'Thanjavur', 'Nagapattinam', '1:00 PM', '100'),
('INDIGO Travels', 'Coimbatore', 'Pollachi', '3:30 PM', '600'),
('INDIGO Travels', 'Erode', 'Bhavani', '5:00 PM', '140'),
('INDIGO Travels', 'Nagercoil', 'Tirunelveli', '7:00 PM', '110'),
('J J Travels', 'Chennai', 'Vellore', '8:00 AM', '500'),
('J J Travels', 'Trichy', 'Pudukkottai', '9:30 AM', '220'),
('J J Travels', 'Madurai', 'Virudhunagar', '11:00 AM', '150'),
('J J Travels', 'Kanchipuram', 'Chettikulam', '1:00 PM', '130'),
('J J Travels', 'Coimbatore', 'Mettupalayam', '3:30 PM', '600'),
('J J Travels', 'Salem', 'Namakkal', '5:00 PM', '110'),
('J J Travels', 'Nagercoil', 'Thiruvananthapuram', '7:00 PM', '110'),
('K S Travels', 'Chennai', 'Kancheepuram', '8:00 AM', '500'),
('K S Travels', 'Trichy', 'Perambalur', '9:30 AM', '220'),
('K S Travels', 'Madurai', 'Thirumangalam', '11:00 AM', '150'),
('K S Travels', 'Thanjavur', 'Thiruvaiyaru', '1:00 PM', '100'),
('K S Travels', 'Coimbatore', 'Udhagamandalam', '3:30 PM', '600'),
('K S Travels', 'Erode', 'Coonoor', '5:00 PM', '140'),
('K S Travels', 'Nagercoil', 'Thiruvananthapuram', '7:00 PM', '110'),
('Lovely Travels', 'Chennai', 'Mahabalipuram', '8:00 AM', '500'),
('Lovely Travels', 'Trichy', 'Nagapattinam', '9:30 AM', '220'),
('Lovely Travels', 'Madurai', 'Tirunelveli', '11:00 AM', '150'),
('Lovely Travels', 'Thanjavur', 'Thiruvarur', '1:00 PM', '100'),
('Lovely Travels', 'Ooty', 'Kotagiri', '3:30 PM', '90'),
('Lovely Travels', 'Coimbatore', 'Pollachi', '5:00 PM', '600'),
('Lovely Travels', 'Trivandrum', 'Varkala', '7:00 PM', ''),
('M J Travels', 'Chennai', 'Pulicat', '8:00 AM', '500'),
('M J Travels', 'Trichy', 'Namakkal', '9:30 AM', '220'),
('M J Travels', 'Madurai', 'Tenkasi', '11:00 AM', '150'),
('M J Travels', 'Kanchipuram', 'Vandavasi', '1:00 PM', '130'),
('M J Travels', 'Ooty', 'Coonoor', '3:30 PM', '90'),
('M J Travels', 'Coimbatore', 'Valparai', '5:00 PM', '600'),
('M J Travels', 'Nagercoil', 'Tuticorin', '7:00 PM', '110'),
('Nanban Travels', 'Chennai', 'Vellore', '8:00 AM', '500'),
('Nanban Travels', 'Trichy', 'Ariyalur', '9:30 AM', '220'),
('Nanban Travels', 'Madurai', 'Sholavandan', '11:00 AM', '150'),
('Nanban Travels', 'Thanjavur', 'Karaikudi', '1:00 PM', '100'),
('Nanban Travels', 'Coimbatore', 'Valparai', '3:30 PM', '600'),
('Nanban Travels', 'Erode', 'Sathyamangalam', '5:00 PM', '140'),
('Nanban Travels', 'Trivandrum', 'Ponmudi', '7:00 PM', ''),
('Om Sai Ram Travels', 'Kanchipuram', 'Chengalpattu', '8:00 AM', '130'),
('Om Sai Ram Travels', 'Trichy', 'Pudukkottai', '9:30 AM', '220'),
('Om Sai Ram Travels', 'Madurai', 'Sholavandan', '11:00 AM', '150'),
('Om Sai Ram Travels', 'Ariyalur', 'Thanjavur', '1:00 PM', '130'),
('Om Sai Ram Travels', 'Valparai', 'Pollachi', '3:30 PM', ''),
('Om Sai Ram Travels', 'Erode', 'Sathyamangalam', '5:00 PM', '140'),
('Om Sai Ram Travels', 'Trivandrum', 'Neyyar Dam', '7:00 PM', ''),
('R K Travels', 'Chennai', 'Mahabalipuram', '8:00 AM', '500'),
('R K Travels', 'Trichy', 'Ariyalur', '9:30 AM', '220'),
('R K Travels', 'Tuticorin', 'Tirunelveli', '11:00 AM', ''),
('R K Travels', 'Karaikudi', 'Thanjavur', '1:00 PM', '220'),
('R K Travels', 'Pollachi', 'Valparai', '3:30 PM', '80'),
('R K Travels', 'Coimbatore', 'Mettupalayam', '5:00 PM', '600'),
('R K Travels', 'Trivandrum', 'Ponmudi', '7:00 PM', ''),
('SMS Travels', 'Chennai', 'Pulicat', '8:00 AM', '500'),
('SMS Travels', 'Thanjavur', 'Nagapattinam', '9:30 AM', '100'),
('SMS Travels', 'Madurai', 'Tenkasi', '11:00 AM', '150'),
('SMS Travels', 'Trichy', 'Perambalur', '1:00 PM', '220'),
('SMS Travels', 'Ooty', 'Kotagiri', '3:30 PM', '90'),
('SMS Travels', 'Coimbatore', 'Sathyamangalam', '5:00 PM', '600'),
('SMS Travels', 'Nagercoil', 'Varkala', '7:00 PM', '110'),
('Tamil Travels', 'Chidambaram', 'Gingee', '8:00 AM', ''),
('Tamil Travels', 'Thanjavur', 'Kallanai', '9:30 AM', '100'),
('Tamil Travels', 'Madurai', 'Kamudi', '11:00 AM', '150'),
('Tamil Travels', 'Trichy', 'Illuppur', '1:00 PM', '220'),
('Tamil Travels', 'Kodaikanal', 'Kadaya Nallur', '3:30 PM', '130'),
('Tamil Travels', 'Coimbatore', 'Bhavani', '5:00 PM', '600'),
('Tamil Travels', 'Trivandrum', 'Bhel', '7:00 PM', ''),
('U.K. Travels', 'Chennai', 'Avadi', '8:00 AM', '500'),
('U.K. Travels', 'Srirangam', 'Cuddalore', '9:30 AM', '100'),
('U.K. Travels', 'Tenkasi', 'Anaikarai', '11:00 AM', '80'),
('U.K. Travels', 'Nagapattinam', 'Adirampattinam', '1:00 PM', '130'),
('U.K. Travels', 'Kotagiri', 'Andimadam', '3:30 PM', ''),
('U.K. Travels', 'Pollachi', 'Angiyam', '5:00 PM', '80'),
('U.K. Travels', 'Varkala', 'Batlagundu', '7:00 PM', ''),
('V.I.P. Travels', 'Mahabalipuram', 'Chettikulam', '8:00 AM', ''),
('V.I.P. Travels', 'Kumbakonam', 'Chinnadharapuram', '9:30 AM', '110'),
('V.I.P. Travels', 'Rameswaram', 'Chinnanuttil', '11:00 AM', '100'),
('V.I.P. Travels', 'Dindigul', 'Chittoor', '1:00 PM', '100'),
('V.I.P. Travels', 'Coonoor', 'Cumbum', '3:30 PM', '80'),
('V.I.P. Travels', 'Mettupalayam', 'Devakottai', '5:00 PM', '120'),
('V.I.P. Travels', 'Trivandrum', 'Dharmapuri', '7:00 PM', ''),
('Amarnath Travels', 'Chennai', 'Tiruvannamalai', '8:00 AM', '500'),
('Amarnath Travels', 'Kanchipuram', 'Mahabalipuram', '9:30 AM', '130'),
('Amarnath Travels', 'Madurai', 'Kodaikanal', '11:00 AM', '150'),
('Amarnath Travels', 'Trichy', 'Thanjavur', '1:00 PM', '220'),
('Amarnath Travels', 'Coimbatore', 'Palani', '3:30 PM', '600'),
('Amarnath Travels', 'Erode', 'Coonoor', '5:00 PM', '140'),
('Amarnath Travels', 'Nagercoil', 'Trivandrum', '7:00 PM', '110'),
('Praveen Travels', 'Chennai', 'Mahabalipuram', '8:00 AM', '500'),
('Praveen Travels', 'Thanjavur', 'Kumbakonam', '9:30 AM', '100'),
('Praveen Travels', 'Madurai', 'Rameswaram', '11:00 AM', '150'),
('Praveen Travels', 'Tiruchirappalli', 'Srirangam', '1:00 PM', ''),
('Praveen Travels', 'Coimbatore', 'Ooty', '3:30 PM', '600'),
('Praveen Travels', 'Salem', 'Yercaud', '5:00 PM', '110'),
('Praveen Travels', 'Kanyakumari', 'Trivandrum', '7:00 PM', '140'),
('Praveen Travels', 'Devakottai', 'Coimbatore', '9:10 PM', '240');

-- --------------------------------------------------------

--
-- Table structure for table `bus_routes`
--

CREATE TABLE `bus_routes` (
  `route_id` bigint(11) NOT NULL,
  `droping_point` varchar(100) NOT NULL,
  `bording_point` varchar(100) NOT NULL,
  `date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_routes`
--

INSERT INTO `bus_routes` (`route_id`, `droping_point`, `bording_point`, `date`) VALUES
(1, 'Avadi', 'Chennai', '2024-02-10'),
(2, 'Coimbatore', 'Devakottai', '2024-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `cust_details`
--

CREATE TABLE `cust_details` (
  `Name` varchar(1000) NOT NULL,
  `Password` varchar(1000) NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `Phone_no` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cust_details`
--

INSERT INTO `cust_details` (`Name`, `Password`, `Email`, `Phone_no`) VALUES
('praveenkumar', '123', 'praveen@gmail.com', '9786680243'),
('vijay', '963', 'vijay@gmail.com', '9874563210'),
('Pughaz', '123', 'pughaz@gmail.com', '9874563210');

-- --------------------------------------------------------

--
-- Table structure for table `name_seat`
--

CREATE TABLE `name_seat` (
  `bus_id` int(11) NOT NULL,
  `bus_name` varchar(1000) NOT NULL,
  `seat_no` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `name_seat`
--

INSERT INTO `name_seat` (`bus_id`, `bus_name`, `seat_no`) VALUES
(1, 'U.K. Travels', '10'),
(2, 'Praveen Travels', '15');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_details`
--

CREATE TABLE `passenger_details` (
  `passenger_id` bigint(100) NOT NULL,
  `Passenger_name` varchar(1000) NOT NULL,
  `Passenger_age` int(100) NOT NULL,
  `Passenger_gender` varchar(100) NOT NULL,
  `passenger_email` varchar(1000) NOT NULL,
  `passenger_number` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger_details`
--

INSERT INTO `passenger_details` (`passenger_id`, `Passenger_name`, `Passenger_age`, `Passenger_gender`, `passenger_email`, `passenger_number`) VALUES
(1, 'krishna', 20, 'male', 'krishna@gmail.com', '9637418520'),
(2, 'sangameshwar', 20, 'male', 'sangam@gmail.com', '7410258963');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `name_seat`
--
ALTER TABLE `name_seat`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `passenger_details`
--
ALTER TABLE `passenger_details`
  ADD PRIMARY KEY (`passenger_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_routes`
--
ALTER TABLE `bus_routes`
  MODIFY `route_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `name_seat`
--
ALTER TABLE `name_seat`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passenger_details`
--
ALTER TABLE `passenger_details`
  MODIFY `passenger_id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
