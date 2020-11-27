-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 07:13 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mit_ct_oa_fdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `Credentials_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`Credentials_ID`, `Person_ID`, `Username`, `Password`) VALUES
(1, 123, 'admin', '$2b$08$U0VES/hQqaNBzeM90mijUuzEEd.8alRIq9nRZJbF54KCLL4ljSxG.');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Person_ID` int NOT NULL,
  `Prefix_Ref` int DEFAULT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Gender_Ref` int DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Community_Ref` int DEFAULT NULL,
  `Caste` varchar(50) DEFAULT NULL,
  `Primary_MailID` varchar(50) DEFAULT NULL,
  `Secondary_MailID` varchar(50) DEFAULT NULL,
  `Aadhar_Card` bigint DEFAULT NULL,
  `PAN_Card` varchar(10) DEFAULT NULL,
  `Passport_Number` varchar(10) DEFAULT NULL,
  `Primary_ContactNumber` varchar(15) DEFAULT NULL,
  `Secondary_ContactNumber` varchar(15) DEFAULT NULL,
  `Intercom_Number` varchar(5) DEFAULT NULL,
  `Alias_Name` varchar(5) DEFAULT NULL,
  `Address_Line1` varchar(250) DEFAULT NULL,
  `Address_Line2` varchar(250) DEFAULT NULL,
  `Address_Line3` varchar(45) DEFAULT NULL,
  `Address_Line4` varchar(45) DEFAULT NULL,
  `Photo` blob,
  `Marital_Status_Ref` int DEFAULT NULL,
  `Room_Num` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`Person_ID`, `Prefix_Ref`, `First_Name`, `Last_Name`, `Gender_Ref`, `DOB`, `Community_Ref`, `Caste`, `Primary_MailID`, `Secondary_MailID`, `Aadhar_Card`, `PAN_Card`, `Passport_Number`, `Primary_ContactNumber`, `Secondary_ContactNumber`, `Intercom_Number`, `Alias_Name`, `Address_Line1`, `Address_Line2`, `Address_Line3`, `Address_Line4`, `Photo`, `Marital_Status_Ref`, `Room_Num`) VALUES
(123, 3, 'Dhanalakshmi', 'Sangili Sabapathy', 64, '1990-11-11', 6, '308 Nagaram', 'dhanalaxmibtechh@gmail.com', 'secondary@gmail.com', 123412341234, '12341233', '123456788', '9985596879', '8896857688', '123', 'Dhana', '21st Street', 'Nanganallur', 'Chennai', '600061', NULL, 65, '1033');

-- --------------------------------------------------------

--
-- Table structure for table `person_academic`
--

CREATE TABLE `person_academic` (
  `Academic_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Course_Code` varchar(7) DEFAULT NULL,
  `Session` varchar(20) DEFAULT NULL,
  `Semester` int DEFAULT NULL,
  `Group` varchar(2) DEFAULT NULL,
  `Degree_Ref` int DEFAULT NULL,
  `Branch_Ref` int DEFAULT NULL,
  `Class_Time` time DEFAULT NULL,
  `Class_Type_Ref` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_additional_duties`
--

CREATE TABLE `person_additional_duties` (
  `Duty_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Duty_Allotted` varchar(45) DEFAULT NULL,
  `Organization` varchar(100) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_awards`
--

CREATE TABLE `person_awards` (
  `Award_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Organization` varchar(100) DEFAULT NULL,
  `Place` varchar(15) DEFAULT NULL,
  `Start_Year` year DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `person_awards`
--

INSERT INTO `person_awards` (`Award_ID`, `Person_ID`, `Title`, `Organization`, `Place`, `Start_Year`, `Details`) VALUES
(2, 123, 'First Responder Award', 'Madras Institute Of Technology', 'Chennai', 2010, 'For Always Being Ready To Go When Needed'),
(3, 123, '99% Perspiration Award', 'Anna University', 'Chennai', 2011, 'For Willingness To Put In The Hard Work');

-- --------------------------------------------------------

--
-- Table structure for table `person_course_details`
--

CREATE TABLE `person_course_details` (
  `Course_ID` int NOT NULL,
  `Course_Code` varchar(7) NOT NULL,
  `Course_Name` varchar(50) DEFAULT NULL,
  `Regulation` year DEFAULT NULL,
  `Credit` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_events_attended`
--

CREATE TABLE `person_events_attended` (
  `Event_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Event_Type_Ref` int DEFAULT NULL,
  `Level_Ref` int DEFAULT NULL,
  `Event_Title` varchar(100) DEFAULT NULL,
  `Hosting_Organization` varchar(100) DEFAULT NULL,
  `Place` varchar(45) DEFAULT NULL,
  `Participation_Status_Ref` int DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Funding_Agency` varchar(255) DEFAULT NULL,
  `No_Of_Participants` int DEFAULT NULL,
  `Summary_File` blob,
  `Event_Schedule` blob,
  `Participants_Lists` blob,
  `Budget` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_experience`
--

CREATE TABLE `person_experience` (
  `Experience_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Designation_Ref` int DEFAULT NULL,
  `Organization` varchar(100) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Emp_Category_Ref` int DEFAULT NULL,
  `Work_Nature_Ref` int DEFAULT NULL,
  `Position_Held` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `person_experience`
--

INSERT INTO `person_experience` (`Experience_ID`, `Person_ID`, `Designation_Ref`, `Organization`, `Department`, `Start_Date`, `End_Date`, `Emp_Category_Ref`, `Work_Nature_Ref`, `Position_Held`) VALUES
(2, 123, 41, 'Madras Institute Of Technology, Anna University', 'Computer Science and Technology', '2010-02-01', '2014-04-09', 43, 45, 'Position Held'),
(3, 123, 39, 'Madras Institute Of Technology, Anna University', 'Computer Science and Technology', '2015-06-15', '2018-11-14', 43, 44, 'Position Held');

-- --------------------------------------------------------

--
-- Table structure for table `person_guestlecture`
--

CREATE TABLE `person_guestlecture` (
  `GuestLecture_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Level_Ref` int DEFAULT NULL,
  `Topic` varchar(100) DEFAULT NULL,
  `Programme` varchar(100) DEFAULT NULL,
  `Organization` varchar(100) DEFAULT NULL,
  `Place` varchar(20) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_membership`
--

CREATE TABLE `person_membership` (
  `Member_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Prof_Body` varchar(45) DEFAULT NULL,
  `Membership_NUM` varchar(15) DEFAULT NULL,
  `Member_Type` int DEFAULT NULL,
  `Sart_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_patents`
--

CREATE TABLE `person_patents` (
  `Patent_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Patent_Number` varchar(15) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `Place` varchar(15) DEFAULT NULL,
  `Patent_Status_Ref` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_project_allocation`
--

CREATE TABLE `person_project_allocation` (
  `Project_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Qualification_Level_Ref` int DEFAULT NULL,
  `Batch_ID` varchar(5) DEFAULT NULL,
  `Reg_Num` bigint DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Project_Domain` varchar(45) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_project_proposal`
--

CREATE TABLE `person_project_proposal` (
  `Proposal_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Project_Type_Ref` int DEFAULT NULL,
  `PI_Name` varchar(45) DEFAULT NULL,
  `COI1_Name` varchar(45) DEFAULT NULL,
  `COI2_Name` varchar(45) DEFAULT NULL,
  `Status_Ref` int DEFAULT NULL,
  `Fund_Agency` varchar(100) DEFAULT NULL,
  `TotalSanctionedAmount` double DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Dept` varchar(45) DEFAULT NULL,
  `Co_Dept` varchar(45) DEFAULT NULL,
  `Co_Institution` varchar(100) DEFAULT NULL,
  `Abstract` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_publication`
--

CREATE TABLE `person_publication` (
  `Publication_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Publication_Type_Ref` int DEFAULT NULL,
  `Level_Ref` int DEFAULT NULL,
  `Paper_Title` varchar(255) DEFAULT NULL,
  `First_Author` varchar(50) DEFAULT NULL,
  `Second_Author` varchar(50) DEFAULT NULL,
  `Other_Authors` varchar(255) DEFAULT NULL,
  `Journal_Name` varchar(255) DEFAULT NULL,
  `Volume` int DEFAULT NULL,
  `Issue` int DEFAULT NULL,
  `DOI` varchar(50) DEFAULT NULL,
  `Year_Of_Publish` year DEFAULT NULL,
  `Start_Page_No` int DEFAULT NULL,
  `End_Page_No` int DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  `Impact_Factor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `person_publication`
--

INSERT INTO `person_publication` (`Publication_ID`, `Person_ID`, `Publication_Type_Ref`, `Level_Ref`, `Paper_Title`, `First_Author`, `Second_Author`, `Other_Authors`, `Journal_Name`, `Volume`, `Issue`, `DOI`, `Year_Of_Publish`, `Start_Page_No`, `End_Page_No`, `Publisher`, `Impact_Factor`) VALUES
(1, 123, 72, 48, 'Detection and Mitigation of DDoS in SDN using Machine Learning', 'Vignesh B', 'Kugan S', 'Aruna R', 'IEEE Conference in Networking', 19, 14, '10.1109/ACCESS.2019.2019331', 2017, 15567, 15589, 'IEEE', 0),
(2, 123, 71, 46, 'Epileptic Seizure Forecasting Using Deep Neural Network', 'Ramanujan V', 'Caushik B', 'Aditya V', 'IEEE Conference in Artificial Intelligence', 3, 55, '10.1109/ACCESS.2019.2019330', 2019, 1267, 1289, 'IEEE', 0),
(13, 123, 71, 47, 'CoDAG: An Efficient and Compacted DAG-Based Blockchain Protocol', 'Shu Yang ', 'Ziteng Chen', 'Laizhong Cui, Mingwei Xu', '2019 IEEE International Conference on Blockchain (Blockchain)', 4, 32, '10.1109/Blockchain.2019.00049', 2019, 1023, 1032, NULL, NULL),
(14, 123, 72, 46, 'ChainSplitter: Towards Blockchain-Based Industrial IoT Architecture for Supporting Hierarchical Storage', 'Gang Wang ', 'Zhijie Shi', 'Mark Nixon, Song Han', '2019 IEEE International Conference on Blockchain (Blockchain)', 10, 2, '10.1109/Blockchain.2019.00030', 2019, 2048, 2056, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person_qualification`
--

CREATE TABLE `person_qualification` (
  `Qualification_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Qualification_Level_Ref` int DEFAULT NULL,
  `Degree_Ref` int DEFAULT NULL,
  `Branch_Ref` int DEFAULT NULL,
  `Institution` varchar(100) DEFAULT NULL,
  `University` varchar(50) DEFAULT NULL,
  `Start_Date` year DEFAULT NULL,
  `End_Date` year DEFAULT NULL,
  `Class_Obtained_Ref` int DEFAULT NULL,
  `Thesis_Title` varchar(150) DEFAULT NULL,
  `Specialization` varchar(45) DEFAULT NULL,
  `Faculty_Research` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `person_qualification`
--

INSERT INTO `person_qualification` (`Qualification_ID`, `Person_ID`, `Qualification_Level_Ref`, `Degree_Ref`, `Branch_Ref`, `Institution`, `University`, `Start_Date`, `End_Date`, `Class_Obtained_Ref`, `Thesis_Title`, `Specialization`, `Faculty_Research`) VALUES
(1, 123, 11, 16, 26, 'Madras Institute Of Technology', 'Anna University ABC', 2006, 2009, 34, '', '', ''),
(2, 123, 11, 15, 26, 'Indian Institute Of Technology', 'Madras University', 2012, 2014, 33, 'Thesis Title ABC', 'Specialization ABC', 'Faculty Research ABC'),
(3, 123, 11, 19, 26, 'Madras Institute Of Technology', 'Indian University', 2015, 2017, 33, 'Thesis Title ABC', 'Specialization ABC', 'Faculty Research ABC');

-- --------------------------------------------------------

--
-- Table structure for table `person_reference_table`
--

CREATE TABLE `person_reference_table` (
  `Reference_ID` int NOT NULL,
  `Ref_Code` int NOT NULL,
  `Category` varchar(25) DEFAULT NULL,
  `Ref_Name` varchar(100) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `person_reference_table`
--

INSERT INTO `person_reference_table` (`Reference_ID`, `Ref_Code`, `Category`, `Ref_Name`, `Description`) VALUES
(0, 0, 'undefined', 'undefined', 'NULL'),
(1, 1, 'Prefix', 'Mr.', NULL),
(2, 2, 'Prefix', 'Mrs.', NULL),
(3, 3, 'Prefix', 'Dr.', NULL),
(4, 4, 'Prefix', 'Ms.', NULL),
(5, 5, 'Community', 'BACKWARD COMMUNITY', NULL),
(6, 6, 'Community', 'SCHEDULED TRIBE', NULL),
(7, 7, 'Community', 'SCHEDULED CASTE', NULL),
(8, 8, 'Community', 'MOST BACKWARD COMMUNITY', NULL),
(9, 9, 'Community', 'BACKWARD COMMUNITY', NULL),
(10, 10, 'Community', 'OTHER COMMUNITY', NULL),
(11, 11, 'Qualification_Level', 'UNDER GRADUATE', NULL),
(12, 12, 'Qualification_Level', 'POST GRADUATE', NULL),
(13, 13, 'Qualification_Level', 'DOCTORATE', NULL),
(14, 14, 'Degree', 'B.C.A', NULL),
(15, 15, 'Degree', 'B.E.', NULL),
(16, 16, 'Degree', 'B.Sc.', NULL),
(17, 17, 'Degree', 'B.Tech.', NULL),
(18, 18, 'Degree', 'M.C.A', NULL),
(19, 19, 'Degree', 'M.E.', NULL),
(20, 20, 'Degree', 'M.Tech.', NULL),
(21, 21, 'Degree', 'M.Sc.', NULL),
(22, 22, 'Degree', 'M.S.', NULL),
(23, 23, 'Degree', 'Ph.D.', NULL),
(24, 24, 'Degree', 'Postdoctoral Research', NULL),
(25, 25, 'Branch', 'COMPUTER SCIENCE AND ENGINEERING', NULL),
(26, 26, 'Branch', 'COMPUTER SCIENCE', NULL),
(27, 27, 'Branch', 'ELECTRICAL AND ELECTRONICS ENGINEERING', NULL),
(28, 28, 'Branch', 'ELECTRONICS AND COMMUNICATION ENGINEERING', NULL),
(29, 29, 'Branch', 'ELECTRONICS AND INSTRUMENTATION ENGINEERING', NULL),
(30, 30, 'Branch', 'INFORMATION TECHNOLOGY', NULL),
(31, 31, 'Branch', 'OTHER', NULL),
(32, 32, 'Class_Obtained', 'Honors', NULL),
(33, 33, 'Class_Obtained', 'First Class with Distinction', NULL),
(34, 34, 'Class_Obtained', 'First Class', NULL),
(35, 35, 'Class_Obtained', 'Second Class', NULL),
(36, 36, 'Class_Obtained', 'Others', NULL),
(37, 37, 'Designation', 'Professor', NULL),
(38, 38, 'Designation', 'Associate Professor', NULL),
(39, 39, 'Designation', 'Assistant Professor Sr. Grade', NULL),
(40, 40, 'Designation', 'Assistant Professor Sl. Grade', NULL),
(41, 41, 'Designation', 'Teaching Fellow', NULL),
(42, 42, 'Emp_Category', 'Permanent', NULL),
(43, 43, 'Emp_Category', 'Temporary', NULL),
(44, 44, 'Work Nature', 'Industry', NULL),
(45, 45, 'Work Nature', 'Academics/Research', NULL),
(46, 46, 'Level', 'International', NULL),
(47, 47, 'Level', 'National', NULL),
(48, 48, 'Level', 'State', NULL),
(49, 49, 'Event_Type', 'Conference', NULL),
(50, 50, 'Event_Type', 'Seminar', NULL),
(51, 51, 'Event_Type', 'Workshop', NULL),
(52, 52, 'Event_Type', 'Guest_Lecture', NULL),
(53, 53, 'Event_Type', 'Short Course', NULL),
(54, 54, 'Project_Type', 'Research', NULL),
(55, 55, 'Project_Type', 'Infra Structure', NULL),
(56, 56, 'Project_Type', 'Consultancy', NULL),
(57, 57, 'Guide_Type', 'Supervisor', NULL),
(58, 58, 'Guide_Type', 'Joint Supervisor', NULL),
(59, 59, 'Status', 'Completed', NULL),
(60, 60, 'Status', 'Ongoing', NULL),
(61, 61, 'Patent_Status', 'Filed', NULL),
(62, 62, 'Patent_Status', 'Awarded', NULL),
(63, 63, 'Gender', 'Male', NULL),
(64, 64, 'Gender', 'Female', NULL),
(65, 65, 'Marital_Status', 'Married', NULL),
(66, 66, 'Marital_Status', 'Unmarried', NULL),
(67, 67, 'Marital_Status', 'Widow/Widower', NULL),
(68, 68, 'Participation_Status', 'Presented', NULL),
(69, 69, 'Participation_Status', 'Attended', NULL),
(70, 70, 'Publication_Type', 'Poster', NULL),
(71, 71, 'Publication_Type', 'Conference', NULL),
(72, 72, 'Publication_Type', 'Journal', NULL),
(73, 73, 'Class_Type', 'Theory', NULL),
(74, 74, 'Class_Type', 'Laboratory', NULL),
(75, 75, 'Class_Type', 'Project', NULL),
(76, 76, 'Responsibility_Ref', 'FA', NULL),
(77, 77, 'Responsibility_Ref', 'Library Incharge', NULL),
(78, 78, 'Responsibility_Ref', 'PI of proposal', NULL),
(79, 79, 'Responsibility_Ref', 'Project Coordinator', NULL),
(80, 80, 'Membership_Type', 'Member', NULL),
(81, 81, 'Membership_Type', 'Senior', NULL),
(82, 82, 'Option', 'Yes', NULL),
(83, 83, 'Option', 'No', NULL),
(84, 84, 'Registration_Mode', 'Full Time', NULL),
(85, 85, 'Registration_Mode', 'Part Time', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person_responsibility`
--

CREATE TABLE `person_responsibility` (
  `Responsibility_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Responsibility_Ref` int DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_scholardetails`
--

CREATE TABLE `person_scholardetails` (
  `Scholar_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Reg_No` varchar(10) DEFAULT NULL,
  `Scholar_Name` varchar(45) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Status_Ref` int DEFAULT NULL,
  `Guide_Type_Ref` int DEFAULT NULL,
  `Fellowship_Received_Ref` int DEFAULT NULL,
  `Fellowship_Agency` varchar(45) DEFAULT NULL,
  `Fellowship_Amount` float DEFAULT NULL,
  `Year_Of_Registration` date DEFAULT NULL,
  `Research_Area` varchar(45) DEFAULT NULL,
  `Registration_Mode_Ref` int DEFAULT NULL,
  `Fellowship_Name` varchar(45) DEFAULT NULL,
  `Fellowship_Year` date DEFAULT NULL,
  `Year_Of_Completion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_specialization`
--

CREATE TABLE `person_specialization` (
  `Specialization_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `AOS1` varchar(45) DEFAULT NULL,
  `AOS2` varchar(45) DEFAULT NULL,
  `AOS3` varchar(45) DEFAULT NULL,
  `AOS4` varchar(45) DEFAULT NULL,
  `AOS5` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_supervision`
--

CREATE TABLE `person_supervision` (
  `Supervision_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Degree_Ref` int DEFAULT NULL,
  `Guide_Type_Ref` int DEFAULT NULL,
  `Reg_No` bigint DEFAULT NULL,
  `Start_Year` year DEFAULT NULL,
  `End_Year` year DEFAULT NULL,
  `Status_Ref` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_travel_history`
--

CREATE TABLE `person_travel_history` (
  `Travel_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Organization` varchar(100) DEFAULT NULL,
  `Place` varchar(15) DEFAULT NULL,
  `Agency` varchar(100) DEFAULT NULL,
  `Purpose` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_ID` int NOT NULL,
  `username` int NOT NULL,
  `user_role` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`Credentials_ID`),
  ADD UNIQUE KEY `Username` (`Username`(128)),
  ADD KEY `Person_ID` (`Person_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Person_ID`),
  ADD UNIQUE KEY `Person_ID_UNIQUE` (`Person_ID`),
  ADD KEY `Gender_Reference_ID_FK_idx` (`Gender_Ref`),
  ADD KEY `Community_Reference_ID_FK_idx` (`Community_Ref`),
  ADD KEY `Marital_Status_Reference_ID_FK_idx` (`Marital_Status_Ref`),
  ADD KEY `Prefix_Reference_ID_FK_idx` (`Prefix_Ref`);

--
-- Indexes for table `person_academic`
--
ALTER TABLE `person_academic`
  ADD PRIMARY KEY (`Academic_ID`),
  ADD UNIQUE KEY `Academic_ID_UNIQUE` (`Academic_ID`),
  ADD KEY `Branch_Reference_ID_FK_idx` (`Branch_Ref`),
  ADD KEY `Person_ID_FK219` (`Person_ID`),
  ADD KEY `Degree_Reference_ID_FK2_idx` (`Degree_Ref`),
  ADD KEY `Class_Type_Reference_ID_FK2_idx` (`Class_Type_Ref`),
  ADD KEY `Course_Code_FK_idx` (`Course_Code`);

--
-- Indexes for table `person_additional_duties`
--
ALTER TABLE `person_additional_duties`
  ADD PRIMARY KEY (`Duty_ID`),
  ADD UNIQUE KEY `Supervision_ID_UNIQUE` (`Duty_ID`),
  ADD KEY `Person_ID_FK213` (`Person_ID`);

--
-- Indexes for table `person_awards`
--
ALTER TABLE `person_awards`
  ADD PRIMARY KEY (`Award_ID`),
  ADD UNIQUE KEY `Award_ID_UNIQUE` (`Award_ID`),
  ADD KEY `Person_ID_FK218` (`Person_ID`);

--
-- Indexes for table `person_course_details`
--
ALTER TABLE `person_course_details`
  ADD PRIMARY KEY (`Course_ID`,`Course_Code`),
  ADD UNIQUE KEY `Member_ID_UNIQUE` (`Course_ID`),
  ADD UNIQUE KEY `Course_Code_UNIQUE` (`Course_Code`);

--
-- Indexes for table `person_events_attended`
--
ALTER TABLE `person_events_attended`
  ADD PRIMARY KEY (`Event_ID`),
  ADD UNIQUE KEY `Event_ID_UNIQUE` (`Event_ID`),
  ADD KEY `Event_Type_Reference_ID_FK_idx` (`Event_Type_Ref`),
  ADD KEY `Participation_Status_Reference_ID_FK_idx` (`Participation_Status_Ref`),
  ADD KEY `Status_Reference_ID_FK_idx` (`Level_Ref`),
  ADD KEY `Person_ID_FK2110` (`Person_ID`);

--
-- Indexes for table `person_experience`
--
ALTER TABLE `person_experience`
  ADD PRIMARY KEY (`Experience_ID`),
  ADD UNIQUE KEY `Experience_ID_UNIQUE` (`Experience_ID`),
  ADD KEY `Designation_Reference_ID_FK_idx` (`Designation_Ref`),
  ADD KEY `Emp_category_Reference_ID_FK_idx` (`Emp_Category_Ref`),
  ADD KEY `Work_Nature_Reference_ID_FK_idx` (`Work_Nature_Ref`),
  ADD KEY `Person_ID_FK2` (`Person_ID`);

--
-- Indexes for table `person_guestlecture`
--
ALTER TABLE `person_guestlecture`
  ADD PRIMARY KEY (`GuestLecture_ID`),
  ADD UNIQUE KEY `GuestLecture_ID_UNIQUE` (`GuestLecture_ID`),
  ADD KEY `Level_Reference_ID_FK_idx` (`Level_Ref`),
  ADD KEY `Person_ID_FK215` (`Person_ID`);

--
-- Indexes for table `person_membership`
--
ALTER TABLE `person_membership`
  ADD PRIMARY KEY (`Member_ID`),
  ADD UNIQUE KEY `Member_ID_UNIQUE` (`Member_ID`),
  ADD KEY `Person_ID_FK210` (`Person_ID`),
  ADD KEY `Member_Type_Reference_FK_idx` (`Member_Type`);

--
-- Indexes for table `person_patents`
--
ALTER TABLE `person_patents`
  ADD PRIMARY KEY (`Patent_ID`),
  ADD UNIQUE KEY `Patent_ID_UNIQUE` (`Patent_ID`),
  ADD KEY `Patent_Status_idx` (`Patent_Status_Ref`),
  ADD KEY `Person_ID_FK217` (`Person_ID`);

--
-- Indexes for table `person_project_allocation`
--
ALTER TABLE `person_project_allocation`
  ADD PRIMARY KEY (`Project_ID`),
  ADD UNIQUE KEY `Supervision_ID_UNIQUE` (`Project_ID`),
  ADD KEY `Person_ID_FK213` (`Person_ID`);

--
-- Indexes for table `person_project_proposal`
--
ALTER TABLE `person_project_proposal`
  ADD PRIMARY KEY (`Proposal_ID`),
  ADD UNIQUE KEY `Proposal_ID_UNIQUE` (`Proposal_ID`),
  ADD KEY `Type_Reference_ID_FK_idx` (`Project_Type_Ref`),
  ADD KEY `Status_Reference_ID_FK_idx` (`Status_Ref`),
  ADD KEY `Person_ID_FK212` (`Person_ID`);

--
-- Indexes for table `person_publication`
--
ALTER TABLE `person_publication`
  ADD PRIMARY KEY (`Publication_ID`),
  ADD UNIQUE KEY `Journal_ID_UNIQUE` (`Publication_ID`),
  ADD KEY `Level_Reference_ID_FK_idx` (`Level_Ref`),
  ADD KEY `Person_ID_FK20` (`Person_ID`),
  ADD KEY `Type_Reference_ID_FK1_idx` (`Publication_Type_Ref`);

--
-- Indexes for table `person_qualification`
--
ALTER TABLE `person_qualification`
  ADD PRIMARY KEY (`Qualification_ID`),
  ADD UNIQUE KEY `Qualification_ID_UNIQUE` (`Qualification_ID`),
  ADD KEY `Qualify_Level_Reference_ID_FK_idx` (`Qualification_Level_Ref`),
  ADD KEY `Degree_Reference_ID_FK_idx` (`Degree_Ref`),
  ADD KEY `Branch_Reference_ID_FK_idx` (`Branch_Ref`),
  ADD KEY `Class_Reference_ID_FK_idx` (`Class_Obtained_Ref`),
  ADD KEY `Person_ID_FK1` (`Person_ID`);

--
-- Indexes for table `person_reference_table`
--
ALTER TABLE `person_reference_table`
  ADD PRIMARY KEY (`Reference_ID`),
  ADD UNIQUE KEY `Reference_ID_UNIQUE` (`Reference_ID`),
  ADD UNIQUE KEY `Ref_Code_Unique` (`Ref_Code`),
  ADD UNIQUE KEY `Ref_Code` (`Ref_Code`) USING BTREE;

--
-- Indexes for table `person_responsibility`
--
ALTER TABLE `person_responsibility`
  ADD PRIMARY KEY (`Responsibility_ID`),
  ADD UNIQUE KEY `Responsibility_ID_UNIQUE` (`Responsibility_ID`),
  ADD KEY `Person_ID_FK211` (`Person_ID`),
  ADD KEY `Responsibility_Type_Reference_FK_idx` (`Responsibility_Ref`);

--
-- Indexes for table `person_scholardetails`
--
ALTER TABLE `person_scholardetails`
  ADD PRIMARY KEY (`Scholar_ID`),
  ADD UNIQUE KEY `Scholar_ID_UNIQUE` (`Scholar_ID`),
  ADD KEY `Status_Reference_ID_FK_idx` (`Status_Ref`),
  ADD KEY `Guide_Type_Reference_ID_FK_idx` (`Guide_Type_Ref`),
  ADD KEY `Person_ID_FK214` (`Person_ID`),
  ADD KEY `Fellowship_Received_Ref_FK_idx` (`Fellowship_Received_Ref`),
  ADD KEY `Registration_Mode_Ref_FK_idx` (`Registration_Mode_Ref`);

--
-- Indexes for table `person_specialization`
--
ALTER TABLE `person_specialization`
  ADD PRIMARY KEY (`Specialization_ID`),
  ADD UNIQUE KEY `Supervision_ID_UNIQUE` (`Specialization_ID`),
  ADD KEY `Person_ID_FK213` (`Person_ID`);

--
-- Indexes for table `person_supervision`
--
ALTER TABLE `person_supervision`
  ADD PRIMARY KEY (`Supervision_ID`),
  ADD UNIQUE KEY `Supervision_ID_UNIQUE` (`Supervision_ID`),
  ADD KEY `Person_ID_FK213` (`Person_ID`),
  ADD KEY `Degree_Reference_ID_FK1_idx` (`Degree_Ref`),
  ADD KEY `Guide_Type_Reference_ID_FK2_idx` (`Guide_Type_Ref`),
  ADD KEY `Status_Reference_ID_FK2_idx` (`Status_Ref`);

--
-- Indexes for table `person_travel_history`
--
ALTER TABLE `person_travel_history`
  ADD PRIMARY KEY (`Travel_ID`),
  ADD UNIQUE KEY `Abroad_ID_UNIQUE` (`Travel_ID`),
  ADD KEY `Person_ID_FK216` (`Person_ID`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_ID`),
  ADD UNIQUE KEY `user_ID_UNIQUE` (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `Credentials_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `person_academic`
--
ALTER TABLE `person_academic`
  MODIFY `Academic_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_additional_duties`
--
ALTER TABLE `person_additional_duties`
  MODIFY `Duty_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_awards`
--
ALTER TABLE `person_awards`
  MODIFY `Award_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `person_course_details`
--
ALTER TABLE `person_course_details`
  MODIFY `Course_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_events_attended`
--
ALTER TABLE `person_events_attended`
  MODIFY `Event_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_experience`
--
ALTER TABLE `person_experience`
  MODIFY `Experience_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `person_guestlecture`
--
ALTER TABLE `person_guestlecture`
  MODIFY `GuestLecture_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_membership`
--
ALTER TABLE `person_membership`
  MODIFY `Member_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_patents`
--
ALTER TABLE `person_patents`
  MODIFY `Patent_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_project_allocation`
--
ALTER TABLE `person_project_allocation`
  MODIFY `Project_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_project_proposal`
--
ALTER TABLE `person_project_proposal`
  MODIFY `Proposal_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_publication`
--
ALTER TABLE `person_publication`
  MODIFY `Publication_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `person_qualification`
--
ALTER TABLE `person_qualification`
  MODIFY `Qualification_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `person_reference_table`
--
ALTER TABLE `person_reference_table`
  MODIFY `Reference_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `person_responsibility`
--
ALTER TABLE `person_responsibility`
  MODIFY `Responsibility_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_scholardetails`
--
ALTER TABLE `person_scholardetails`
  MODIFY `Scholar_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_specialization`
--
ALTER TABLE `person_specialization`
  MODIFY `Specialization_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_supervision`
--
ALTER TABLE `person_supervision`
  MODIFY `Supervision_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_travel_history`
--
ALTER TABLE `person_travel_history`
  MODIFY `Travel_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_ID` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credentials`
--
ALTER TABLE `credentials`
  ADD CONSTRAINT `fk_Person_ID` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `Community_Reference_ID_FK` FOREIGN KEY (`Community_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Gender_Reference_ID_FK` FOREIGN KEY (`Gender_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Marital_Status_Reference_ID_FK` FOREIGN KEY (`Marital_Status_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Prefix_Reference_ID_FK` FOREIGN KEY (`Prefix_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_academic`
--
ALTER TABLE `person_academic`
  ADD CONSTRAINT `Branch_Reference_ID_FK1` FOREIGN KEY (`Branch_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Class_Type_Reference_ID_FK2` FOREIGN KEY (`Class_Type_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Course_Code_FK` FOREIGN KEY (`Course_Code`) REFERENCES `person_course_details` (`Course_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Degree_Reference_ID_FK2` FOREIGN KEY (`Degree_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK219` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_additional_duties`
--
ALTER TABLE `person_additional_duties`
  ADD CONSTRAINT `Person_ID_FK21310` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_awards`
--
ALTER TABLE `person_awards`
  ADD CONSTRAINT `Person_ID_FK218` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_events_attended`
--
ALTER TABLE `person_events_attended`
  ADD CONSTRAINT `Event_Type_Reference_ID_FK` FOREIGN KEY (`Event_Type_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Level_Reference1_ID_FK` FOREIGN KEY (`Level_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Participation_Status_Reference_ID_FK` FOREIGN KEY (`Participation_Status_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK2110` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_experience`
--
ALTER TABLE `person_experience`
  ADD CONSTRAINT `Designation_Reference_ID_FK` FOREIGN KEY (`Designation_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Emp_category_Reference_ID_FK` FOREIGN KEY (`Emp_Category_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK2` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Work_Nature_Reference_ID_FK` FOREIGN KEY (`Work_Nature_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_guestlecture`
--
ALTER TABLE `person_guestlecture`
  ADD CONSTRAINT `Level_Reference_ID_FK2` FOREIGN KEY (`Level_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK215` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_membership`
--
ALTER TABLE `person_membership`
  ADD CONSTRAINT `Member_Type_Reference_FK` FOREIGN KEY (`Member_Type`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK210` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_patents`
--
ALTER TABLE `person_patents`
  ADD CONSTRAINT `Patent_Status` FOREIGN KEY (`Patent_Status_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK217` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_project_allocation`
--
ALTER TABLE `person_project_allocation`
  ADD CONSTRAINT `Person_ID_FK2131` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_project_proposal`
--
ALTER TABLE `person_project_proposal`
  ADD CONSTRAINT `Person_ID_FK212` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Status_Reference_ID_FK` FOREIGN KEY (`Status_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Type_Reference_ID_FK` FOREIGN KEY (`Project_Type_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_publication`
--
ALTER TABLE `person_publication`
  ADD CONSTRAINT `Level_Reference_ID_FK` FOREIGN KEY (`Level_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK20` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Type_Reference_ID_FK1` FOREIGN KEY (`Publication_Type_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_qualification`
--
ALTER TABLE `person_qualification`
  ADD CONSTRAINT `Branch_Reference_ID_FK` FOREIGN KEY (`Branch_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Class_Reference_ID_FK` FOREIGN KEY (`Class_Obtained_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Degree_Reference_ID_FK` FOREIGN KEY (`Degree_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK1` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Qualify_Level_Reference_ID_FK` FOREIGN KEY (`Qualification_Level_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_responsibility`
--
ALTER TABLE `person_responsibility`
  ADD CONSTRAINT `Person_ID_FK211` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Responsibility_Type_Reference_FK` FOREIGN KEY (`Responsibility_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_scholardetails`
--
ALTER TABLE `person_scholardetails`
  ADD CONSTRAINT `Fellowship_Received_Ref_FK` FOREIGN KEY (`Fellowship_Received_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Guide_Type_Reference_ID_FK1` FOREIGN KEY (`Guide_Type_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK214` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Registration_Mode_Ref_FK` FOREIGN KEY (`Registration_Mode_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Status_Reference_ID_FK1` FOREIGN KEY (`Status_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_specialization`
--
ALTER TABLE `person_specialization`
  ADD CONSTRAINT `Person_ID_FK213` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_supervision`
--
ALTER TABLE `person_supervision`
  ADD CONSTRAINT `Degree_Reference_ID_FK1` FOREIGN KEY (`Degree_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Guide_Type_Reference_ID_FK2` FOREIGN KEY (`Guide_Type_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_ID_FK2130` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Status_Reference_ID_FK2` FOREIGN KEY (`Status_Ref`) REFERENCES `person_reference_table` (`Ref_Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `person_travel_history`
--
ALTER TABLE `person_travel_history`
  ADD CONSTRAINT `Person_ID_FK216` FOREIGN KEY (`Person_ID`) REFERENCES `person` (`Person_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
