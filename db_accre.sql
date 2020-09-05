-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2020 at 11:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1
SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_accre`
--

-- --------------------------------------------------------

--
-- Table structure for table `accreapp_accredetails`
--

CREATE TABLE `accreapp_accredetails` (
  `id` int(11) NOT NULL,
  `level` varchar(3) NOT NULL,
  `course` varchar(5) NOT NULL,
  `accre_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accreapp_accredetails`
--

INSERT INTO `accreapp_accredetails` (`id`, `level`, `course`, `accre_date`) VALUES
(1, 'III', 'BSIS', '2020-09-07');

-- --------------------------------------------------------

--
-- Table structure for table `accreapp_category`
--

CREATE TABLE `accreapp_category` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `slug` varchar(50) NOT NULL,
  `lft` int(10) UNSIGNED NOT NULL,
  `rght` int(10) UNSIGNED NOT NULL,
  `tree_id` int(10) UNSIGNED NOT NULL,
  `level` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accreapp_category`
--

INSERT INTO `accreapp_category` (`id`, `code`, `description`, `slug`, `lft`, `rght`, `tree_id`, `level`, `parent_id`, `name`) VALUES
(3, 'I', 'Vision, Mission, Goals and Objectives', 'I', 1, 88, 1, 0, NULL, 'I'),
(4, 'I-A', 'Parameter A: Statement of Vision, Mission, Goals a', 'I-A', 2, 39, 1, 1, 3, 'I-A'),
(5, 'I-A-S', 'System - Inputs and Processes', 'I-A-S', 15, 38, 1, 2, 4, 'I-A-S'),
(6, 'I-A-S.1', 'The institution has a system of determining its Vi', 'I-A-S1', 16, 17, 1, 3, 5, 'I-A-S.1'),
(7, 'I-A-S.2', 'The Vision clearly reflects what the institution h', 'I-A-S2', 18, 19, 1, 3, 5, 'I-A-S.2'),
(8, 'I-A-S.3', 'The Mission clearlt reflects the intitution\'s lega', 'I-A-S3', 20, 21, 1, 3, 5, 'I-A-S.3'),
(9, 'I-A-S.4', 'The Goals of the College/Academic Unit/ are consis', 'I-A-S4', 22, 23, 1, 3, 5, 'I-A-S.4'),
(10, 'I-A-S.5', 'The Objectives of the program have the expected ou', 'I-A-S5', 24, 37, 1, 3, 5, 'I-A-S.5'),
(11, 'I-A-S.5.1', 'technical skills in Information Technology Educati', 'I-A-S51', 25, 26, 1, 4, 10, 'I-A-S.5.1'),
(12, 'I-A-S.5.2', 'research and extension capabilities;', 'i-a-s52', 27, 28, 1, 4, 10, 'I-A-S.5.2'),
(13, 'I-A-S.5.3', 'students\' own ideas, desirable attitudes and perso', 'i-a-s53', 29, 30, 1, 4, 10, 'I-A-S.5.3'),
(14, 'I-A-S.5.4', 'moral character;', 'i-a-s54', 31, 32, 1, 4, 10, 'I-A-S.5.4'),
(15, 'I-A-S.5.5', 'critical, analytical, problem solving and other hi', 'i-a-s55', 33, 34, 1, 4, 10, 'I-A-S.5.5'),
(16, 'I-A-S.5.6', 'aesthetic and cultural values.', 'i-a-s56', 35, 36, 1, 4, 10, 'I-A-S.5.6'),
(17, 'I-A-I', 'Implementation', 'i-a-i', 3, 10, 1, 2, 4, 'I-A-I'),
(18, 'I-A-I.1', 'The Institution/College conducts review on the sta', 'i-a-i1', 4, 5, 1, 3, 17, 'I-A-I.1'),
(19, 'I-A-I.2', 'The College/Academic Unit follows a system of form', 'i-a-i2', 6, 7, 1, 3, 17, 'I-A-I.2'),
(20, 'II', 'Faculty', 'ii', 1, 364, 2, 0, NULL, 'II'),
(21, 'II-A', 'Parameter A: Academic Qualifications and Professio', 'ii-a', 2, 53, 2, 1, 20, 'II-A'),
(22, 'II-A-S', 'System - Inputs and Processes', 'ii-a-s', 25, 52, 2, 2, 21, 'II-A-S'),
(23, 'I-A-I.3', 'The College\'s/Academic Unit\'s faculty, personnel,', 'i-a-i3', 8, 9, 1, 3, 17, 'I-A-I.3'),
(24, 'I-A-O', 'Outcome', 'i-a-o', 11, 14, 1, 2, 4, 'I-A-O'),
(25, 'I-A-O.1', 'The VMGO are crafted and duly approved by the BOT/', 'i-a-o1', 12, 13, 1, 3, 24, 'I-A-O.1'),
(26, 'I-B', 'Parameter B: Dissemination and Acceptability', 'i-b', 40, 87, 1, 1, 3, 'I-B'),
(27, 'I-B-S', 'System - Inputs and Processes', 'i-b-s', 83, 86, 1, 2, 26, 'I-B-S'),
(28, 'I-B-S.1', 'The VMGO are available on bulletin boards, in cata', 'i-b-s1', 84, 85, 1, 3, 27, 'I-B-S.1'),
(29, 'I-B-I', 'Implementation', 'i-b-i', 41, 68, 1, 2, 26, 'I-B-I'),
(30, 'I-B-I.1', 'A system of dissemination and acceptability of the', 'i-b-i1', 42, 43, 1, 3, 29, 'I-B-I.1'),
(31, 'I-B-I.2', 'The administrators/faculty attend in-service semin', 'i-b-i2', 44, 51, 1, 3, 29, 'I-B-I.2'),
(32, 'I-B-I.2.1', 'Vision and Mission of the Institution;', 'i-b-i21', 45, 46, 1, 4, 31, 'I-B-I.2.1'),
(33, 'II-A-S.1', 'The required number of faculty (3 full time) posse', 'ii-a-s1', 26, 35, 2, 3, 22, 'II-A-S.1'),
(34, 'I-B-I.2.2', 'Goals of the College/Academic Unit; and', 'i-b-i22', 47, 48, 1, 4, 31, 'I-B-I.2.2'),
(35, 'I-B-I.2.3', 'Objectives of the Program.', 'i-b-i23', 49, 50, 1, 4, 31, 'I-B-I.2.3'),
(36, 'I-B-I.3', 'The formulation/review/revision of the VMGO is par', 'i-b-i3', 52, 63, 1, 3, 29, 'I-B-I.3'),
(37, 'I-B-I.3.1', 'administrators;', 'i-b-i31', 53, 54, 1, 4, 36, 'I-B-I.3.1'),
(38, 'I-B-I.3.2', 'faculty;', 'i-b-i32', 55, 56, 1, 4, 36, 'I-B-I.3.2'),
(39, 'I-B-I.3.3', 'staff;', 'i-b-i33', 57, 58, 1, 4, 36, 'I-B-I.3.3'),
(40, 'I-B-I.3.4', 'students; and', 'i-b-i34', 59, 60, 1, 4, 36, 'I-B-I.3.4'),
(41, 'I-B-I.3.5', 'other stakeholders.', 'i-b-i35', 61, 62, 1, 4, 36, 'I-B-I.3.5'),
(42, 'I-B-I.4', 'The faculty and staff perform their jobs/functions', 'i-b-i4', 64, 65, 1, 3, 29, 'I-B-I.4'),
(43, 'I-B-I.5', 'The VMGO are widely disseminated to the different ', 'i-b-i5', 66, 67, 1, 3, 29, 'I-B-I.5'),
(44, 'I-B-O', 'Outcome', 'i-b-o', 69, 82, 1, 2, 26, 'I-B-O'),
(45, 'I-B-O.1', 'There is full awareness and acceptance of the VMGO', 'i-b-o1', 70, 71, 1, 3, 44, 'I-B-O.1'),
(46, 'I-B-O.2', 'There is congruency between actual educational pra', 'i-b-o2', 72, 79, 1, 3, 44, 'I-B-O.2'),
(47, 'I-B-O.2.1', 'Vision and mission of the SUC;', 'i-b-o21', 73, 74, 1, 4, 46, 'I-B-O.2.1'),
(48, 'I-B-O.2.2', 'Goals of the College/Academic Unit; and', 'i-b-o22', 75, 76, 1, 4, 46, 'I-B-O.2.2'),
(49, 'I-B-O.2.3', 'Objectives of the Information Technology Education', 'i-b-o23', 77, 78, 1, 4, 46, 'I-B-O.2.3'),
(50, 'I-B-O.3', 'The goals and objectives are being achieved.', 'i-b-o3', 80, 81, 1, 3, 44, 'I-B-O.3'),
(51, 'IV', 'Support to Students', 'iv', 1, 438, 4, 0, NULL, 'IV'),
(52, 'IV-A', 'Parameter A: Student Services Program (SSP)', 'iv-a', 2, 107, 4, 1, 51, 'IV-A'),
(53, 'IV-A-S', 'System - Inputs and Processes', 'iv-a-s', 23, 106, 4, 2, 52, 'IV-A-S'),
(54, 'IV-A-S.1', 'The institution has Student Services Program (SSP)', 'iv-a-s1', 24, 25, 4, 3, 53, 'IV-A-S.1'),
(55, 'IV-A-S.2', 'The Student Affairs Services (SAS) program is cons', 'iv-a-s2', 32, 33, 4, 3, 53, 'IV-A-S.2'),
(56, 'IV-A-S.3', 'The objectives of the SAS are clearly defined.', 'iv-a-s3', 34, 35, 4, 3, 53, 'IV-A-S.3'),
(57, 'IV-A-S.4', 'The oobjectives of the SAS are in accordance with ', 'iv-a-s4', 36, 37, 4, 3, 53, 'IV-A-S.4'),
(58, 'IV-A-S.5', 'The SAS is composed of:', 'iv-a-s5', 38, 43, 4, 3, 53, 'IV-A-S.5'),
(59, 'IV-A-S.5.1', 'student welfare programs and services; and', 'iv-a-s51', 39, 40, 4, 4, 58, 'IV-A-S.5.1'),
(60, 'IV-A-S.5.2', 'student development programs and services.', 'iv-a-s52', 41, 42, 4, 4, 58, 'IV-A-S.5.2'),
(61, 'IV-A-S.6', 'The following basic services are available:', 'iv-a-s6', 44, 99, 4, 3, 53, 'IV-A-S.6'),
(62, 'IV-A-S.6.1', 'Student Welfare;', 'iv-a-s61', 45, 56, 4, 4, 61, 'IV-A-S.6.1'),
(63, 'IV-A-S.6.1.1', 'Informationa nd Orientation Services;', 'iv-a-s611', 46, 47, 4, 5, 62, 'IV-A-S.6.1.1'),
(64, 'IV-A-S.6.1.2', 'Guidance and Counseling Services;', 'iv-a-s612', 48, 49, 4, 5, 62, 'IV-A-S.6.1.2'),
(65, 'IV-A-S.6.1.3', 'Career and Job Placement Services;', 'iv-a-s613', 50, 51, 4, 5, 62, 'IV-A-S.6.1.3'),
(66, 'IV-A-S.6.1.4', 'Econimic Enterprise Development; and', 'iv-a-s614', 52, 53, 4, 5, 62, 'IV-A-S.6.1.4'),
(67, 'IV-A-S.6.1.5', 'Student Handbook Development.', 'iv-a-s615', 54, 55, 4, 5, 62, 'IV-A-S.6.1.5'),
(68, 'IV-A-S.6.2', 'Student Development;', 'iv-a-s62', 57, 70, 4, 4, 61, 'IV-A-S.6.2'),
(69, 'IV-A-S.6.2.1', 'Student Activities;', 'iv-a-s621', 58, 59, 4, 5, 68, 'IV-A-S.6.2.1'),
(70, 'IV-A-S.6.2.2', 'Student Organizations and Activities;', 'iv-a-s622', 60, 61, 4, 5, 68, 'IV-A-S.6.2.2'),
(71, 'IV-A-S.6.2.3', 'Leadership Training;', 'iv-a-s623', 62, 63, 4, 5, 68, 'IV-A-S.6.2.3'),
(72, 'IV-A-S.6.2.4', 'Student Council/Government;', 'iv-a-s624', 64, 65, 4, 5, 68, 'IV-A-S.6.2.4'),
(73, 'IV-A-S.6.2.5', 'Student Discipline; and', 'iv-a-s625', 66, 67, 4, 5, 68, 'IV-A-S.6.2.5'),
(74, 'IV-A-S.6.2.6', 'Student Publication/Year Book.', 'iv-a-s626', 68, 69, 4, 5, 68, 'IV-A-S.6.2.6'),
(75, 'IV-A-S.6.3', 'Institutional Student Programs and Services;', 'iv-a-s63', 71, 98, 4, 4, 61, 'IV-A-S.6.3'),
(76, 'IV-A-S.6.3.1', 'Admission Services;', 'iv-a-s631', 72, 73, 4, 5, 75, 'IV-A-S.6.3.1'),
(77, 'IV-A-S.6.3.2', 'Scholarships and Financial Assistance (SFA);', 'iv-a-s632', 82, 83, 4, 5, 75, 'IV-A-S.6.3.2'),
(78, 'IV-A-S.6.3.3', 'Food Services;', 'iv-a-s633', 84, 85, 4, 5, 75, 'IV-A-S.6.3.3'),
(79, 'IV-A-S.6.3.4', 'Health and Wellness Services;', 'iv-a-s634', 86, 87, 4, 5, 75, 'IV-A-S.6.3.4'),
(80, 'IV-A-S.6.3.5', 'Safety and Security Services;', 'iv-a-s635', 88, 89, 4, 5, 75, 'IV-A-S.6.3.5'),
(81, 'IV-A-S.6.3.6', 'Student Housing and Residential Services;', 'iv-a-s636', 90, 91, 4, 5, 75, 'IV-A-S.6.3.6'),
(82, 'IV-A-S.6.3.7', 'Multi-faith and Inter-faith Services;', 'iv-a-s637', 92, 93, 4, 5, 75, 'IV-A-S.6.3.7'),
(83, 'IV-A-S.6.3.8', 'Foreign/International Students Services (whenever ', 'iv-a-s638', 94, 95, 4, 5, 75, 'IV-A-S.6.3.8'),
(84, 'IV-A-S.6.3.9', 'Services for Students with Special Needs;', 'iv-a-s639', 96, 97, 4, 5, 75, 'IV-A-S.6.3.9'),
(85, 'IV-A-S.6.3.10', 'Culture and Arts Programs;', 'iv-a-s6310', 74, 75, 4, 5, 75, 'IV-A-S.6.3.10'),
(86, 'IV-A-S.6.3.11', 'Sports and Development Programs;', 'iv-a-s6311', 76, 77, 4, 5, 75, 'IV-A-S.6.3.11'),
(87, 'IV-A-S.6.3.12', 'Social and Community Involvement Programs; and', 'iv-a-s6312', 78, 79, 4, 5, 75, 'IV-A-S.6.3.12'),
(88, 'IV-A-S.6.3.13', 'others (please specify) ________', 'iv-a-s6313', 80, 81, 4, 5, 75, 'IV-A-S.6.3.13'),
(89, 'IV-A-S.7', 'There is a SAS Unit that manages student affairs d', 'iv-a-s7', 100, 101, 4, 3, 53, 'IV-A-S.7'),
(90, 'IV-A-S.8', 'The SAS Unit has an organizational structure indic', 'iv-a-s8', 102, 103, 4, 3, 53, 'IV-A-S.8'),
(91, 'IV-A-S.9', 'The SAS Unit is headed by a qualified official.', 'iv-a-s9', 104, 105, 4, 3, 53, 'IV-A-S.9'),
(92, 'IV-A-S.10', 'The SAS unit is staffed with qualified personnel.', 'iv-a-s10', 26, 27, 4, 3, 53, 'IV-A-S.10'),
(93, 'IV-A-S.11', 'The various student services are provided with ade', 'iv-a-s11', 28, 29, 4, 3, 53, 'IV-A-S.11'),
(94, 'IV-A-S.12', 'There is sufficient budget allocation for the Stud', 'iv-a-s12', 30, 31, 4, 3, 53, 'IV-A-S.12'),
(95, 'IV-A-I', 'Implementation', 'iv-a-i', 3, 18, 4, 2, 52, 'IV-A-I'),
(96, 'IV-A-I.1', 'The objectives of the SAS are disseminated to and ', 'iv-a-i1', 4, 5, 4, 3, 95, 'IV-A-I.1'),
(97, 'IV-A-I.2', 'The SAS plans, implements, monitors and coordinate', 'iv-a-i2', 6, 7, 4, 3, 95, 'IV-A-I.2'),
(98, 'IV-A-I.3', 'Prompt, courteous and efficient services in the ha', 'iv-a-i3', 8, 9, 4, 3, 95, 'IV-A-I.3'),
(99, 'IV-A-I.4', 'The SAS staff rceive salaries on time.', 'iv-a-i4', 10, 11, 4, 3, 95, 'IV-A-I.4'),
(100, 'IV-A-I.5', 'The SAS is represented in the policy and decision-', 'iv-a-i5', 12, 13, 4, 3, 95, 'IV-A-I.5'),
(101, 'IV-A-I.6', 'The projects and activities of the SAS Unit are re', 'iv-a-i6', 14, 15, 4, 3, 95, 'IV-A-I.6'),
(102, 'IV-A-I.7', 'There is a continuous and systematic evaluation of', 'iv-a-i7', 16, 17, 4, 3, 95, 'IV-A-I.7'),
(103, 'IV-A-O', 'Outcome', 'iv-a-o', 19, 22, 4, 2, 52, 'IV-A-O'),
(104, 'IV-A-O.1', 'The students are satisfied with the Student Servic', 'iv-a-o1', 20, 21, 4, 3, 103, 'IV-A-O.1'),
(105, 'IV-B', 'Parameter B: Student Welfare', 'iv-b', 108, 223, 4, 1, 51, 'IV-B'),
(106, 'IV-B-S', 'System - Inputs and Processes', 'iv-b-s', 167, 222, 4, 2, 105, 'IV-B-S'),
(107, 'IV-B-S.1', 'The institution has a Student handbook containing ', 'iv-b-s1', 168, 169, 4, 3, 106, 'IV-B-S.1'),
(108, 'IV-B-S.2', 'A regular and comprehensive Orientation Program is', 'iv-b-s2', 182, 183, 4, 3, 106, 'IV-B-S.2'),
(109, 'IV-B-S.3', 'The information materials on educational, career, ', 'iv-b-s3', 184, 199, 4, 3, 106, 'IV-B-S.3'),
(110, 'IV-B-S.3.1', 'R.A. 9262 or Anti Violence against women and Child', 'iv-b-s31', 185, 186, 4, 4, 109, 'IV-B-S.3.1'),
(111, 'IV-B-S.3.2', 'Anti-bullyinh Act;', 'iv-b-s32', 187, 188, 4, 4, 109, 'IV-B-S.3.2'),
(112, 'IV-B-S.3.3', 'Guidelines on drug abuse and prevention and contro', 'iv-b-s33', 189, 190, 4, 4, 109, 'IV-B-S.3.3'),
(113, 'IV-B-S.3.4', 'R.A. 7877 or the Anti-Sexual Harassment Act of 199', 'iv-b-s34', 191, 192, 4, 4, 109, 'IV-B-S.3.4'),
(114, 'IV-B-S.3.5', 'HIV AIDS awareness;', 'iv-b-s35', 193, 194, 4, 4, 109, 'IV-B-S.3.5'),
(115, 'IV-B-S.3.6', 'Self-care and healthy lifestyles; and', 'iv-b-s36', 195, 196, 4, 4, 109, 'IV-B-S.3.6'),
(116, 'IV-B-S.3.7', 'R.A. 9442, particularly on the provision on public', 'iv-b-s37', 197, 198, 4, 4, 109, 'IV-B-S.3.7'),
(117, 'IV-B-S.4', 'The Guidance and Counseling Program Provides the f', 'iv-b-s4', 200, 211, 4, 3, 106, 'IV-B-S.4'),
(118, 'IV-B-S.4.1', 'information and inventory;', 'iv-b-s41', 201, 202, 4, 4, 117, 'IV-B-S.4.1'),
(119, 'IV-B-S.4.2', 'counseling;', 'iv-b-s42', 203, 204, 4, 4, 117, 'IV-B-S.4.2'),
(120, 'IV-B-S.4.3', 'appraisal and testing;', 'iv-b-s43', 205, 206, 4, 4, 117, 'IV-B-S.4.3'),
(121, 'IV-B-S.4.4', 'placement and follow-up; and', 'iv-b-s44', 207, 208, 4, 4, 117, 'IV-B-S.4.4'),
(122, 'IV-B-S.4.5', 'referral.', 'iv-b-s45', 209, 210, 4, 4, 117, 'IV-B-S.4.5'),
(123, 'IV-B-S.5', 'Gender-sensitive individual and group counseling i', 'iv-b-s5', 212, 213, 4, 3, 106, 'IV-B-S.5'),
(124, 'IV-B-S.6', 'Counseling Services consider cultural differences.', 'iv-b-s6', 214, 215, 4, 3, 106, 'IV-B-S.6'),
(125, 'IV-B-S.7', 'The Guidance Program is headed by a licensed Guida', 'iv-b-s7', 216, 217, 4, 3, 106, 'IV-B-S.7'),
(126, 'IV-B-S.8', 'All the Guidance Counselors are licensed.', 'iv-b-s8', 218, 219, 4, 3, 106, 'IV-B-S.8'),
(127, 'IV-B-S.9', 'The Guidance Program is supported by qualified sta', 'iv-b-s9', 220, 221, 4, 3, 106, 'IV-B-S.9'),
(128, 'IV-B-S.10', 'Every student has an updated profile at the guidan', 'iv-b-s10', 170, 171, 4, 3, 106, 'IV-B-S.10'),
(129, 'IV-B-S.11', 'A counseling room is provided for students includi', 'iv-b-s11', 172, 173, 4, 3, 106, 'IV-B-S.11'),
(130, 'IV-B-S.12', 'There is a well-planned assessment program for stu', 'iv-b-s12', 174, 175, 4, 3, 106, 'IV-B-S.12'),
(131, 'IV-B-S.13', 'Career seminars and job placement services are ava', 'iv-b-s13', 176, 177, 4, 3, 106, 'IV-B-S.13'),
(132, 'IV-B-S.14', 'There is a mechanism to establish partnership and ', 'iv-b-s14', 178, 179, 4, 3, 106, 'IV-B-S.14'),
(133, 'IV-B-S.15', 'There is mechanism for storing and archiving stude', 'iv-b-s15', 180, 181, 4, 3, 106, 'IV-B-S.15'),
(134, 'IV-B-I', 'Implementation', 'iv-b-i', 109, 162, 4, 2, 105, 'IV-B-I'),
(135, 'IV-B-I.1', 'The ratio of a Guidance Counselor to student popul', 'iv-b-i1', 110, 111, 4, 3, 134, 'IV-B-I.1'),
(136, 'IV-B-I.2', 'Counseling and other student records are maintaine', 'iv-b-i2', 146, 147, 4, 3, 134, 'IV-B-I.2'),
(137, 'IV-B-I.3', 'Appropriate intervention programs and services are', 'iv-b-i3', 148, 149, 4, 3, 134, 'IV-B-I.3'),
(138, 'IV-B-I.4', 'The Guidance Office maintains an updated inventory', 'iv-b-i4', 150, 151, 4, 3, 134, 'IV-B-I.4'),
(139, 'IV-B-I.5', 'The psychological tests are administered, scored a', 'iv-b-i5', 152, 153, 4, 3, 134, 'IV-B-I.5'),
(140, 'IV-B-I.6', 'The test results are disseminated to concerned par', 'iv-b-i6', 154, 155, 4, 3, 134, 'IV-B-I.6'),
(141, 'IV-B-I.7', 'Test results are utilized in designing activities ', 'iv-b-i7', 156, 157, 4, 3, 134, 'IV-B-I.7'),
(142, 'IV-B-I.8', 'A scheme for appropriate follow-up and referral is', 'iv-b-i8', 158, 159, 4, 3, 134, 'IV-B-I.8'),
(143, 'IV-B-I.9', 'The Guidance Officer prepares valid appraisal data', 'iv-b-i9', 160, 161, 4, 3, 134, 'IV-B-I.9'),
(144, 'IV-B-I.10', 'Student placement is regularly monitored and follo', 'iv-b-i10', 112, 113, 4, 3, 134, 'IV-B-I.10'),
(145, 'IV-B-I.11', 'The institution maintains active networking with t', 'iv-b-i11', 114, 115, 4, 3, 134, 'IV-B-I.11'),
(146, 'IV-B-I.12', 'Career counseling is provided to enable students t', 'iv-b-i12', 116, 117, 4, 3, 134, 'IV-B-I.12'),
(147, 'IV-B-I.13', 'Information materials on career and job opportunit', 'iv-b-i13', 118, 119, 4, 3, 134, 'IV-B-I.13'),
(148, 'IV-B-I.14', 'The SAS mainatains liaison with its alumni to foll', 'iv-b-i14', 120, 127, 4, 3, 134, 'IV-B-I.14'),
(149, 'IV-B-I.14.1', 'awards received;', 'iv-b-i141', 121, 122, 4, 4, 148, 'IV-B-I.14.1'),
(150, 'IV-B-I.14.2', 'key positions in private and/or government agencie', 'iv-b-i142', 123, 124, 4, 4, 148, 'IV-B-I.14.2'),
(151, 'IV-B-I.14.3', 'status of the enterprise, is applicable.', 'iv-b-i143', 125, 126, 4, 4, 148, 'IV-B-I.14.3'),
(152, 'IV-B-I.15', 'Skills development programs are conducted.', 'iv-b-i15', 128, 129, 4, 3, 134, 'IV-B-I.15'),
(153, 'IV-B-I.16', 'The students are given assistance in career and jo', 'iv-b-i16', 130, 131, 4, 3, 134, 'IV-B-I.16'),
(154, 'IV-B-I.17', 'The institution encourages student economic ventur', 'iv-b-i17', 132, 141, 4, 3, 134, 'IV-B-I.17'),
(155, 'IV-B-I.17.1', 'student laboratory cooperatives;', 'iv-b-i171', 133, 134, 4, 4, 154, 'IV-B-I.17.1'),
(156, 'IV-B-I.17.2', 'entrepreneurial activities/projects;', 'iv-b-i172', 135, 136, 4, 4, 154, 'IV-B-I.17.2'),
(157, 'IV-B-I.17.3', 'savings; and', 'iv-b-i173', 137, 138, 4, 4, 154, 'IV-B-I.17.3'),
(158, 'IV-B-I.17.4', 'others (please specify) _____', 'iv-b-i174', 139, 140, 4, 4, 154, 'IV-B-I.17.4'),
(159, 'IV-B-I.18', 'Updated information on student welfare and develop', 'iv-b-i18', 142, 143, 4, 3, 134, 'IV-B-I.18'),
(160, 'IV-B-I.19', 'The student body is involved in the development an', 'iv-b-i19', 144, 145, 4, 3, 134, 'IV-B-I.19'),
(161, 'IV-B-O', 'Outcome', 'iv-b-o', 163, 166, 4, 2, 105, 'IV-B-O'),
(162, 'IV-B-O.1', 'Quality student welfare services are available.', 'iv-b-o1', 164, 165, 4, 3, 161, 'IV-B-O.1'),
(163, 'IV-C', 'Parameter C: Student Development', 'iv-c', 224, 269, 4, 1, 51, 'IV-C'),
(164, 'IV-C-S', 'System - Inputs and Processes', 'iv-c-s', 257, 268, 4, 2, 163, 'IV-C-S'),
(165, 'IV-C-S.1', 'The institution has a system of accreditation, mon', 'iv-c-s1', 258, 259, 4, 3, 164, 'IV-C-S.1'),
(166, 'IV-C-S.2', 'The institution provides adequate office space and', 'iv-c-s2', 260, 261, 4, 3, 164, 'IV-C-S.2'),
(167, 'IV-C-S.3', 'There is coordination between the school administr', 'iv-c-s3', 262, 263, 4, 3, 164, 'IV-C-S.3'),
(168, 'IV-C-S.4', 'A mechanism to address student grievance is in pla', 'iv-c-s4', 264, 265, 4, 3, 164, 'IV-C-S.4'),
(169, 'IV-C-S.5', 'Programs and opportunities to develop and enhance ', 'iv-c-s5', 266, 267, 4, 3, 164, 'IV-C-S.5'),
(170, 'IV-C-I', 'Implementation', 'iv-c-i', 225, 252, 4, 2, 163, 'IV-C-I'),
(171, 'IV-C-I.1', 'Requirements and procesures for recognition/accred', 'iv-c-i1', 226, 227, 4, 3, 170, 'IV-C-I.1'),
(172, 'IV-C-I.2', 'The Consitution and by-laws of sudent organization', 'iv-c-i2', 230, 231, 4, 3, 170, 'IV-C-I.2'),
(173, 'IV-C-I.3', 'The institution conducts leadership training.', 'iv-c-i3', 232, 233, 4, 3, 170, 'IV-C-I.3'),
(174, 'IV-C-I.4', 'The institution recognizes the right of the studen', 'iv-c-i4', 234, 241, 4, 3, 170, 'IV-C-I.4'),
(175, 'IV-C-I.4.1', 'govern themselves as a student body;', 'iv-c-i41', 235, 236, 4, 4, 174, 'IV-C-I.4.1'),
(176, 'IV-C-I.4.2', 'be transparent and accountable to their constituen', 'iv-c-i42', 237, 238, 4, 4, 174, 'IV-C-I.4.2'),
(177, 'IV-C-I.4.3', 'be represented in various for a where the students', 'iv-c-i43', 239, 240, 4, 4, 174, 'IV-C-I.4.3'),
(178, 'IV-C-I.5', 'The institution ensures transparency in the develo', 'iv-c-i5', 242, 243, 4, 3, 170, 'IV-C-I.5'),
(179, 'IV-C-I.6', 'The institution implements gender and disability s', 'iv-c-i6', 244, 245, 4, 3, 170, 'IV-C-I.6'),
(180, 'IV-C-I.7', 'Sanctions are enforced for misconduct such as but ', 'iv-c-i7', 246, 247, 4, 3, 170, 'IV-C-I.7'),
(181, 'IV-C-I.8', 'Grievance Committee is established to ensure due p', 'iv-c-i8', 248, 249, 4, 3, 170, 'IV-C-I.8'),
(182, 'IV-C-I.9', 'The institution supports the establishment and imp', 'iv-c-i9', 250, 251, 4, 3, 170, 'IV-C-I.9'),
(183, 'IV-C-I.10', 'The production/publication of a yearbook is encour', 'iv-c-i10', 228, 229, 4, 3, 170, 'IV-C-I.10'),
(184, 'IV-C-O', 'Outcome', 'iv-c-o', 253, 256, 4, 2, 163, 'IV-C-O'),
(185, 'IV-C-O.1', 'Quality student development services are assured.', 'iv-c-o1', 254, 255, 4, 3, 184, 'IV-C-O.1'),
(186, 'IV-D', 'Parameter D: Institutional Student Programs and Se', 'iv-d', 270, 409, 4, 1, 51, 'IV-D'),
(187, 'IV-D-S', 'System - Inputs and Processes', 'iv-d-s', 345, 408, 4, 2, 186, 'IV-D-S'),
(188, 'IV-D-S.1', 'There is a system recruitment, selection, admissio', 'iv-d-s1', 346, 347, 4, 3, 187, 'IV-D-S.1'),
(189, 'IV-D-S.2', 'Admission requirements and procedures of persons w', 'iv-d-s2', 392, 393, 4, 3, 187, 'IV-D-S.2'),
(190, 'IV-D-S.3', 'Scholarships and financial assistance in various f', 'iv-d-s3', 394, 395, 4, 3, 187, 'IV-D-S.3'),
(191, 'IV-D-S.4', 'Policies and guidelines are institutionalized for ', 'iv-d-s4', 396, 397, 4, 3, 187, 'IV-D-S.4'),
(192, 'IV-D-S.5', 'There is a policy on wellness and healthy lifestyl', 'iv-d-s5', 398, 399, 4, 3, 187, 'IV-D-S.5'),
(193, 'IV-D-S.6', 'Buildings and facilities which conform with govern', 'iv-d-s6', 400, 401, 4, 3, 187, 'IV-D-S.6'),
(194, 'IV-D-S.7', 'There is a disaster risk reduction and  management', 'iv-d-s7', 402, 403, 4, 3, 187, 'IV-D-S.7'),
(195, 'IV-D-S.8', 'Policies on the use of student facilities are in p', 'iv-d-s8', 404, 405, 4, 3, 187, 'IV-D-S.8'),
(196, 'IV-D-S.9', 'An integrated service program that caters to the v', 'iv-d-s9', 406, 407, 4, 3, 187, 'IV-D-S.9'),
(197, 'IV-D-S.10', 'A liaison officer is available to assist foreign s', 'iv-d-s10', 348, 349, 4, 3, 187, 'IV-D-S.10'),
(198, 'IV-D-S.11', 'There are programs for life skills training (e.g. ', 'iv-d-s11', 350, 351, 4, 3, 187, 'IV-D-S.11'),
(199, 'IV-D-S.12', 'The institution provides opportunities for promoti', 'iv-d-s12', 352, 353, 4, 3, 187, 'IV-D-S.12'),
(200, 'IV-D-S.13', 'The institution has well equipped offices for:', 'iv-d-s13', 354, 363, 4, 3, 187, 'IV-D-S.13'),
(201, 'IV-D-S.13.1', 'Culture and Arts;', 'iv-d-s131', 355, 356, 4, 4, 200, 'IV-D-S.13.1'),
(202, 'IV-D-S.13.2', 'Sports Development;', 'iv-d-s132', 357, 358, 4, 4, 200, 'IV-D-S.13.2'),
(203, 'IV-D-S.13.3', 'Student Publications; and', 'iv-d-s133', 359, 360, 4, 4, 200, 'IV-D-S.13.3'),
(204, 'IV-D-S.13.4', 'Medical-Dental Clinic.', 'iv-d-s134', 361, 362, 4, 4, 200, 'IV-D-S.13.4'),
(205, 'IV-D-S.14', 'There is a well-furnished medical-dental clinic.', 'iv-d-s14', 364, 365, 4, 3, 187, 'IV-D-S.14'),
(206, 'IV-D-S.15', 'There is a medical and dental program designed for', 'iv-d-s', 366, 375, 4, 3, 187, 'IV-D-S.15'),
(207, 'IV-D-S.15.1', 'diagnostic purposes;', 'iv-d-s151', 367, 368, 4, 4, 206, 'IV-D-S.15.1'),
(208, 'IV-D-S.15.2', 'first aid;', 'iv-d-s152', 369, 370, 4, 4, 206, 'IV-D-S.15.2'),
(209, 'IV-D-S.15.3', 'prevention and prophylaxis; and', 'iv-d-s153', 371, 372, 4, 4, 206, 'IV-D-S.15.3'),
(210, 'IV-D-S.15.4', 'physical-dental exam.', 'iv-d-s154', 373, 374, 4, 4, 206, 'IV-D-S.15.4'),
(211, 'IV-D-S.16', 'An updated information on student health condition', 'iv-d-s16', 376, 377, 4, 3, 187, 'IV-D-S.16'),
(212, 'IV-D-S.17', 'There are mechanisms to promote national, sectoral', 'iv-d-s17', 378, 379, 4, 3, 187, 'IV-D-S.17'),
(213, 'IV-D-S.18', 'There arefinancial assistance programs designed fo', 'iv-d-s18', 380, 391, 4, 3, 187, 'IV-D-S.18'),
(214, 'IV-D-S.18.1', 'educational loans;', 'iv-d-s181', 381, 382, 4, 4, 213, 'IV-D-S.18.1'),
(215, 'IV-D-S.18.2', 'student assistantship;', 'iv-d-s182', 383, 384, 4, 4, 213, 'IV-D-S.18.2'),
(216, 'IV-D-S.18.3', 'attendance to seminars, training (sports, leadersh', 'iv-d-s183', 385, 386, 4, 4, 213, 'IV-D-S.18.3'),
(217, 'IV-D-S.18.4', 'grants-in-aid; and', 'iv-d-s184', 387, 388, 4, 4, 213, 'IV-D-S.18.4'),
(218, 'IV-D-S.18.5', 'others (please specify) _________', 'iv-d-s185', 389, 390, 4, 4, 213, 'IV-D-S.18.5'),
(219, 'IV-D-I', 'Implementation', 'iv-d-i', 271, 340, 4, 2, 186, 'IV-D-I'),
(220, 'IV-D-I.1', 'The faculty and students are properly informed of ', 'iv-d-i1', 272, 273, 4, 3, 219, 'IV-D-I.1'),
(221, 'IV-D-I.2', 'The policies and procedures on selection, admissio', 'iv-d-i2', 294, 295, 4, 3, 219, 'IV-D-I.2'),
(222, 'IV-D-I.3', 'The following student admission records are filed ', 'iv-d-i3', 314, 327, 4, 3, 219, 'IV-D-I.3'),
(223, 'IV-D-I.3.1', 'enrollment trends;', 'iv-d-i31', 315, 316, 4, 4, 222, 'IV-D-I.3.1'),
(224, 'IV-D-I.3.2', 'drop-out rate;', 'iv-d-i32', 317, 318, 4, 4, 222, 'IV-D-I.3.2'),
(225, 'IV-D-I.3.3', 'licensure examination results and passing percenta', 'iv-d-i33', 319, 320, 4, 4, 222, 'IV-D-I.3.3'),
(226, 'IV-D-I.3.4', 'employability of graduates;', 'iv-d-i34', 321, 322, 4, 4, 222, 'IV-D-I.3.4'),
(227, 'IV-D-I.3.5', 'student transferees; and', 'iv-d-i35', 323, 324, 4, 4, 222, 'IV-D-I.3.5'),
(228, 'IV-D-I.3.6', 'student classification by specialization.', 'iv-d-i36', 325, 326, 4, 4, 222, 'IV-D-I.3.6'),
(229, 'IV-D-I.4', 'Retention policies are approved by the Academic Co', 'iv-d-i4', 328, 329, 4, 3, 219, 'IV-D-I.4'),
(230, 'IV-D-I.5', 'The list of tuition and other school fees is poste', 'iv-d-i5', 330, 331, 4, 3, 219, 'IV-D-I.5'),
(231, 'IV-D-I.6', 'The institution provides access to scholarship and', 'iv-d-i6', 332, 333, 4, 3, 219, 'IV-D-I.6'),
(232, 'IV-D-I.7', 'Guidelines on scholarship and financial assistance', 'iv-d-i7', 334, 335, 4, 3, 219, 'IV-D-I.7'),
(233, 'IV-D-I.8', 'Criteria for safety, sanitation and food choices i', 'iv-d-i8', 336, 337, 4, 3, 219, 'IV-D-I.8'),
(234, 'IV-D-I.9', 'The institution cpordinates with the local governm', 'iv-d-i9', 338, 339, 4, 3, 219, 'IV-D-I.9'),
(235, 'IV-D-I.10', 'The institution periodically inspects food outlets', 'iv-d-i10', 274, 275, 4, 3, 219, 'IV-D-I.10'),
(236, 'IV-D-I.11', 'The primary health care services are administered ', 'iv-d-i11', 276, 277, 4, 3, 219, 'IV-D-I.11'),
(237, 'IV-D-I.12', 'Facilities for keeping health care and updated hea', 'iv-d-i12', 278, 279, 4, 3, 219, 'IV-D-I.12'),
(238, 'IV-D-I.13', 'Policies and procedures in the selection of studen', 'iv-d-i13', 280, 281, 4, 3, 219, 'IV-D-I.13'),
(239, 'IV-D-I.14', 'Health and related laws rules and regulations are ', 'iv-d-i14', 282, 283, 4, 3, 219, 'IV-D-I.14'),
(240, 'IV-D-I.15', 'Licensed and competent security personnel ensure t', 'iv-d-i15', 284, 285, 4, 3, 219, 'IV-D-I.15'),
(241, 'IV-D-I.16', 'Earthquake and fire drills involving students, fac', 'iv-d-i16', 286, 287, 4, 3, 219, 'IV-D-I.16'),
(242, 'IV-D-I.17', 'The institution establishes programs for the stude', 'iv-d-i17', 288, 289, 4, 3, 219, 'IV-D-I.17'),
(243, 'IV-D-I.18', 'The institution provides asssitance to students in', 'iv-d-i18', 290, 291, 4, 3, 219, 'IV-D-I.18'),
(244, 'IV-D-I.19', 'The institution ensures that the students right to', 'iv-d-i19', 292, 293, 4, 3, 219, 'IV-D-I.19'),
(245, 'IV-D-I.20', 'Submission of required reports on foreign students', 'iv-d-i20', 296, 297, 4, 3, 219, 'IV-D-I.20'),
(246, 'IV-D-I.21', 'The Code of Conduct for foreign students in the co', 'iv-d-i21', 298, 299, 4, 3, 219, 'IV-D-I.21'),
(247, 'IV-D-I.22', 'Theinstitution accomodates students with special n', 'iv-d-i22', 300, 301, 4, 3, 219, 'IV-D-I.22'),
(248, 'IV-D-I.23', 'There is a regular submission of the list of suden', 'iv-d-i23', 302, 303, 4, 3, 219, 'IV-D-I.23'),
(249, 'IV-D-I.24', 'Sports development programs are regularly conducte', 'iv-d-i24', 304, 305, 4, 3, 219, 'IV-D-I.24'),
(250, 'IV-D-I.25', 'The institution ensures opportunities for students', 'iv-d-i25', 306, 307, 4, 3, 219, 'IV-D-I.25'),
(251, 'IV-D-I.26', 'The students are covered with Life and Accident in', 'iv-d-i26', 308, 309, 4, 3, 219, 'IV-D-I.26'),
(252, 'IV-D-I.27', 'The institution rewards SAS staff for exceptional ', 'iv-d-i27', 310, 311, 4, 3, 219, 'IV-D-I.27'),
(253, 'IV-D-I.28', 'The institution informs the students and other sta', 'iv-d-i28', 312, 313, 4, 3, 219, 'IV-D-I.28'),
(254, 'IV-D-O', 'Outcome', 'iv-d-o', 341, 344, 4, 2, 186, 'IV-D-O'),
(255, 'IV-D-O.1', 'The institutional programs and services develop st', 'iv-d-o1', 342, 343, 4, 3, 254, 'IV-D-O.1'),
(256, 'IV-E', 'Parameter E: Research, Monitoring and Evaluation', 'iv-e', 410, 437, 4, 1, 51, 'IV-E'),
(257, 'IV-E-S', 'System - Inputs and Processes', 'iv-e-s', 427, 436, 4, 2, 256, 'IV-E-S'),
(258, 'IV-E-S.1', 'The institution has a research program on student ', 'iv-e-s1', 428, 429, 4, 3, 257, 'IV-E-S.1'),
(259, 'IV-E-S.2', 'There is a mechanism for monitoring and evaluation', 'iv-e-s2', 430, 431, 4, 3, 257, 'IV-E-S.2'),
(260, 'IV-E-S.3', 'Monitoring and evaluation instruments are availabl', 'iv-e-s3', 432, 433, 4, 3, 257, 'IV-E-S.3'),
(261, 'IV-E-S.4', 'There is adequate funding for the conduct of SAS r', 'iv-e-s4', 434, 435, 4, 3, 257, 'IV-E-S.4'),
(262, 'IV-E-I', 'Implementation', 'iv-e-i', 411, 422, 4, 2, 256, 'IV-E-I'),
(263, 'IV-E-I.1', 'Researches on student affairs and services are con', 'iv-e-i1', 412, 413, 4, 3, 262, 'IV-E-I.1'),
(264, 'IV-E-I.2', 'Research results and outputs are disseminated and ', 'iv-e-i2', 414, 415, 4, 3, 262, 'IV-E-I.2'),
(265, 'IV-E-I.3', 'Regular monitoring and evaluation on the implement', 'iv-e-i3', 416, 417, 4, 3, 262, 'IV-E-I.3'),
(266, 'IV-E-I.4', 'Monitoring and evaluation instruments are develope', 'iv-e-i4', 418, 419, 4, 3, 262, 'IV-E-I.4'),
(267, 'IV-E-I.5', 'Reports are filed and submitted regularly to CHEDR', 'iv-e-i5', 420, 421, 4, 3, 262, 'IV-E-I.5'),
(268, 'IV-E-O', 'Outcome', 'iv-e-o', 423, 426, 4, 2, 256, 'IV-E-O'),
(269, 'IV-E-O.1', 'Researcg outputs are presented and published.', 'iv-e-o1', 424, 425, 4, 3, 268, 'IV-E-O.1'),
(270, 'V', 'Research', 'v', 1, 164, 6, 0, NULL, 'V'),
(271, 'V-A', 'Parameter A: Priorities and Relevance', 'v-a', 2, 37, 6, 1, 270, 'V-A'),
(272, 'V-A-S', 'System - Inputs and Processes', 'v-a-s', 31, 36, 6, 2, 271, 'V-A-S'),
(273, 'V-A-S.1', 'The institution\'s research agenda is in consonance', 'v-a-s1', 32, 33, 6, 3, 272, 'V-A-S.1'),
(274, 'V-A-S.2', 'The institution has an approved Research Manual.', 'v-a-s2', 34, 35, 6, 3, 272, 'V-A-S.2'),
(275, 'V-A-I', 'Implementation', 'v-a-i', 3, 24, 6, 2, 271, 'V-A-I'),
(276, 'V-A-I.1', 'The approved Research Agenda is implemented.', 'v-a-i1', 4, 5, 6, 3, 275, 'V-A-I.1'),
(277, 'V-A-I.2', 'The following stakeholders participate in the form', 'v-a-i2', 6, 17, 6, 3, 275, 'V-A-I.2'),
(278, 'V-A-I.2.1', 'administrators;', 'v-a-i21', 7, 8, 6, 4, 277, 'V-A-I.2.1'),
(279, 'II-A-S.1.1', 'Master in Information Technology for 30% of the faculty handling ITE courses; and', 'ii-a-s11', 27, 28, 2, 4, 33, 'II-A-S.1.1'),
(280, 'II-A-S.1.2', 'BSIT or allied degrees and any of the following:', 'ii-a-s12', 29, 34, 2, 4, 33, 'II-A-S.1.2'),
(281, 'II-A-S.1.2.1', 'IT industry experience of 20% of the faculty for 3 years in technical administration, system design, appplications programming or equivalent wihtin the last 5 years; and', 'ii-a-s121', 30, 31, 2, 5, 280, 'II-A-S.1.2.1'),
(282, 'II-A-S.1.2.2', 'proficiency in teaching ITE courses as proven by a certification issued by a certifying body as the Philippine National IT Standards (PhilNITS), Brainbench, Oracle or Microsoft, etc. provided that the teaching load assigned to him/her is alighned with the area of certification.', 'ii-a-s122', 32, 33, 2, 5, 280, 'II-A-S.1.2.2'),
(283, 'II-A-S.2', 'Other qualifications such as the following are considered:', 'ii-a-s2', 36, 47, 2, 3, 22, 'II-A-S.2'),
(284, 'II-A-S.2.1', 'related professional experience;', 'ii-a-s21', 37, 38, 2, 4, 283, 'II-A-S.2.1'),
(285, 'II-A-S.2.2', 'computer literacy;', 'ii-a-s22', 39, 40, 2, 4, 283, 'II-A-S.2.2'),
(286, 'II-A-S.2.3', 'technical/pedagogical skills and competence;', 'ii-a-s23', 41, 42, 2, 4, 283, 'II-A-S.2.3'),
(287, 'II-A-S.2.4', 'special abilities; and', 'ii-a-s24', 43, 44, 2, 4, 283, 'II-A-S.2.4'),
(288, 'II-A-S.2.5', 'research capability.', 'ii-a-s25', 45, 46, 2, 4, 283, 'II-A-S.2.5'),
(289, 'II-A-S.3', 'Faculty handling OJT/Practicum courses have had at least three (3) years of teaching and industry-based experience in the area, if applicable.', 'ii-a-s3', 48, 49, 2, 3, 22, 'II-A-S.3'),
(290, 'II-A-S.4', 'At least 50% of the faculty are Graduate Degree holders.', 'ii-a-s4', 50, 51, 2, 3, 22, 'II-A-S.4'),
(291, 'II-A-I', 'Implementation', 'ii-a-i', 3, 20, 2, 2, 21, 'II-A-I'),
(292, 'II-A-I.1', 'The faculty demonstrate professional competence and are engage in any or a combination of the following:', 'ii-a-i1', 4, 17, 2, 3, 291, 'II-A-I.1'),
(293, 'II-A-I.1.1', 'instruction;', 'ii-a-i11', 5, 6, 2, 4, 292, 'II-A-I.1.1'),
(294, 'II-A-I.1.2', 'research;', 'ii-a-i12', 7, 8, 2, 4, 292, 'II-A-I.1.2'),
(295, 'II-A-I.1.3', 'extension;', 'ii-a-i13', 9, 10, 2, 4, 292, 'II-A-I.1.3'),
(296, 'II-A-I.1.4', 'production;', 'ii-a-i14', 11, 12, 2, 4, 292, 'II-A-I.1.4'),
(297, 'II-A-I.1.5', 'consultancy and expert service; and', 'ii-a-i15', 13, 14, 2, 4, 292, 'II-A-I.1.5'),
(298, 'II-A-I.1.6', 'publication, creative and scholarly works.', 'ii-a-i16', 15, 16, 2, 4, 292, 'II-A-I.1.6'),
(299, 'II-A-I.2', 'Faculty pursue graduate degrees in Information Technology and/or allied fields from reputable institutions (with at least Level II accreditation status or Workd/Asian rank).', 'ii-a-i2', 18, 19, 2, 3, 291, 'II-A-I.2'),
(300, 'II-A-O', 'Outcome', 'ii-a-o', 21, 24, 2, 2, 21, 'II-A-O'),
(301, 'II-A-O.1', 'The institution has qualified and competent faculty.', 'ii-a-o1', 22, 23, 2, 3, 300, 'II-A-O.1'),
(302, 'II-B', 'Parameter B: Recruitment, Selection and Orientation', 'ii-b', 54, 61, 2, 1, 20, 'II-B'),
(303, 'II-B-S', 'System - Inputs and Processes', 'ii-b-s', 57, 60, 2, 2, 302, 'II-B-S'),
(304, 'II-B-S.1', 'There is an institutional Human Resoure Development Plan/Program (HRDP) designed for faculty recruitment.', 'ii-b-s1', 58, 59, 2, 3, 303, 'II-B-S.1'),
(305, 'II-B-I', 'Implementation', 'ii-b-i', 55, 56, 2, 2, 302, 'II-B-I'),
(306, 'X', 'Administration', 'x', 1, 338, 21, 0, NULL, 'X'),
(307, 'X-A', 'Parameter A: Organization', 'x-a', 2, 25, 21, 1, 306, 'X-A'),
(308, 'X-A-S', 'System - Inputs and Processes', 'x-a-s', 19, 24, 21, 2, 307, 'X-A-S'),
(309, 'X-A-S.1', 'S.1 The institution has an organizational structure approved by the Board of Regents/Trustees (BOR/BOT).', 'x-a-s1', 20, 21, 21, 3, 308, 'X-A-S.1'),
(310, 'X-A-S.2', 'S.2	every office/unit in the organizational structure has functions approved by the BOR/BOT.', 'x-a-s2', 22, 23, 21, 3, 308, 'X-A-S.2'),
(311, 'X-A-I', 'Implementation', 'x-a-i', 3, 14, 21, 2, 307, 'X-A-I'),
(312, 'X-A-I.1', 'The institution is subdivided into administrative units in accordance with the organizational structure.', 'x-a-i1', 4, 5, 21, 3, 311, 'X-A-I.1'),
(313, 'X-A-I.2', 'I.2	The functions, duties and responsibilities of the administrative personnel/staff in each unit/office are identified and carried out.', 'x-a-i2', 6, 7, 21, 3, 311, 'X-A-I.2'),
(314, 'X-A-I.3', 'I.3	The Board of Regents/Trustees is supportive with the growth and development of the institution.', 'x-a-i3', 8, 9, 21, 3, 311, 'X-A-I.3'),
(315, 'X-A-I.4', 'I.4	The Academic and Administrative Councils exercise their powers and perform their functions.', 'x-a-i4', 10, 11, 21, 3, 311, 'X-A-I.4'),
(316, 'X-A-I.5', 'I.5	The flow of communication among and within units/departments is observed.', 'x-a-i5', 12, 13, 21, 3, 311, 'X-A-I.5'),
(317, 'X-A-O', 'Outcome', 'x-a-o', 15, 18, 21, 2, 307, 'X-A-O'),
(318, 'X-A-O.1', 'O.1	The institution has a well-designed and functional organizational structure.', 'x-a-o1', 16, 17, 21, 3, 317, 'X-A-O.1'),
(319, 'X-B', 'Parameter B: Academic Administration', 'x-b', 26, 89, 21, 1, 306, 'X-B'),
(320, 'X-B-S', 'System - Inputs and Processes', 'x-b-s', 71, 88, 21, 2, 319, 'X-B-S'),
(321, 'X-B-S.1', 'S.1 The Dean/Academic Unit Head possesses the required educational qualification, experience and other prescribed requirements needed to administer the College/Academic Unit, as follows:', 'x-b-s1', 72, 73, 21, 3, 320, 'X-B-S.1'),
(322, 'X-B-S.1.1', 'MS in ITE program, at least three (3) years of IT work/consultancy experience, and at least three (3) years of ITE teaching experience beyond computer literacy both of which must be within the last five (5) years;', 'x-b-s11', 74, 75, 21, 3, 320, 'X-B-S.1.1'),
(323, 'X-B-S.1.2', 'PhD/MS in an ITE allied program and any of the following:', 'x-b-s12', 76, 77, 21, 3, 320, 'X-B-S.1.2'),
(324, 'X-B-S.1.2.1', 'completion of coursework requirements;', 'x-b-s121', 78, 79, 21, 3, 320, 'X-B-S.1.2.1'),
(325, 'X-B-S.1.2.2', 'five (5) years experience in systems design, applications programming, IT project management, or information technology research within the last eight (8) years.', 'x-b-s122', 80, 81, 21, 3, 320, 'X-B-S.1.2.2'),
(326, 'X-B-S.1.3', 'Doctorate in an ITE program and at least three (3) years of IT work/consultancy experience within the last five (5) years;', 'x-b-s13', 82, 83, 21, 3, 320, 'X-B-S.1.3'),
(327, 'X-B-S.1.4', 'Doctorate in an ITE allied program, at least three (3) years of work/consultancy experience, at least five (5) years of ITE teaching experience beyond computer literacy both of which must be within the last five (5) years.', 'x-b-s14', 84, 85, 21, 3, 320, 'X-B-S.1.4'),
(328, 'X-B-S.2', 'The Department Chair/s or their equivalent has appropriate/relevant educational qualification and experience.', 'x-b-s2', 86, 87, 21, 3, 320, 'X-B-S.2'),
(329, 'X-B-I', 'Implementation', 'x-b-i', 27, 66, 21, 2, 319, 'X-B-I'),
(330, 'X-B-I.1', 'The Dean is assisted by Department Chairs or their equivalent with appropriate/relevant educational qualification and experience.', 'x-b-i1', 28, 29, 21, 3, 329, 'X-B-I.1'),
(331, 'X-B-I.1.1', 'Master\'s degree in any ITE program;', 'x-b-i11', 30, 31, 21, 3, 329, 'X-B-I.1.1'),
(332, 'X-B-I.1.2', 'Master\'s degree in an ITE allied program and at least any of the following:', 'x-b-i12', 32, 33, 21, 3, 329, 'X-B-I.1.2'),
(333, 'X-B-I.1.2.1', 'completion of coursework requirements for a master\'s degree in any of the ITE programs;', 'x-b-i121', 34, 35, 21, 3, 329, 'X-B-I.1.2.1'),
(334, 'X-B-I.1.2.2', 'five (5) years experience in systems design, applications programming, IT project management, or information technology research within the last eight (8) years.', 'x-b-i122', 36, 37, 21, 3, 329, 'X-B-I.1.2.2'),
(335, 'X-B-I.1.3', 'doctorate in an ITE allied program and five (5) years experience teaching ITE (beyond computer literacy courses) within the last eight (8) years.', 'x-b-i13', 38, 39, 21, 3, 329, 'X-B-I.1.3'),
(336, 'X-B-I.2', 'The Dean implements a supervisory program.', 'x-b-i2', 40, 41, 21, 3, 329, 'X-B-I.2'),
(337, 'X-B-I.3', 'The Dean participates in the recruitment and promotion of faculty and staff.', 'x-b-i3', 42, 43, 21, 3, 329, 'X-B-I.3'),
(338, 'X-B-I.4', 'The Dean, the faculty and the administration work together for the improvement of the College/Academic Unit particularly in:', 'x-b-i4', 44, 45, 21, 3, 329, 'X-B-I.4'),
(339, 'X-B-I.4.1', 'X-B-I.4.1	setting standards and targets;', 'x-b-i41', 46, 47, 21, 3, 329, 'X-B-I.4.1'),
(340, 'X-B-I.4.2', 'planning of programs and other related activities;', 'x-b-i42', 48, 49, 21, 3, 329, 'X-B-I.4.2'),
(341, 'X-B-I.4.3', 'implementing, monitoring and evaluation of plans, programs and other related activities;', 'x-b-i43', 50, 51, 21, 3, 329, 'X-B-I.4.3'),
(342, 'X-B-I.4.4', 'X-B-I.4.4	establishing linkages, partnerships and networking activities;', 'x-b-i44', 52, 53, 21, 3, 329, 'X-B-I.4.4'),
(343, 'X-B-I.4.5', 'providing opportunities for professional growth and development of the faculty and staff;', 'x-b-i45', 54, 55, 21, 3, 329, 'X-B-I.4.5'),
(344, 'X-B-I.4.6', 'preparing policies and guidelines in the internal administration and operation of the College/Academic Unit;', 'x-b-i46', 56, 57, 21, 3, 329, 'X-B-I.4.6'),
(345, 'X-B-I.4.7', 'preparing guidelines on the proper use and maintenance of facilities, equipment, supplies and materials, etc.', 'x-b-i47', 58, 59, 21, 3, 329, 'X-B-I.4.7'),
(346, 'X-B-I.5', 'Definite criteria and procedures in the selection and promotion of the most qualified faculty and staff are observed.', 'x-b-i5', 60, 61, 21, 3, 329, 'X-B-I.5'),
(347, 'X-B-I.6', 'The Dean, faculty, staff, and students pursue collaborative activities in generating resources and income and in implementing cost0effective measures.', 'x-b-i6', 62, 63, 21, 3, 329, 'X-B-I.6'),
(348, 'X-B-I.7', 'The Dean implements policies and procedures on internal administration and operations of the College/Academic Unit.', 'x-b-i7', 64, 65, 21, 3, 329, 'X-B-I.7'),
(349, 'X-B-O', 'Outcome', 'x-b-o', 67, 70, 21, 2, 319, 'X-B-O'),
(350, 'X-B-O.1', 'The College/Academic Unit is efficiently and effectively managed.', 'x-b-o1', 68, 69, 21, 3, 349, 'X-B-O.1'),
(351, 'X-C', 'Parameter C: Student Administration', 'x-c', 90, 133, 21, 1, 306, 'X-C'),
(352, 'X-C-S', 'System - Inputs and Processes', 'x-c-s', 105, 132, 21, 2, 351, 'X-C-S'),
(353, 'X-C-S.1', 'The institution has an approved and printed Student Handbook/Manual containing policies and guidelines on the following aspects of student life:', 'x-c-s1', 106, 107, 21, 3, 352, 'X-C-S.1'),
(354, 'X-C-S.1.1', 'admission and retention;', 'x-c-s11', 108, 109, 21, 3, 352, 'X-C-S.1.1'),
(355, 'X-C-S.1.2', 'registration requirements;', 'x-c-s12', 116, 117, 21, 3, 352, 'X-C-S.1.2'),
(356, 'X-C-S.1.3', 'school fees;', 'x-c-s13', 118, 119, 21, 3, 352, 'X-C-S.1.3'),
(357, 'X-C-S.1.4', 'academic load;', 'x-c-s14', 120, 121, 21, 3, 352, 'X-C-S.1.4'),
(358, 'X-C-S.1.5', 'transfers;', 'x-c-s15', 122, 123, 21, 3, 352, 'X-C-S.1.5'),
(359, 'X-C-S.1.6', 'residence, course work, scholastic and graduation requirements.', 'x-c-s16', 124, 125, 21, 3, 352, 'X-C-S.1.6'),
(360, 'X-C-S.1.7', 'examination and grading system;', 'x-c-s17', 126, 127, 21, 3, 352, 'X-C-S.1.7'),
(361, 'X-C-S.1.8', 'X-C-S.1.8', 'x-c-s18', 128, 129, 21, 3, 352, 'X-C-S.1.8'),
(362, 'X-C-S.1.9', 'shifting and adding/dropping of course/s/subjects/s;', 'x-c-s19', 130, 131, 21, 3, 352, 'X-C-S.1.9'),
(363, 'X-C-S.1.10', 'code of conduct and discipling;', 'x-c-s110', 110, 111, 21, 3, 352, 'X-C-S.1.10'),
(364, 'X-C-S.1.11', 'attendance; and', 'x-c-s111', 112, 113, 21, 3, 352, 'X-C-S.1.11'),
(365, 'X-C-S.1.12', 'others (please specify) ___________', 'x-c-s112', 114, 115, 21, 3, 352, 'X-C-S.1.12'),
(366, 'X-C-I', 'Implementation', 'x-c-i', 91, 98, 21, 2, 351, 'X-C-I'),
(367, 'X-C-I.1', 'Students are provided opportunities to participate in the planning and implementation of activities concerning their welfare.', 'x-c-i1', 92, 93, 21, 3, 366, 'X-C-I.1'),
(368, 'VI', 'Extension and Community Involvement', 'vi', 1, 142, 7, 0, NULL, 'VI'),
(369, 'VI-A', 'Parameter A: Priorities and Relevance', 'vi-a', 2, 29, 7, 1, 368, 'VI-A'),
(370, 'VI-A-S', 'System - Inputs and Processes', 'vi-a-s', 17, 28, 7, 2, 369, 'VI-A-S'),
(371, 'VI-A-S.1', 'The extension agenda is in consonance of local, regional and national development thrusts and priorities.', 'vi-a-s1', 18, 19, 7, 3, 370, 'VI-A-S.1'),
(372, 'VI-A-S.2', 'The College/Academic Unit of Information Technology Education has a benchmark survey of the problems, needs priorities and resources of the community.', 'vi-a-s2', 20, 21, 7, 3, 370, 'VI-A-S.2'),
(373, 'VI-A-S.3', 'The extension program reflects the VMGO.', 'vi-a-s3', 22, 23, 7, 3, 370, 'VI-A-S.3'),
(374, 'VI-A-S.4', 'There is a pool of consultants/experts from various disciplines to serve in extension projects and activtities.', 'vi-a-s4', 24, 25, 7, 3, 370, 'VI-A-S.4'),
(375, 'VI-A-S.5', 'The institution has an approved and copyrighted Extension Manual.', 'vi-a-s5', 26, 27, 7, 3, 370, 'VI-A-S.5'),
(376, 'VI-A-I', 'Implementation', 'vi-a-i', 3, 12, 7, 2, 369, 'VI-A-I'),
(377, 'VI-A-I.1', 'The extension projects and activities implemented are based on the results of the benchmark survey.', 'vi-a-i1', 4, 5, 7, 3, 376, 'VI-A-I.1'),
(378, 'VI-A-I.2', 'The extension projects and activities complement the curriculum of the Information Technology Education program under review.', 'vi-a-i2', 6, 11, 7, 3, 376, 'VI-A-I.2'),
(379, 'VI-A-I.2.1', 'A mutuale xchange of resources and services between the College/Academic Unit and the community is evident.', 'vi-a-i21', 7, 8, 7, 4, 378, 'VI-A-I.2.1'),
(380, 'VI-A-I.2.2', 'Linkages with local, national, foreign, and non-governmental agencies are institutionalized.', 'vi-a-i22', 9, 10, 7, 4, 378, 'VI-A-I.2.2'),
(381, 'VI-A-O', 'Outcome', 'vi-a-o', 13, 16, 7, 2, 369, 'VI-A-O'),
(382, 'VI-A-O.1', 'Priority and relevant extension projects and activities are conducted.', 'vi-a-o1', 14, 15, 7, 3, 381, 'VI-A-O.1'),
(383, 'VI-B', 'Parameter B: Planning, Implementation, Monitoring and Evaluation', 'vi-b', 30, 75, 7, 1, 368, 'VI-B'),
(384, 'VI-B-S', 'System - Inputs and Processes', 'vi-b-s', 69, 74, 7, 2, 383, 'VI-B-S'),
(385, 'VI-B-S.1', 'There is distinct office that manages the Extension Program.', 'vi-b-s1', 70, 71, 7, 3, 384, 'VI-B-S.1'),
(386, 'VI-B-S.2', 'Instruments for monitoring and evaluation are available.', 'vi-b-s2', 72, 73, 7, 3, 384, 'VI-B-S.2'),
(387, 'VI-B-I', 'Implementation', 'vi-b-i', 31, 62, 7, 2, 383, 'VI-B-I'),
(388, 'VI-B-I.1', 'The administration, faculty, students and other stakeholders of the College/Academic Unit of Information Technology Education participate in the planning and organization of Extension Program.', 'vi-b-i1', 32, 33, 7, 3, 387, 'VI-B-I.1'),
(389, 'VI-B-I.2', 'The administration, faculty and students are involved in the implementation and dissemination of extension programs', 'vi-b-i2', 36, 37, 7, 3, 387, 'VI-B-I.2'),
(390, 'VI-B-I.3', 'The extension projects and activities serve varied clientele.', 'vi-b-i3', 38, 39, 7, 3, 387, 'VI-B-I.3'),
(391, 'VI-B-I.4', 'The conduct of extension projects and activities is sustainable.', 'vi-b-i4', 40, 41, 7, 3, 387, 'VI-B-I.4'),
(392, 'VI-B-I.5', 'Technologies/new knowledge are disseminated to the target clientele through appropriate extension delivery systems.', 'vi-b-i5', 42, 43, 7, 3, 387, 'VI-B-I.5'),
(393, 'VI-B-I.6', 'The extension activities are documented in the form of:', 'vi-b-i6', 44, 55, 7, 3, 387, 'VI-B-I.6'),
(394, 'VI-B-I.6.1', 'pamphlets;', 'vi-b-i61', 45, 46, 7, 4, 393, 'VI-B-I.6.1'),
(395, 'VI-B-I.6.2', 'flyers;', 'vi-b-i62', 47, 48, 7, 4, 393, 'VI-B-I.6.2'),
(396, 'VI-B-I.6.3', 'bulletins;', 'vi-b-i63', 49, 50, 7, 4, 393, 'VI-B-I.6.3'),
(397, 'VI-B-I.6.4', 'newsletters; and', 'vi-b-i64', 51, 52, 7, 4, 393, 'VI-B-I.6.4'),
(398, 'VI-B-I.6.5', 'electronic resources.', 'vi-b-i65', 53, 54, 7, 4, 393, 'VI-B-I.6.5'),
(399, 'VI-B-I.7', 'Periodic monitoring and evaluation of extension projects and activities are conducted.', 'vi-b-i7', 56, 57, 7, 3, 387, 'VI-B-I.7'),
(400, 'VI-B-I.8', 'Results of monitoring and evaluation are disseminated and discussed with concerned stakeholders.', 'vi-b-i8', 58, 59, 7, 3, 387, 'VI-B-I.8'),
(401, 'VI-B-I.9', 'Re-planning of activities based on feedback is conducted.', 'vi-b-i9', 60, 61, 7, 3, 387, 'VI-B-I.9'),
(402, 'VI-B-I.10', 'Accomplishment and terminal reports are filed and submitted on time.', 'vi-b-i10', 34, 35, 7, 3, 387, 'VI-B-I.10'),
(403, 'VI-B-O', 'Outcome', 'vi-b-o', 63, 68, 7, 2, 383, 'VI-B-O'),
(404, 'VI-B-O.1', 'The Extension Program is well-planned, implemented, monitored, evaluated and disseminated.', 'vi-b-o1', 64, 65, 7, 3, 403, 'VI-B-O.1'),
(405, 'VI-B-O.2', 'The Extension Program has contributed to the improvement on the quality of life of the target clientele/beneficiaries.', 'vi-b-o2', 66, 67, 7, 3, 403, 'VI-B-O.2'),
(406, 'VI-C', 'Parameter C: Funding and Other Resources', 'vi-c', 76, 109, 7, 1, 368, 'VI-C'),
(407, 'VI-C-S', 'System - Inputs and Processes', 'vi-c-s', 95, 108, 7, 2, 406, 'VI-C-S'),
(408, 'VI-C-S.1', 'There is an approved and adequate budget for extension.', 'vi-c-s1', 96, 97, 7, 3, 407, 'VI-C-S.1'),
(409, 'VI-C-S.2', 'There is a provision of:', 'vi-c-s2', 98, 107, 7, 3, 407, 'VI-C-S.2'),
(410, 'VI-C-S.2.1', 'facilities and equipment such as internet and other ICT resources;', 'vi-c-s21', 99, 100, 7, 4, 409, 'VI-C-S.2.1'),
(411, 'VI-C-S.2.2', 'extension staff;', 'vi-c-s22', 101, 102, 7, 4, 409, 'VI-C-S.2.2'),
(412, 'VI-C-S.2.3', 'supplies and materials; and', 'vi-c-s23', 103, 104, 7, 4, 409, 'VI-C-S.2.3'),
(413, 'VI-C-S.2.4', 'workplace.', 'vi-c-s24', 105, 106, 7, 4, 409, 'VI-C-S.2.4'),
(414, 'VI-C-I', 'Implementation', 'vi-c-i', 77, 90, 7, 2, 406, 'VI-C-I'),
(415, 'VI-C-I.1', 'The budget for the extension program is utilized as planned.', 'vi-c-i1', 80, 81, 7, 3, 414, 'VI-C-I.1'),
(416, 'VI-C-I.2', 'Honoraria and other incentives (deloading, credit unit equivalent, etc.) to faculty involved in extension work are granted.', 'vi-c-i2', 82, 83, 7, 3, 414, 'VI-C-I.2'),
(417, 'VI-C-I.3', 'The College/Academic Unit of Information Technology Education sources out the following from other agencies:', 'vi-c-i3', 84, 89, 7, 3, 414, 'VI-C-I.3'),
(418, 'VI-C-I.3.1', 'additional funding: and', 'vi-c-i31', 85, 86, 7, 4, 417, 'VI-C-I.3.1'),
(419, 'VI-C-I.3.2', 'technical assistance and service inputs.', 'vi-c-i32', 87, 88, 7, 4, 417, 'VI-C-I.3.2'),
(420, 'VI-C-O', 'Outcome', 'vi-c-o', 91, 94, 7, 2, 406, 'VI-C-O'),
(421, 'VI-C-O.1', 'The Extension Program is adequately funded.', 'vi-c-o1', 92, 93, 7, 3, 420, 'VI-C-O.1'),
(422, 'VI-D', 'Parameter D: Community Involvement and Participation in the Institution\'s Activities', 'vi-d', 110, 141, 7, 1, 368, 'VI-D'),
(423, 'VI-D-S', 'System - Inputs and Processes', 'vi-d-s', 137, 140, 7, 2, 422, 'VI-D-S'),
(424, 'VI-D-S.1', 'There is a strategy for involving the community, government and private agencies in the Extension Program.', 'vi-d-s1', 138, 139, 7, 3, 423, 'VI-D-S.1'),
(425, 'VI-D-I', 'Implementation', 'vi-d-i', 111, 132, 7, 2, 422, 'VI-D-I'),
(426, 'VI-D-I.1', 'The College/Academic Unit is committed to the service and development of the community; and', 'vi-d-i1', 112, 119, 7, 3, 425, 'VI-D-I.1'),
(427, 'VI-D-I.1.1', 'initiates and maintains community development projects;', 'vi-d-i11', 113, 114, 7, 4, 426, 'VI-D-I.1.1'),
(428, 'VI-D-I.1.2', 'involves the students, faculty, staff administrators in the projects; and', 'vi-d-i12', 115, 116, 7, 4, 426, 'VI-D-I.1.2'),
(429, 'VI-D-I.1.3', 'coordinates it community programs and services with the target clientele.', 'vi-d-i13', 117, 118, 7, 4, 426, 'VI-D-I.1.3'),
(430, 'VI-D-I.2', 'There is community participation and involvement in extension activities in the following:', 'vi-d-i2', 120, 131, 7, 3, 425, 'VI-D-I.2'),
(431, 'VI-D-I.2.1', 'planning;', 'vi-d-i21', 121, 122, 7, 4, 430, 'VI-D-I.2.1'),
(432, 'VI-D-I.2.2', 'implementation and dissemination;', 'vi-d-i22', 123, 124, 7, 4, 430, 'VI-D-I.2.2'),
(433, 'VI-D-I.2.3', 'monitoring and evaluation;', 'vi-d-i23', 125, 126, 7, 4, 430, 'VI-D-I.2.3'),
(434, 'VI-D-I.2.4', 'out-sourcing of funds, materials and other service inputs; and', 'vi-d-i24', 127, 128, 7, 4, 430, 'VI-D-I.2.4'),
(435, 'VI-D-I.2.5', 'utilization of technology, knowledge learned, skills acquired from the extension projects and activities.', 'vi-d-i25', 129, 130, 7, 4, 430, 'VI-D-I.2.5'),
(436, 'VI-D-O', 'Outcome', 'vi-d-o', 133, 136, 7, 2, 422, 'VI-D-O'),
(437, 'VI-D-O.1', 'There is wholesome coordination between the Extension Program implementers and the target clientele/benefeciareis.', 'vi-d-o1', 134, 135, 7, 3, 436, 'VI-D-O.1'),
(438, 'IX', 'Laboratories', 'ix', 1, 140, 5, 0, NULL, 'IX'),
(439, 'IX-A', 'Parameter A: Laboratories, Shops and Facilities', 'ix-a', 2, 47, 5, 1, 438, 'IX-A'),
(440, 'IX-A-S', 'System - Inputs and Processes', 'ix-a-s', 33, 46, 5, 2, 439, 'IX-A-S'),
(441, 'IX-A-S.1', 'The laboratory layout conforms to acceptable standards (RA 6541 National Building Code of the Philippines/PD 856 \"Code of Sanitation of the Philippines) and to particular needs of the Information Technology Program.', 'ix-a-s1', 34, 35, 5, 3, 440, 'IX-A-S.1');
INSERT INTO `accreapp_category` (`id`, `code`, `description`, `slug`, `lft`, `rght`, `tree_id`, `level`, `parent_id`, `name`) VALUES
(442, 'III', 'Curriculum and Instruction', 'iii', 1, 432, 3, 0, NULL, 'III'),
(443, 'III-A', 'Parameter A: Curriculum and Program of Studies', 'iii-a', 2, 73, 3, 1, 442, 'III-A'),
(444, 'III-A-S', 'System - Inputs and Processes', 'iii-a-s', 59, 72, 3, 2, 443, 'III-A-S'),
(445, 'III-A-S.1', 'The curriculum provides for the development of the following professional competencies:', 'iii-a-s1', 60, 67, 3, 3, 444, 'III-A-S.1'),
(446, 'III-A-S.1.1', 'acquisition of knowledge and theories based on the field of specialization/discipline;', 'iii-a-s11', 61, 62, 3, 4, 445, 'III-A-S.1.1'),
(447, 'III-A-S.1.2', 'application of the theories to real problems in the field; and', 'iii-a-s12', 63, 64, 3, 4, 445, 'III-A-S.1.2'),
(448, 'III-A-S.1.3', 'demonstration of skills in applying different strategis in actual work setting.', 'iii-a-s13', 65, 66, 3, 4, 445, 'III-A-S.1.3'),
(449, 'III-A-S.2', 'There is a system of validation of subjects taken from other schools.', 'iii-a-s2', 68, 69, 3, 3, 444, 'III-A-S.2'),
(450, 'III-A-S.3', 'The curriculum reflects the local, regional and national development goals as well as the institution\'s vision and mission.', 'iii-a-s3', 70, 71, 3, 3, 444, 'III-A-S.3'),
(451, 'III-A-I', 'Implementation', 'iii-a-i', 3, 54, 3, 2, 443, 'III-A-I'),
(452, 'III-A-I.1', 'The curriculum/program is implemented utilizing and/or even judiciously exceeding CHED requirements and standards as follows:', 'iii-a-i1', 4, 19, 3, 3, 451, 'III-A-I.1'),
(453, 'III-A-I.1.1', 'General Education - 54 units', 'iii-a-i11', 5, 6, 3, 4, 452, 'III-A-I.1.1'),
(454, 'III-A-I.1.2', 'basic ITE Core Course - 18 units', 'iii-a-i12', 7, 8, 3, 4, 452, 'III-A-I.1.2'),
(455, 'III-A-I.1.3', 'Professional Courses - 33 units', 'iii-a-i13', 9, 10, 3, 4, 452, 'III-A-I.1.3'),
(456, 'III-A-I.1.4', 'ITE Elective - 12 units', 'iii-a-i14', 11, 12, 3, 4, 452, 'III-A-I.1.4'),
(457, 'III-A-I.1.5', 'Free Elective - 9 units', 'iii-a-i15', 13, 14, 3, 4, 452, 'III-A-I.1.5'),
(458, 'III-A-I.1.6', 'PE - 8 units', 'iii-a-i16', 15, 16, 3, 4, 452, 'III-A-I.1.6'),
(459, 'III-A-I.1.7', 'NSTP - 6 units', 'iii-a-i17', 17, 18, 3, 4, 452, 'III-A-I.1.7'),
(460, 'III-A-I.2', 'The subjects are logically sequenced and prerequisite courses are identified.', 'iii-a-i2', 20, 21, 3, 3, 451, 'III-A-I.2'),
(461, 'III-A-I.3', 'The curricular content is responsive to the needs of the country and recent developments in the profession.', 'iii-a-i3', 22, 23, 3, 3, 451, 'III-A-I.3'),
(462, 'III-A-I.4', 'The curricular contents covers the extent of the professional and technical preparation required of its graduates.', 'iii-a-i4', 24, 25, 3, 3, 451, 'III-A-I.4'),
(463, 'III-A-I.5', 'The curriculum integrates values, reflective of national customs, culture and tradition in cases where applicable.', 'iii-a-i5', 26, 27, 3, 3, 451, 'III-A-I.5'),
(464, 'III-A-I.6', 'Opportunities for participation in hands-on activities, such as immersion/practical training and field study are maintained in the curriculum.', 'iii-a-i6', 28, 29, 3, 3, 451, 'III-A-I.6'),
(465, 'III-A-I.7', 'The following activities are undertaken to ensure quality in the process of curriculum development:', 'iii-a-i7', 30, 51, 3, 3, 451, 'III-A-I.7'),
(466, 'IX-A-S.2', 'Room lightings conform to the standard requirements of fluorescent bulbs relative to the size.', 'ix-a-s2', 36, 37, 5, 3, 440, 'IX-A-S.2'),
(467, 'IX-A-S.3', 'The laboratories are properly lighted and well ventilated.', 'ix-a-s3', 38, 39, 5, 3, 440, 'IX-A-S.3'),
(468, 'IX-A-S.4', 'Each laboratory room has at least two exit doors that open outward.', 'ix-a-s4', 40, 41, 5, 3, 440, 'IX-A-S.4'),
(469, 'IX-A-S.5', 'There is a laboratory for shop work for specific technologies.', 'ix-a-s5', 42, 43, 5, 3, 440, 'IX-A-S.5'),
(470, 'III-A-I.7.1', 'participative planning and designing of the curriculum by the following stakeholders;', 'iii-a-i71', 31, 44, 3, 4, 465, 'III-A-I.7.1'),
(471, 'III-A-I.7.1.1', 'administration;', 'iii-a-i711', 32, 33, 3, 5, 470, 'III-A-I.7.1.1'),
(472, 'III-A-I.7.1.2', 'faculty;', 'iii-a-i712', 34, 35, 3, 5, 470, 'III-A-I.7.1.2'),
(473, 'III-A-I.7.1.3', 'students;', 'iii-a-i713', 36, 37, 3, 5, 470, 'III-A-I.7.1.3'),
(474, 'III-A-I.7.1.4', 'alumni;', 'iii-a-i714', 38, 39, 3, 5, 470, 'III-A-I.7.1.4'),
(475, 'III-A-I.7.1.5', 'representatives from the industry/sector; and', 'iii-a-i715', 40, 41, 3, 5, 470, 'III-A-I.7.1.5'),
(476, 'III-A-I.7.1.6', 'others (please specify) ________', 'iii-a-i716', 42, 43, 3, 5, 470, 'III-A-I.7.1.6'),
(477, 'III-A-I.7.2', 'periodic review, assessment, updating and approval of the curriculum by the Academic Council;', 'iii-a-i72', 45, 46, 3, 4, 465, 'III-A-I.7.2'),
(478, 'III-A-I.7.3', 'confirmation of the curriculum by the Board of Regents/Trustees (BOR/BOT)', 'iii-a-i73', 47, 48, 3, 4, 465, 'III-A-I.7.3'),
(479, 'III-A-I.7.4', 'others (please specify) ________', 'iii-a-i74', 49, 50, 3, 4, 465, 'III-A-I.7.4'),
(480, 'III-A-I.8', 'The program of study allows the accomodation of students with special needs and assists them to finish the degree.', 'iii-a-i8', 52, 53, 3, 3, 451, 'III-A-I.8'),
(481, 'III-A-O', 'Outcome', 'iii-a-o', 55, 58, 3, 2, 443, 'III-A-O'),
(482, 'III-A-O.1', 'The curriculum is responsive and relevant to the demads of the times.', 'iii-a-o1', 56, 57, 3, 3, 481, 'III-A-O.1'),
(483, 'III-B', 'Parameter B: Instructional Process, Methodologies and Learning Opportunities', 'iii-b', 74, 213, 3, 1, 442, 'III-B'),
(484, 'III-B-S', 'System - Inputs and Processes\r\nSyllabus and Instructional Materials', 'iii-b-s', 199, 212, 3, 2, 483, 'III-B-S'),
(485, 'III-B-S.1', 'There is an institutional outcomes-based standard format in the preparation of course syllabus.', 'iii-b-s1', 200, 201, 3, 3, 484, 'III-B-S.1'),
(486, 'III-B-S.2', 'The syllabus includes a list of suggested readings and references of print and electronic resources within the last ten (10) years.', 'iii-b-s2', 202, 203, 3, 3, 484, 'III-B-S.2'),
(487, 'III-B-S.3', 'Copies of all course syllabi during the term are at the Dean\'s Office or in any other appropriate repository.', 'iii-b-s3', 204, 205, 3, 3, 484, 'III-B-S.3'),
(488, 'III-B-S.4', 'Copies of all course syllabi in the previous terms are filed for reference purposes.', 'iii-b-s4', 206, 207, 3, 3, 484, 'III-B-S.4'),
(489, 'III-B-S.5', 'There is provision for remedial measures to strengthen the basic skills in Mathematics and English, and other \"tool\" subjects.', 'iii-b-s5', 208, 209, 3, 3, 484, 'III-B-S.5'),
(490, 'III-B-S.6', 'There is a mechanism to facilitate the teaching-learning process.', 'iii-b-s6', 210, 211, 3, 3, 484, 'III-B-S.6'),
(491, 'III-B-I', 'Implementation', 'iii-b-i', 75, 190, 3, 2, 483, 'III-B-I'),
(492, 'III-B-I.1', 'The Dean or official concerned approves the updated syllabus for each subject.', 'iii-b-i1', 76, 77, 3, 3, 491, 'III-B-I.1'),
(493, 'III-B-I.2', 'The faculty prepares syllabi with comprehensive contents.', 'iii-b-i2', 102, 103, 3, 3, 491, 'III-B-I.2'),
(494, 'III-B-I.3', 'The faculty revise and enhances their syllabi preferably every two (2) years and as needed.', 'iii-b-i3', 104, 105, 3, 3, 491, 'III-B-I.3'),
(495, 'III-B-I.4', 'The faculty distributes a copy of the syllabus to each student.', 'iii-b-i4', 106, 107, 3, 3, 491, 'III-B-I.4'),
(496, 'III-B-I.5', 'Teaching strategies stimulate the development of the students\' higher-order thinking skills (HOTS) such as critical thinking, analytical thinking, creative thinking and problem solving.', 'iii-b-i5', 108, 109, 3, 3, 491, 'III-B-I.5'),
(497, 'V-A-I.2.2', 'faculty;', 'v-a-i22', 9, 10, 6, 4, 277, 'V-A-I.2.2'),
(498, 'V-A-I.2.3', 'students;', 'v-a-i23', 11, 12, 6, 4, 277, 'V-A-I.2.3'),
(499, 'V-A-I.2.4', 'government agency representatives (DOST, CHED, NEDA, etc.); nad', 'v-a-i24', 13, 14, 6, 4, 277, 'V-A-I.2.4'),
(500, 'V-A-I.2.5', 'other stakeholders (alumni, parents, etc.).', 'v-a-i25', 15, 16, 6, 4, 277, 'V-A-I.2.5'),
(501, 'V-A-I.3', 'Action researches to test theory in practice are conducted by faculty and students.', 'v-a-i3', 18, 19, 6, 3, 275, 'V-A-I.3'),
(502, 'V-A-I.4', 'Team/collaborative and interdisciplinary research is encouraged.', 'v-a-i4', 20, 21, 6, 3, 275, 'V-A-I.4'),
(503, 'V-A-I.5', 'Research outputs are published in  refereed national and/or international journals.', 'v-a-i5', 22, 23, 6, 3, 275, 'V-A-I.5'),
(504, 'V-A-O', 'Outcome', 'v-a-o', 25, 30, 6, 2, 271, 'V-A-O'),
(505, 'V-A-O.1', 'Priority researches are identified and conducted.', 'v-a-o1', 26, 27, 6, 3, 504, 'V-A-O.1'),
(506, 'V-A-O.2', 'Research results are published.', 'v-a-o2', 28, 29, 6, 3, 504, 'V-A-O.2'),
(507, 'V-B', 'Parameter B: Funding and Other Resources', 'v-b', 38, 67, 6, 1, 270, 'V-B'),
(508, 'V-B-S', 'System - Inputs and Processes', 'v-b-s', 53, 66, 6, 2, 507, 'V-B-S'),
(509, 'V-B-S.1', 'The institution has an approved and adequate budget for research.', 'v-b-s1', 54, 55, 6, 3, 508, 'V-B-S.1'),
(510, 'V-B-S.2', 'There are provisions for the following:', 'v-b-s2', 56, 65, 6, 3, 508, 'V-B-S.2'),
(511, 'V-B-S.2.1', 'facilities and equipment such as Internet, statistical software, and other ICT resources;', 'v-b-s21', 57, 58, 6, 4, 510, 'V-B-S.2.1'),
(512, 'V-B-S.2.2', 'research staff;', 'v-b-s22', 59, 60, 6, 4, 510, 'V-B-S.2.2'),
(513, 'V-B-S.2.3', 'supplies and materials; and', 'v-b-s23', 61, 62, 6, 4, 510, 'V-B-S.2.3'),
(514, 'V-B-S.2.4', 'workplace.', 'v-b-s24', 63, 64, 6, 4, 510, 'V-B-S.2.4'),
(515, 'V-B-I', 'Implementation\r\nThe Institution:', 'v-b-i', 39, 48, 6, 2, 507, 'V-B-I'),
(516, 'V-B-I.1', 'allocates adequate funds for the conduct of faculty and student research.', 'v-b-i1', 40, 41, 6, 3, 515, 'V-B-I.1'),
(517, 'V-B-I.2', 'establishes linkages with the local/national/international agencies for funding support and assistance.', 'v-b-i2', 42, 43, 6, 3, 515, 'V-B-I.2'),
(518, 'V-B-I.3', 'maintains a functional and long-range program of faculty/staff development to enhance research capability and competence.', 'v-b-i3', 44, 45, 6, 3, 515, 'V-B-I.3'),
(519, 'V-B-I.4', 'encourages the conduct of externallly funded researches.', 'v-b-i4', 46, 47, 6, 3, 515, 'V-B-I.4'),
(520, 'V-B-O', 'Outcome', 'v-b-o', 49, 52, 6, 2, 507, 'V-B-O'),
(521, 'V-B-O.1', 'The Research Program is adequately funded.', 'v-b-o1', 50, 51, 6, 3, 520, 'V-B-O.1'),
(522, 'V-C', 'Parameter C: Implementation, Monitoring, Evaluation and Utilization of Research Results/Outputs', 'v-c', 68, 111, 6, 1, 270, 'V-C'),
(523, 'V-C-S', 'System - Inputs and Processes', 'v-c-s', 105, 110, 6, 2, 522, 'V-C-S'),
(524, 'V-C-S.1', 'There is a system of implementation, monitoring, evaluation and utilization of research outputs.', 'v-c-s1', 106, 107, 6, 3, 523, 'V-C-S.1'),
(525, 'V-C-S.2', 'There is a policy on Intellectual Property Rights (IPR).', 'v-c-s2', 108, 109, 6, 3, 523, 'V-C-S.2'),
(526, 'V-C-I', 'Implementation', 'v-c-i', 69, 100, 6, 2, 522, 'V-C-I'),
(528, 'V-C-I.2', 'The Research Manual provides guidelines and procedures for the administration and conduct of research.', 'v-c-i2', 78, 79, 6, 3, 526, 'V-C-I.2'),
(529, 'V-C-I.3', 'The faculty conduct applied and operational researches in their fields of specialization in accordance with the thrusts and priorities of the program/institution.', 'v-c-i3', 80, 81, 6, 3, 526, 'V-C-I.3'),
(530, 'V-C-I.4', 'The institution provides incentives to faculty researchers such as honoraria, service credits, deloading, etc.', 'v-c-i4', 82, 83, 6, 3, 526, 'V-C-I.4'),
(531, 'V-C-I.5', 'The college/Academic Unit requires its students to conduct research, as a course requriement, (whenever applicable).', 'v-c-i5', 84, 85, 6, 3, 526, 'V-C-I.5'),
(532, 'V-C-I.6', 'The institution provides opportunities for advanced studies and/or training to enhance faculty/staff research competence.', 'v-c-i6', 86, 87, 6, 3, 526, 'V-C-I.6'),
(533, 'V-C-I.7', 'Completed and on-going research studies are periodically monitored and evaluated inlocal and regional in-house reviews;', 'v-c-i7', 88, 89, 6, 3, 526, 'V-C-I.7'),
(534, 'V-C-I.8', 'Research outputs are utilized as inputs in:', 'v-c-i8', 90, 97, 6, 3, 526, 'V-C-I.8'),
(535, 'V-C-I.8.1', 'institutional development;', 'v-c-i81', 91, 92, 6, 4, 534, 'V-C-I.8.1'),
(536, 'V-C-I.8.2', 'the improvement of instructional processes; and', 'v-c-i82', 93, 94, 6, 4, 534, 'V-C-I.8.2'),
(537, 'V-C-I.8.3', 'the transfer of generated technology/knowledge to the community.', 'v-c-i83', 95, 96, 6, 4, 534, 'V-C-I.8.3'),
(538, 'V-C-I.9', 'Packaged technologies and new information are disseminated to the target clientele through appropriate delivery systems.', 'v-c-i9', 98, 99, 6, 3, 526, 'V-C-I.9'),
(539, 'V-C-I.10', 'The institution ensures that:', 'v-c-i10', 72, 77, 6, 3, 526, 'V-C-I.10'),
(540, 'V-C-I.10.1', 'research outputs are protected by IPR laws; and', 'v-c-i101', 73, 74, 6, 4, 539, 'V-C-I.10.1'),
(541, 'V-C-I.10.2', 'faculty and students observe research ethics to avoid malpractices like plagiarism, fabrication of data, etc.', 'v-c-i102', 75, 76, 6, 4, 539, 'V-C-I.10.2'),
(542, 'V-C-O', 'Outcome', 'v-c-o', 101, 104, 6, 2, 522, 'V-C-O'),
(543, 'V-C-O.1', 'Implementation, monitoring, evaluation and research utilization of outputs are effective.', 'v-c-o1', 102, 103, 6, 3, 542, 'V-C-O.1'),
(544, 'V-D', 'Parameter D: Publication and Dissemination', 'v-d', 112, 163, 6, 1, 270, 'V-D'),
(545, 'V-D-S', 'System - Inputs and Processes', 'v-d-s', 149, 162, 6, 2, 544, 'V-D-S'),
(546, 'V-D-S.1', 'The institution has an aproved and copyrighted Research Journal.', 'v-d-s1', 150, 151, 6, 3, 545, 'V-D-S.1'),
(547, 'V-D-S.2', 'The institution has incentives for:', 'v-d-s2', 152, 161, 6, 3, 545, 'V-D-S.2'),
(548, 'V-D-S.2.1', 'paper presentations;', 'v-d-s21', 153, 154, 6, 4, 547, 'V-D-S.2.1'),
(549, 'V-D-S.2.2', 'journal publication;', 'v-d-s22', 155, 156, 6, 4, 547, 'V-D-S.2.2'),
(550, 'V-D-S.2.3', 'outstanding research related performance; and', 'v-d-s23', 157, 158, 6, 4, 547, 'V-D-S.2.3'),
(551, 'VII', 'Library', 'vii', 1, 330, 8, 0, NULL, 'VII'),
(552, 'VII-A', 'Parameter A: Administration', 'vii-a', 2, 43, 8, 1, 551, 'VII-A'),
(553, 'V-D-S.2.4', 'patented outputs.', 'v-d-s24', 159, 160, 6, 4, 547, 'V-D-S.2.4'),
(554, 'V-D-I', 'Implementation', 'v-d-i', 113, 140, 6, 2, 544, 'V-D-I'),
(556, 'V-D-I.1', 'The institution provides opportunities for the dissemination of research results in for a, conferences, seminars, and other related means.', 'v-d-i1', 114, 115, 6, 3, 554, 'V-D-I.1'),
(557, 'V-D-I.2', 'The institution regularly publishes a research journal.', 'v-d-i2', 116, 117, 6, 3, 554, 'V-D-I.2'),
(558, 'V-D-I.3', 'Library exchage of research publications with other HEI\'s and agencies is maintaines.', 'v-d-i3', 118, 119, 6, 3, 554, 'V-D-I.3'),
(559, 'V-D-I.4', 'Research manuscripts/technical reports are well-written, and edited following the instituional format.', 'v-d-i4', 120, 121, 6, 3, 554, 'V-D-I.4'),
(560, 'V-D-I.5', 'The insititution supports the researchers in all of the following activities:', 'v-d-i5', 122, 133, 6, 3, 554, 'V-D-I.5'),
(562, 'V-D-I.5.1', 'Instructional Materials Development;', 'v-d-i51', 123, 124, 6, 4, 560, 'V-D-I.5.1'),
(563, 'V-D-I.5.2', 'paper presentations, journal publication, classroom lectures, and other similar activities;', 'v-d-i52', 125, 126, 6, 4, 560, 'V-D-I.5.2'),
(565, 'V-D-I.5.3', 'editorship/writing in academic, scientific and professional journals;', 'v-d-i53', 127, 128, 6, 4, 560, 'V-D-I.5.3'),
(569, 'VII-A-I', 'Implementation', 'vii-a-i', 3, 18, 8, 2, 552, 'VII-A-I'),
(571, 'V-D-I.5.4', 'thesis/dissertation advising; and', 'v-d-i54', 129, 130, 6, 4, 560, 'V-D-I.5.4'),
(572, 'VII-A-I.1', 'The library develops an explicit statement of its goals and objectives in conformity with the mandate of the institution.', 'vii-a-i1', 19, 20, 8, 2, 552, 'VII-A-I.1'),
(573, 'V-D-I.5.5', 'patenting or research outputs.', 'v-d-i55', 131, 132, 6, 4, 560, 'V-D-I.5.5'),
(574, 'V-D-I.6', 'Research results are published preferably in refereed journals.', 'v-d-i6', 134, 135, 6, 3, 554, 'V-D-I.6'),
(575, 'V-D-I.7', 'Research results are disseminated to the target clientele.', 'v-d-i7', 136, 137, 6, 3, 554, 'V-D-I.7'),
(576, 'VII-A-I.2', 'The library is administered and supervised by:', 'vii-a-i2', 4, 9, 8, 3, 569, 'VII-A-I.2'),
(577, 'V-D-I.8', 'The College/Academic Unit generates income from patents, licenses, copyrights, and other research outputs.', 'v-d-i8', 138, 139, 6, 3, 554, 'V-D-I.8'),
(579, 'V-D-O', 'Outcome', 'v-d-o', 141, 148, 6, 2, 544, 'V-D-O'),
(580, 'V-D-O.1', 'Research outputs are published in refereed journals.', 'v-d-o1', 142, 143, 6, 3, 579, 'V-D-O.1'),
(582, 'V-D-O.2', 'Research outputs are utilized.', 'v-d-o2', 144, 145, 6, 3, 579, 'V-D-O.2'),
(583, 'V-D-O.3', 'Patented and copyrighted research outputs are commercialized.', 'v-d-o3', 146, 147, 6, 3, 579, 'V-D-O.3'),
(584, 'VII-A-I.2.1', 'a full-time professional licensed librarian; and', 'vii-a-i21', 5, 6, 8, 4, 576, 'VII-A-I.2.1'),
(586, 'VII-A-I.2.2', 'at least a master\'s degree holder in MS Library and Information Science or MAEd/MA in Library Science.', 'vii-a-i22', 7, 8, 8, 4, 576, 'VII-A-I.2.2'),
(589, 'VII-A-I.3', 'The Head Librarian directs and supervises the total operation of the library and is responsible for the administration of its resources and services.', 'vii-a-i3', 10, 11, 8, 3, 569, 'VII-A-I.3'),
(590, 'VII-A-I.4', 'The Head Librarian, preferably with an academic rank, actively participates in the academic and administrative activities of the institution.', 'vii-a-i4', 12, 13, 8, 3, 569, 'VII-A-I.4'),
(592, 'VII-A-I.5', 'The annual accomplishments and other reports of the library are promptly submitted to the higher offices concerned.', 'vii-a-i5', 14, 15, 8, 3, 569, 'VII-A-I.5'),
(594, 'II-C', 'Parameter C: Faculty Adequacy and Loading', 'ii-c', 62, 107, 2, 1, 20, 'II-C'),
(596, 'VII-A-I.6', 'A Library Development Plan is prepared in consultation with the institution\'s officials and stakeholders.', 'vii-a-i6', 16, 17, 8, 3, 569, 'VII-A-I.6'),
(599, 'VII-B-O', 'Outcome', 'vii-b-o', 105, 110, 8, 2, 821, 'VII-B-O'),
(601, 'II-C-S', 'System - Inputs and Processes', 'ii-c-s', 89, 106, 2, 2, 594, 'II-C-S'),
(602, 'II-C-S.1', 'Faculty-student ratio is in accordance with the program requirements and standards as follows:', 'ii-c-s1', 90, 95, 2, 3, 601, 'II-C-S.1'),
(603, 'II-C-S.1.1', 'lecture (1:50)', 'ii-c-s11', 91, 92, 2, 4, 602, 'II-C-S.1.1'),
(605, 'II-C-S.1.2', 'laboratory (1:30)', 'ii-c-s12', 93, 94, 2, 4, 602, 'II-C-S.1.2'),
(606, 'VII-B-O.1', 'The librarians are qualified.', 'vii-b-o1', 106, 107, 8, 3, 599, 'VII-B-O.1'),
(607, 'II-C-S.2', 'There is a provision for incentives of overload teaching in accordance with the CMO of the program and/or institutional guidelines.', 'ii-c-s2', 96, 97, 2, 3, 601, 'II-C-S.2'),
(608, 'II-C-S.3', 'There are full-time faculty classified by rank, subject/specialization.', 'ii-c-s3', 98, 99, 2, 3, 601, 'II-C-S.3'),
(610, 'VII-B-O.2', 'The library organizational structure is well-designed and effectively implemented.', 'vii-b-o2', 108, 109, 8, 3, 599, 'VII-B-O.2'),
(611, 'II-C-S.4', 'Faculty schedule has time for preparation of lessons, scoring test papers, record-keeping, class evaluation and other instruction-related activities.', 'ii-c-s4', 100, 101, 2, 3, 601, 'II-C-S.4'),
(612, 'II-C-S.5', 'Workload guidelines contain sufficient time for teaching and/or research, extension production and other assigned tasks.', 'ii-c-s5', 102, 103, 2, 3, 601, 'II-C-S.5'),
(613, 'II-C-S.6', 'There is equitable, measurable and fair distribution of teaching load and other assignments.', 'ii-c-s6', 104, 105, 2, 3, 601, 'II-C-S.6'),
(616, 'II-C-I', 'Implementation', 'ii-c-i', 63, 84, 2, 2, 594, 'II-C-I'),
(619, 'II-C-I.1', 'The maximum total load is assigned to regular full-time faculty in accordance to the CMO of the Information Technology Education program and/or institutional guidelines.', 'ii-c-i1', 64, 65, 2, 3, 616, 'II-C-I.1'),
(621, 'II-C-I.2', 'A Faculty Manual is published formalizing faculty policies, standards and guidelines.', 'ii-c-i2', 68, 69, 2, 3, 616, 'II-C-I.2'),
(627, 'II-C-I.3', 'Professional subjects are handled by specialists in the discipline/program.', 'ii-c-i3', 70, 71, 2, 3, 616, 'II-C-I.3'),
(632, 'II-C-I.4', 'The faculty are assigned to teach their major/minor fields of specialization, for a maximum of four (4) different subject preparations within a semester.', 'ii-c-i4', 72, 73, 2, 3, 616, 'II-C-I.4'),
(634, 'II-C-I.5', 'Administrative arrangements are adopted whenever vacancies/leaves of absence occur during the term.', 'ii-c-i5', 74, 75, 2, 3, 616, 'II-C-I.5'),
(636, 'II-C-I.6', 'No less than 60% of the professional subjects in Information Technology Education program are handled by full-time faculty.', 'ii-c-i6', 76, 77, 2, 3, 616, 'II-C-I.6'),
(638, 'II-C-I.7', 'Teaching schedule does not allow more than six (6) hours of continuous teaching.', 'ii-c-i7', 78, 79, 2, 3, 616, 'II-C-I.7'),
(641, 'II-C-I.8', 'Administrative, research and/or professional assignments outside of regular teaching are given credits.', 'ii-c-i8', 80, 81, 2, 3, 616, 'II-C-I.8'),
(643, 'II-C-I.9', 'Consultation, tutorial, remedial classes, expert services, and other instruction-related activities are given credits in consonance with faculty workload guidelines.', 'ii-c-i9', 82, 83, 2, 3, 616, 'II-C-I.9'),
(647, 'II-C-I.10', 'Workload assignments and number of preparations follow existing workload guidelines.', 'ii-c-i10', 66, 67, 2, 3, 616, 'II-C-I.10'),
(650, 'II-C-O', 'Outcome', 'ii-c-o', 85, 88, 2, 2, 594, 'II-C-O'),
(652, 'II-C-O.1', 'The faculty are efficient and effective with sufficient time for instruction, research, production and other assigned tasks.', 'ii-c-o1', 86, 87, 2, 3, 650, 'II-C-O.1'),
(653, 'II-D', 'Parameter D: Rank and Tenure', 'ii-d', 108, 135, 2, 1, 20, 'II-D'),
(657, 'II-D-S', 'System - Inputs and Processes', 'ii-d-s', 127, 134, 2, 2, 653, 'II-D-S'),
(658, 'II-D-S.1', 'The institution has a system of promotion in rank and tenure based on official issuances.', 'ii-d-s1', 128, 129, 2, 3, 657, 'II-D-S.1'),
(659, 'II-D-S.2', 'The institution has a policy on probationary status of employment.', 'ii-d-s2', 130, 131, 2, 3, 657, 'II-D-S.2'),
(661, 'II-D-S.3', 'At least 50% of the full-time faculty teaching the professional courses are under permanent/regular status.', 'ii-d-s3', 132, 133, 2, 3, 657, 'II-D-S.3'),
(665, 'II-D-I', 'Implementation', 'ii-d-i', 109, 122, 2, 2, 653, 'II-D-I'),
(667, 'II-D-I.1', 'The institution implements the system of promotion in rank and aslary based on existing policies and issuances (e.g. NBC 461).', 'ii-d-i1', 110, 111, 2, 3, 665, 'II-D-I.1'),
(669, 'II-D-I.2', 'Retirement, separation or termination benefits are implemented in accordance with institutional and government (CSC, GSIS/DBM) policies and guidelines.', 'ii-d-i2', 112, 113, 2, 3, 665, 'II-D-I.2'),
(671, 'II-D-I.3', 'The faculty are officially informed of their rank and tenure after evaluation of the credentials and performance.', 'ii-d-i3', 114, 115, 2, 3, 665, 'II-D-I.3'),
(673, 'II-D-I.4', 'The faculty concerned is officially informed of the extension, renewal, or termination of their appointments.', 'ii-d-i4', 116, 117, 2, 3, 665, 'II-D-I.4'),
(675, 'II-D-I.5', 'The institution implements a CSC-approved Strategic Performance Management System (SPMS) which emphasizes quality teaching performance, research, creative work, extension and production services.', 'ii-d-i5', 118, 119, 2, 3, 665, 'II-D-I.5'),
(677, 'II-D-I.6', 'The probationary period or temporary status required before the grant of a permanent status to the faculty is in accordance with Civil Service and Institutional policies and guidelines.', 'ii-d-i6', 120, 121, 2, 3, 665, 'II-D-I.6'),
(679, 'II-D-O', 'Outcome', 'ii-d-o', 123, 126, 2, 2, 653, 'II-D-O'),
(681, 'II-D-O.1', 'The faculty are satisfied with their rank and employment status.', 'ii-d-o1', 124, 125, 2, 3, 679, 'II-D-O.1'),
(683, 'II-E', 'Parameter E: Faculty Development', 'ii-e', 136, 199, 2, 1, 20, 'II-E'),
(686, 'II-E-S', 'System - Inputs and Processes', 'ii-e-s', 189, 198, 2, 2, 683, 'II-E-S'),
(687, 'II-E-S.1', 'The institution has an approved and sustainable Faculty Development Program (FDP).', 'ii-e-s1', 190, 191, 2, 3, 686, 'II-E-S.1'),
(689, 'II-E-S.2', 'There are policies on faculty academic recognition and grant of scholarship/fellowships and awards.', 'ii-e-s2', 192, 193, 2, 3, 686, 'II-E-S.2'),
(691, 'II-E-S.3', 'Every faculty member has at least one active membership in professional/scientific organization or honor society relevant to his/her assignment and field of specialization.', 'ii-e-s3', 194, 195, 2, 3, 686, 'II-E-S.3'),
(692, 'II-E-S.4', 'The budget allocation for faculty development is adequate.', 'ii-e-s4', 196, 197, 2, 3, 686, 'II-E-S.4'),
(694, 'II-E-I', 'Implementation', 'ii-e-i', 137, 182, 2, 2, 683, 'II-E-I'),
(696, 'II-E-I.1', 'The institution implements a sustainable Faculty Development Program based on identified priorities/needs and in accordance with the CMO of the program as follows.', 'ii-e-i1', 138, 147, 2, 3, 694, 'II-E-I.1'),
(700, 'II-E-I.1.1', 'upgraded educational qualification (graduate studies);', 'ii-e-i11', 139, 140, 2, 4, 696, 'II-E-I.1.1'),
(702, 'II-E-I.1.2', 'attendance to seminars, symposia and conferences for continuing education;', 'ii-e-i12', 141, 142, 2, 4, 696, 'II-E-I.1.2'),
(705, 'II-E-I.1.3', 'conduct of research activities and publication of research output; and', 'ii-e-i13', 143, 144, 2, 4, 696, 'II-E-I.1.3'),
(707, 'II-E-I.1.4', 'giving lectures and presentation of papers in national/international conferences, symposia and seminars.', 'ii-e-i14', 145, 146, 2, 4, 696, 'II-E-I.1.4'),
(712, 'II-E-I.2', 'The institution supports the professional growth of the faculty through attendance in educational lectures, symposia, seminars, workshops, conferences and other forms of training.', 'ii-e-i2', 150, 151, 2, 3, 694, 'II-E-I.2'),
(715, 'II-E-I.3', 'The institution ocnducts in-service training activities regularly at least once per term.', 'ii-e-i3', 152, 153, 2, 3, 694, 'II-E-I.3'),
(716, 'II-E-I.4', 'Selection of deserving faculty to be granted scholarships, fellowships, seminars, conferences and/or training grants is done objectively.', 'ii-e-i4', 154, 155, 2, 3, 694, 'II-E-I.4'),
(717, 'II-E-I.5', 'The budget for faculty development is adequately allocated.', 'ii-e-i5', 156, 157, 2, 3, 694, 'II-E-I.5'),
(719, 'II-E-I.6', 'The budget for faculty development is wisely utilized.', 'ii-e-i6', 158, 159, 2, 3, 694, 'II-E-I.6'),
(721, 'II-E-I.7', 'The Faculty Development Program is implemented with the following provisions:', 'ii-e-i7', 160, 177, 2, 3, 694, 'II-E-I.7'),
(724, 'II-E-I.7.1', 'adequate and qualified supervision of faculty;', 'ii-e-i71', 161, 162, 2, 4, 721, 'II-E-I.7.1'),
(727, 'II-E-I.7.2', 'scholarships, fellowships, sabbatical leaves, and travel grants;', 'ii-e-i72', 163, 164, 2, 4, 721, 'II-E-I.7.2'),
(729, 'II-E-I.7.3', 'financial support for active membership in professional organizations;', 'ii-e-i73', 165, 166, 2, 4, 721, 'II-E-I.7.3'),
(732, 'II-E-I.7.4', 'deloading to finish the faculty\'s thesis/dissertation;', 'ii-e-i74', 167, 168, 2, 4, 721, 'II-E-I.7.4'),
(734, 'II-E-I.7.5', 'attendance in continuing professional education (CPE) programs such as seminars, workshops and conferences or some in-service training courses;', 'ii-e-i75', 169, 170, 2, 4, 721, 'II-E-I.7.5'),
(744, 'VII-D', 'Parameter D: Services and Utilization', 'vii-d', 172, 219, 8, 1, 551, 'VII-D'),
(745, 'VII-D-S', 'System - Inputs and Processes', 'vii-d-s', 215, 218, 8, 2, 744, 'VII-D-S'),
(746, 'VII-D-S.1', 'The Library has information services pertinent to the institution\'s requirements.', 'vii-d-s1', 216, 217, 8, 3, 745, 'VII-D-S.1'),
(747, 'VII-D-I', 'Implementation', 'vii-d-i', 173, 208, 8, 2, 744, 'VII-D-I'),
(748, 'VII-D-I.1', 'The following services/programs are provided:', 'vii-d-i1', 174, 199, 8, 3, 747, 'VII-D-I.1'),
(749, 'VII-D-I.1.1', 'functional and interactive library web page;', 'vii-d-i11', 175, 176, 8, 4, 748, 'VII-D-I.1.1'),
(750, 'VII-D-I.1.2', 'integrated library system;', 'vii-d-i12', 183, 184, 8, 4, 748, 'VII-D-I.1.2'),
(751, 'VII-D-I.1.3', 'online public access (OPAC);', 'vii-d-i13', 185, 186, 8, 4, 748, 'VII-D-I.1.3'),
(752, 'VII-D-I.1.4', 'circulation online;', 'vii-d-i14', 187, 188, 8, 4, 748, 'VII-D-I.1.4'),
(753, 'VII-D-I.1.5', 'computerized cataloging;', 'vii-d-i15', 189, 190, 8, 4, 748, 'VII-D-I.1.5'),
(754, 'VII-D-I.1.6', 'inventory reporting;', 'vii-d-i16', 191, 192, 8, 4, 748, 'VII-D-I.1.6'),
(755, 'VII-D-I.1.7', 'serials control;', 'vii-d-i17', 193, 194, 8, 4, 748, 'VII-D-I.1.7'),
(756, 'VII-D-I.1.8', 'internet searching;', 'vii-d-i18', 195, 196, 8, 4, 748, 'VII-D-I.1.8'),
(757, 'VII-D-I.1.9', 'CD-ROM;', 'vii-d-i19', 197, 198, 8, 4, 748, 'VII-D-I.1.9'),
(758, 'VII-D-I.1.10', 'online database;', 'vii-d-i110', 177, 178, 8, 4, 748, 'VII-D-I.1.10'),
(759, 'VII-D-I.1.11', 'photocopying; and', 'vii-d-i111', 179, 180, 8, 4, 748, 'VII-D-I.1.11'),
(760, 'II-E-I.7.6', 'conducting research activities related to the program;', 'ii-e-i76', 171, 172, 2, 4, 721, 'II-E-I.7.6'),
(761, 'II-E-I.7.7', 'publishing scholarly articles and research outputs;', 'ii-e-i77', 173, 174, 2, 4, 721, 'II-E-I.7.7'),
(762, 'II-E-I.7.8', 'production or instructional materials (Ims).', 'ii-e-i78', 175, 176, 2, 4, 721, 'II-E-I.7.8'),
(763, 'II-E-I.8', 'Opportunities for the faculty to attend/participate in capability-building and enhancing activities are fairly distributed.', 'ii-e-i8', 178, 179, 2, 3, 694, 'II-E-I.8'),
(764, 'II-E-I.9', 'Tuition fee privilege and other forms of assistance are utilized by faculty pursuing advanced (master\'s and/or doctoral) degrees.', 'ii-e-i9', 180, 181, 2, 3, 694, 'II-E-I.9'),
(765, 'II-E-I.10', 'Faculty are given incentives for book writing, manuals, handbooks, compilations and instructional materials to keep up with new knowledge and techniques in the field of specialization.', 'ii-e-i10', 148, 149, 2, 3, 694, 'II-E-I.10'),
(766, 'VII-A-O', 'Outcome', 'vii-a-o', 21, 22, 8, 2, 552, 'VII-A-O'),
(767, 'II-E-O', 'Outcome', 'ii-e-o', 183, 188, 2, 2, 683, 'II-E-O'),
(768, 'II-E-O.1', 'The faculty are well-trained and competent to serve the institution.', 'ii-e-o1', 184, 185, 2, 3, 767, 'II-E-O.1'),
(769, 'II-E-O.2', 'The faculty are committed to serve and support the programs and projects of the institution.', 'ii-e-o2', 186, 187, 2, 3, 767, 'II-E-O.2'),
(770, 'II-F', 'Parameter F: Professional Performance and Scholarly Works', 'ii-f', 200, 259, 2, 1, 20, 'II-F'),
(771, 'II-F-S', 'System - Inputs and Processes', 'ii-f-s', 249, 258, 2, 2, 770, 'II-F-S'),
(772, 'II-F-S.1', 'The institution has a system of evaluating the faculty on the following:', 'ii-f-s1', 250, 257, 2, 3, 771, 'II-F-S.1'),
(773, 'II-F-S.1.1', 'professional performance; and', 'ii-f-s11', 253, 254, 2, 4, 772, 'II-F-S.1.1'),
(774, 'II-F-S.1.2', 'scholarly works.', 'ii-f-s12', 255, 256, 2, 4, 772, 'II-F-S.1.2'),
(775, 'II-F-I', 'Implementation', 'ii-f-i', 201, 240, 2, 2, 770, 'II-F-I'),
(776, 'II-F-I.1', 'demonstrates skills and competence in all of the following:', 'ii-f-i1', 202, 219, 2, 3, 775, 'II-F-I.1'),
(777, 'II-F-I.1.1', 'knowledge of the program objectives/outcome(s);', 'ii-f-i11', 203, 204, 2, 4, 776, 'II-F-I.1.1'),
(778, 'II-F-I.1.2', 'reflecting the program outcomes in the course objectives;', 'ii-f-i12', 205, 206, 2, 4, 776, 'II-F-I.1.2'),
(780, 'II-F-I.1.3', 'knowledge /mastery of the content, issues and methodologies in the discipline;', 'ii-f-i13', 207, 208, 2, 4, 776, 'II-F-I.1.3'),
(781, 'II-F-I.1.4', 'proficienncy in the use of the language of instruction;', 'ii-f-i14', 209, 210, 2, 4, 776, 'II-F-I.1.4'),
(782, 'II-F-I.1.5', 'the use of higher order thinking skills such as analytical, critical, creative and innovative and problem-solving;', 'ii-f-i15', 211, 212, 2, 4, 776, 'II-F-I.1.5'),
(783, 'II-F-I.1.6', 'innovativeness and resourcefulness in the different instructional processes; and', 'ii-f-i16', 213, 214, 2, 4, 776, 'II-F-I.1.6'),
(784, 'II-F-I.1.7', 'integration of values and work ethics in the teaching-learning process; and', 'ii-f-i17', 215, 216, 2, 4, 776, 'II-F-I.1.7'),
(785, 'II-F-I.1.8', 'integration of Gender and Development (GAD) activities.', 'ii-f-i18', 217, 218, 2, 4, 776, 'II-F-I.1.8'),
(786, 'II-F-I.2', 'promptly submit the required reports and other academic outputs.', 'ii-f-i2', 224, 225, 2, 3, 775, 'II-F-I.2'),
(787, 'II-F-I.3', 'update lecture notes through an interface of relevant research findings and new knowledge.', 'ii-f-i3', 226, 227, 2, 3, 775, 'II-F-I.3'),
(788, 'II-F-I.4', 'serve as resource person/lecturer/consultant in the fields of Information Technology Education.', 'ii-f-i4', 228, 229, 2, 3, 775, 'II-F-I.4'),
(789, 'II-F-I.5', 'present papers in local/regional/national and/or international for a.', 'ii-f-i5', 230, 231, 2, 3, 775, 'II-F-I.5'),
(790, 'II-F-I.6', 'publish papers in regional, national and international magazines and journals.', 'ii-f-i6', 232, 233, 2, 3, 775, 'II-F-I.6'),
(791, 'II-F-I.7', 'conduct research and publish outputs in refereed journals of national and international circulation.', 'ii-f-i7', 234, 235, 2, 3, 775, 'II-F-I.7'),
(792, 'II-F-I.8', 'conduct extension and outreach activities.', 'ii-f-i8', 236, 237, 2, 3, 775, 'II-F-I.8'),
(793, 'II-F-I.9', 'regularly update respective course syllabi.', 'ii-f-i9', 238, 239, 2, 3, 775, 'II-F-I.9'),
(794, 'II-F-I.10', 'utilize ICT and other resources in the enhancement of the teaching-learning process.', 'ii-f-i10', 220, 221, 2, 3, 775, 'II-F-I.10'),
(795, 'II-F-I.11', 'produce instructional materials, e.g. workbooks, manuals, modules, audio-visual aids, etc.to facilitate teaching and learning.', 'ii-f-i11_1', 222, 223, 2, 3, 775, 'II-F-I.11'),
(796, 'II-F-O', 'Outcome', 'ii-f-o', 241, 248, 2, 2, 770, 'II-F-O'),
(798, 'II-G', 'Parameter G: Salaries, Fringe Benefits, and Incentives', 'ii-g', 260, 313, 2, 1, 20, 'II-G'),
(799, 'II-G-S', 'System - Inputs and Processes', 'ii-g-s', 309, 312, 2, 2, 798, 'II-G-S'),
(800, 'II-G-S.1', 'The institution has a system of compensation and rewards to its faculty and staff.', 'ii-g-s1', 310, 311, 2, 3, 799, 'II-G-S.1'),
(801, 'II-G-I', 'Implementation', 'ii-g-i', 261, 304, 2, 2, 798, 'II-G-I'),
(802, 'II-G-I.1', 'The following fringe benefits are granted:', 'ii-g-i1', 262, 293, 2, 3, 801, 'II-G-I.1'),
(803, 'II-G-I.1.1', 'maternity leave/paternity leave with pay;', 'ii-g-i11', 263, 264, 2, 4, 802, 'II-G-I.1.1'),
(804, 'II-G-I.1.2', 'sick leave;', 'ii-g-i12', 277, 278, 2, 4, 802, 'II-G-I.1.2'),
(805, 'II-G-I.1.3', 'study leave (with or without pay;', 'ii-g-i13', 279, 280, 2, 4, 802, 'II-G-I.1.3'),
(806, 'II-G-I.1.4', 'vacation leave;', 'ii-g-i14', 281, 282, 2, 4, 802, 'II-G-I.1.4'),
(807, 'II-G-I.1.5', 'tuition fee discount for faculty and their dependents;', 'ii-g-i15', 283, 284, 2, 4, 802, 'II-G-I.1.5'),
(808, 'II-G-I.1.6', 'clothing/uniform allowance;', 'ii-g-i16', 285, 286, 2, 4, 802, 'II-G-I.1.6'),
(809, 'II-G-I.1.7', 'performance based bonus (PBB)', 'ii-g-i17', 287, 288, 2, 4, 802, 'II-G-I.1.7'),
(810, 'II-G-I.1.8', 'anniversary bonus;', 'ii-g-i18', 289, 290, 2, 4, 802, 'II-G-I.1.8'),
(811, 'II-G-I.1.9', 'honoraria/incentive for conducting research or for the production of scholarly works;', 'ii-g-i19', 291, 292, 2, 4, 802, 'II-G-I.1.9'),
(812, 'II-G-I.1.10', 'housing privilege; (optional)', 'ii-g-i110', 265, 266, 2, 4, 802, 'II-G-I.1.10'),
(813, 'II-G-I.1.11', 'sabbatical leave;', 'ii-g-i111', 267, 268, 2, 4, 802, 'II-G-I.1.11'),
(814, 'II-G-I.1.12', 'compensatory leave credit;', 'ii-g-i112', 269, 270, 2, 4, 802, 'II-G-I.1.12'),
(815, 'II-G-I.1.13', 'deloading to finish thesis/dissertation;', 'ii-g-i113', 271, 272, 2, 4, 802, 'II-G-I.1.13'),
(816, 'II-G-I.1.14', 'thesis/dissertation aid; and', 'ii-g-i114', 273, 274, 2, 4, 802, 'II-G-I.1.14'),
(817, 'II-G-I.1.15', 'others, (please specify).', 'ii-g-i115', 275, 276, 2, 4, 802, 'II-G-I.1.15'),
(818, 'II-G-I.2', 'Policies on salaries/benefits and other privileges are disseminated to the faculty.', 'ii-g-i2', 294, 295, 2, 3, 801, 'II-G-I.2'),
(819, 'II-G-I.3', 'Salaries are paid regularly and promptly.', 'ii-g-i3', 296, 297, 2, 3, 801, 'II-G-I.3'),
(820, 'II-G-I.4', 'Teaching assignments beyond the regular load are compensated (e.g. overload pay, service credits, etc.)', 'ii-g-i4', 298, 299, 2, 3, 801, 'II-G-I.4'),
(821, 'VII-B', 'Parameter B: Administrative Staff', 'vii-b', 100, 127, 8, 1, 551, 'VII-B'),
(822, 'II-G-I.5', 'Faculty who are actually involved in the production of scholarly materials are given credits for their work.', 'ii-g-i5', 300, 301, 2, 3, 801, 'II-G-I.5'),
(823, 'II-G-I.6', 'Faculty with outstanding performance are given recognition/awards and incentives.', 'ii-g-i6', 302, 303, 2, 3, 801, 'II-G-I.6'),
(824, 'II-G-O', 'Outcome', 'ii-g-o', 305, 308, 2, 2, 798, 'II-G-O'),
(825, 'IX-A-S.6', 'There is a computer laboratory with at least 15 usable computer units and a printer.', 'ix-a-s6', 44, 45, 5, 3, 440, 'IX-A-S.6'),
(826, 'II-G-O.1', 'The faculty are satisfied with their compensation and rewards.', 'ii-g-o1', 306, 307, 2, 3, 824, 'II-G-O.1'),
(827, 'VII-B-S', 'System - Inputs and Processes', 'vii-b-s', 111, 126, 8, 2, 821, 'VII-BVII-B-S'),
(828, 'II-H', 'Parameter H: Professionalism', 'ii-h', 314, 363, 2, 1, 20, 'II-H'),
(829, 'VII-B-S.1', 'The library has staff with the following qualifications:', 'vii-b-s1', 112, 117, 8, 3, 827, 'VII-B-S.1'),
(830, 'II-H-S', 'System - Inputs and Processes', 'ii-h-s', 359, 362, 2, 2, 828, 'II-H-S'),
(831, 'II-H-S.1', 'There are approved SUC Code and SUC Faculty Manual that define the policies, guidelines, rules and regulations affecting the faculty.', 'ii-h-s1', 360, 361, 2, 3, 830, 'II-H-S.1'),
(832, 'VII-B-S.1.1', 'BS in Library and Information Science for the College/Academic Unit Library; and', 'vii-b-s11', 113, 114, 8, 4, 829, 'VII-B-S.1.1'),
(833, 'II-H-I', 'Implementation\r\nThe Faculty', 'ii-h-i', 315, 354, 2, 2, 828, 'II-H-I'),
(834, 'VII-B-S.1.2', 'MS in Library and Infrormation Science or MAED/MA in Library Science for the Institution.', 'vii-b-s12', 115, 116, 8, 4, 829, 'VII-B-S.1.2'),
(835, 'II-H-I.1', 'responsibly observe the following:', 'ii-h-i1', 316, 329, 2, 3, 833, 'II-H-I.1'),
(837, 'VII-B-S.2', 'The library meets the required number of qualified and licensed librarians and staff to meet the needs of the school population with the ratio of:', 'vii-b-s2', 118, 123, 8, 3, 827, 'VII-B-S.2'),
(839, 'VII-B-S.2.1', 'one (1) Licensed Librarian with two (2) full-time staf for the first 500 - student population; and', 'vii-b-s21', 119, 120, 8, 4, 837, 'VII-B-S.2.1'),
(840, 'VII-B-S.2.2', 'one (1) additional fulll time Professional Librarian with one (1) full time staff for every additional 1,000 students.', 'vii-b-s22', 121, 122, 8, 4, 837, 'VII-B-S.2.2'),
(841, 'VII-B-S.3', 'There is a continuing staff development program with the corresponding financial assistance from the institution.', 'vii-b-s3', 124, 125, 8, 3, 827, 'VII-B-S.3'),
(842, 'VII-B-I', 'Implementation', 'vii-b-i', 101, 104, 8, 2, 821, 'VII-B-I'),
(843, 'II-H-I.1.3', 'completio of assigned tasks on time;', 'ii-h-i13', 323, 324, 2, 4, 835, 'II-H-I.1.3'),
(844, 'VII-B-I.1', 'The library staff compensation, retirement, and fringe benefits, as well as other privileges, are granted in accordance with es=xisting government laws and institutional policies.', 'vii-b-i1', 102, 103, 8, 3, 842, 'VII-B-I.1'),
(845, 'II-H-I.1.2', 'participation in faculty meetings and university/college activities;', 'ii-h-i12', 321, 322, 2, 4, 835, 'II-H-I.1.2'),
(846, 'II-H-I.1.1', 'regular and prompt attendance to classes;', 'ii-h-i11', 319, 320, 2, 4, 835, 'II-H-I.1.1'),
(847, 'II-H-I.1.4', 'submission of all required reports promptly; and', 'ii-h-i14', 325, 326, 2, 4, 835, 'II-H-I.1.4'),
(848, 'II-H-I.1.5', 'decorum at all times.', 'ii-h-i15', 327, 328, 2, 4, 835, 'II-H-I.1.5'),
(849, 'II-H-I.2', 'follow the Code of Ethics of the Profession and the Code of Ethical Standards for Government Officials and Employees (RA 6713).', 'ii-h-i2', 332, 333, 2, 3, 833, 'II-H-I.2'),
(850, 'II-H-I.3', 'exercise academic freedom judiciously.', 'ii-h-i3', 334, 335, 2, 3, 833, 'II-H-I.3'),
(851, 'II-H-I.4', 'show commitment and loyalty to the institution as evidenced by:', 'ii-h-i4', 336, 345, 2, 3, 833, 'II-H-I.4'),
(852, 'II-H-I.4.1', 'observance of official time;', 'ii-h-i41', 337, 338, 2, 4, 851, 'II-H-I.4.1'),
(853, 'II-H-I.4.2', 'productive use of official time;', 'ii-h-i42', 339, 340, 2, 4, 851, 'II-H-I.4.2'),
(854, 'II-H-I.4.3', 'performance of tasks and assignments, with or without compensation; and', 'ii-h-i43', 341, 342, 2, 4, 851, 'II-H-I.4.3'),
(855, 'II-H-I.4.4', 'compliance with terms of agreement/contracts (e.g., scholarship and training).', 'ii-h-i44', 343, 344, 2, 4, 851, 'II-H-I.4.4'),
(856, 'II-H-I.5', 'maintain harmonious interpersonal relations with superiors, peers, students, parents and the community.', 'ii-h-i5', 346, 347, 2, 3, 833, 'II-H-I.5'),
(857, 'II-H-I.6', 'demonstrate knowledge of recent educational trends/issues/resources in the field of Information Technology Education.', 'ii-h-i6', 348, 349, 2, 3, 833, 'II-H-I.6'),
(858, 'II-H-I.7', 'show evidence of professional growth through further and continuing studies.', 'ii-h-i7', 350, 351, 2, 3, 833, 'II-H-I.7'),
(859, 'II-H-I.8', 'engage in practices which enable the faculty to demonstrate harmonious interpersonal relations with the students, parents and the community.', 'ii-h-i8', 352, 353, 2, 3, 833, 'II-H-I.8'),
(860, 'II-H-O', 'Outcome', 'ii-h-o', 355, 358, 2, 2, 828, 'II-H-O'),
(861, 'II-H-O.1', 'The corps of faculty manifests a commendable level of professionalism.', 'ii-h-o1', 356, 357, 2, 3, 860, 'II-H-O.1'),
(862, 'II-F-O.1', 'The faculty performance is generally satisfactory.', 'ii-f-o1', 244, 245, 2, 3, 796, 'II-F-O.1'),
(863, 'II-F-O.2', 'The scholarly works of the faculty is commendable.', 'ii-f-o2', 246, 247, 2, 3, 796, 'II-F-O.2'),
(864, 'V-C-I.1', 'The institution/College/Academic Unit has a research Unit managed by competent staff.', 'v-c-i1', 70, 71, 6, 3, 526, 'V-C-I.1'),
(865, 'VIII', 'Physical Plant and Facilities', 'viii', 1, 396, 12, 0, NULL, 'VIII'),
(866, 'VIII-A', 'Parameter A: Campus', 'viii-a', 2, 45, 12, 1, 865, 'VIII-A'),
(867, 'VII-C', 'Parameter C: Collection Development, Organization and Preservation', 'vii-c', 128, 171, 8, 1, 551, 'VII-C'),
(868, 'X-C-I.2', 'Concerned officials, faculty and staff act promptly on requests, needs, and problems of the students.', 'x-c-i2', 94, 95, 21, 3, 366, 'X-C-I.2'),
(869, 'X-C-I.3', 'The administration, faculty, staff and students work harmoniously and maintain good relationship.', 'x-c-i3', 96, 97, 21, 3, 366, 'X-C-I.3'),
(870, 'X-C-O', 'Outcome', 'x-c-o', 99, 104, 21, 2, 351, 'X-C-O'),
(871, 'VII-C-S', 'System - Inputs and Processes', 'vii-c-s', 153, 170, 8, 2, 867, 'VII-C-S'),
(872, 'X-C-O.1', 'The institution has an effective and functional Student Administration.', 'x-c-o1', 100, 101, 21, 3, 870, 'X-C-O.1'),
(873, 'VII-C-S.1', 'There is a written Collection Development Policy.', 'vii-c-s1', 154, 155, 8, 3, 871, 'VII-C-S.1'),
(874, 'X-C-O.2', 'Policy implementation is efficient.', 'x-c-o2', 102, 103, 21, 3, 870, 'X-C-O.2'),
(875, 'VIII-A-S', 'System - Inputs and Processes', 'viii-a-s', 23, 44, 12, 2, 866, 'VIII-A-S'),
(876, 'VII-C-S.2', 'There is a core collection of at least:', 'vii-c-s2', 156, 161, 8, 3, 871, 'VII-C-S.2'),
(877, 'VII-C-S.2.1', '5,000 titles for the Academic Unit Library; or', 'vii-c-s21', 157, 158, 8, 4, 876, 'VII-C-S.2.1'),
(878, 'VIII-A-S.1', 'There is a Site Development Plan, and program of implementation.', 'viii-a-s1', 24, 25, 12, 3, 875, 'VIII-A-S.1'),
(879, 'VII-C-S.2.2', '10, 000 titles that support the instruction, research and other programs for an Institution Library.', 'vii-c-s22', 159, 160, 8, 4, 876, 'VII-C-S.2.2'),
(880, 'VIII-A-S.2', 'The Campus has accessible good roads and pathways.', 'viii-a-s2', 26, 27, 12, 3, 875, 'VIII-A-S.2'),
(881, 'VII-C-S.3', 'Twenty percent (20%) of the library holdings are of current edition, i.e. with copyright within the last 5 years.', 'vii-c-s3', 162, 163, 8, 3, 871, 'VII-C-S.3'),
(882, 'VIII-A-S.3', 'The campus is in a well-planned, clean and properly landscaped environment.', 'viii-a-s3', 28, 29, 12, 3, 875, 'VIII-A-S.3'),
(883, 'VIII-A-S.4', 'There is a system to ensure that all of the following are provided:', 'viii-a-s4', 30, 39, 12, 3, 875, 'VIII-A-S.4'),
(884, 'X-D', 'Parameter D: Financial Management', 'x-d', 134, 199, 21, 1, 306, 'X-D'),
(885, 'VII-C-S.4', 'The Non-print, digital and electronic resources are available.', 'vii-c-s4', 164, 165, 8, 3, 871, 'VII-C-S.4'),
(886, 'X-D-S', 'System - Inputs and Processes', 'x-d-s', 183, 198, 21, 2, 884, 'X-D-S'),
(887, 'X-D-S.1', 'The institution has an approved Financial Development Plan (FDP).', 'x-d-s1', 184, 185, 21, 3, 886, 'X-D-S.1'),
(888, 'X-D-S.2', 'The approved budget is in consonance with the FDP.', 'x-d-s2', 186, 187, 21, 3, 886, 'X-D-S.2'),
(889, 'X-D-S.3', 'The institution has specific budgetary allotment for the  following:', 'x-d-s3', 188, 197, 21, 3, 886, 'X-D-S.3'),
(890, 'VIII-A-S.4.1', 'traffic safety in and outside the campus;', 'viii-a-s41', 31, 32, 12, 4, 883, 'VIII-A-S.4.1'),
(891, 'X-D-S.3.1', 'personnel services;', 'x-d-s31', 189, 190, 21, 4, 889, 'X-D-S.3.1'),
(892, 'VIII-A-S.4.2', 'waste management program;', 'viii-a-s42', 33, 34, 12, 4, 883, 'VIII-A-S.4.2'),
(893, 'X-D-S.3.2', 'Maintenance and Other Operating Expenses (MOOE);', 'x-d-s32', 191, 192, 21, 4, 889, 'X-D-S.3.2'),
(894, 'VIII-A-S.4.3', 'proper utitlization, repair and upkeep of school facilities and equipment; and', 'viii-a-s43', 35, 36, 12, 4, 883, 'VIII-A-S.4.3'),
(895, 'X-D-S.3.3', 'capital outlay; and', 'x-d-s33', 193, 194, 21, 4, 889, 'X-D-S.3.3'),
(896, 'X-D-S.3.4', 'special project.', 'x-d-s34', 195, 196, 21, 4, 889, 'X-D-S.3.4'),
(897, 'VII-C-S.5', 'There is an integrated library system.', 'vii-c-s5', 166, 167, 8, 3, 871, 'VII-C-S.5'),
(898, 'X-D-I', 'Implementation', 'x-d-i', 135, 178, 21, 2, 884, 'X-D-I'),
(899, 'VII-C-S.6', 'There are provisions for the preservation, general care, and upkeep of library resources.', 'vii-c-s6', 168, 169, 8, 3, 871, 'VII-C-S.6'),
(900, 'VIII-A-S.4.4', 'cleanliness and orderliness of the school campus.', 'viii-a-s44', 37, 38, 12, 4, 883, 'VIII-A-S.4.4'),
(901, 'X-D-I.1', 'The institution maintains a Financial Management Office managed by qualified and competent personnel.', 'x-d-i1', 136, 137, 21, 3, 898, 'X-D-I.1'),
(902, 'VII-C-I', 'Implementation', 'vii-c-i', 129, 146, 8, 2, 867, 'VII-C-I'),
(903, 'X-D-I.2', 'The financial management personnel are responsible for the efficient management of financial resources/funds of the institution.', 'x-d-i2', 138, 139, 21, 3, 898, 'X-D-I.2'),
(904, 'VIII-A-S.5', 'An area for outdoor educational activities, e.g. social, physical, athletic, cultural, military training, etc.exists.', 'viii-a-s5', 40, 41, 12, 3, 875, 'VIII-A-S.5'),
(905, 'X-D-I.3', 'The administrative, faculty staff and student representatives participate in the budget preparation and in the procurement program of the institution.', 'x-d-i3', 140, 141, 21, 3, 898, 'X-D-I.3'),
(906, 'VII-C-I.1', 'The Collection Development Policy is regularly reviewed and evaluated by the Library Committee.', 'vii-c-i1', 130, 131, 8, 3, 902, 'VII-C-I.1'),
(907, 'VIII-A-S.6', 'There is a campus security unit that ensures safety of the academic community.', 'viii-a-s6', 42, 43, 12, 3, 875, 'VIII-A-S.6'),
(908, 'X-D-I.4', 'The budget of the institution is fairly and objectively allocated.', 'x-d-i4', 142, 143, 21, 3, 898, 'X-D-I.4'),
(909, 'VII-C-I.2', 'The library collection and services support the mission and vision of the institution, goals of the Academic Unit and objectives of the Program.', 'vii-c-i2', 132, 133, 8, 3, 902, 'VII-C-I.2'),
(910, 'VII-C-I.3', 'The library provides sufficient research books and materials to supplement the clients\' curricular needs.', 'vii-c-i3', 134, 135, 8, 3, 902, 'VII-C-I.3'),
(911, 'X-D-I.5', 'The institution allocates funds for the following student services and activities:', 'x-d-i5', 144, 175, 21, 3, 898, 'X-D-I.5'),
(912, 'VII-C-I.4', 'The library maintains an extensive (15% of the total) Filipiniana collection.', 'vii-c-i4', 136, 137, 8, 3, 902, 'VII-C-I.4'),
(913, 'VIII-A-I', 'Implementation', 'viii-a-i', 3, 14, 12, 2, 866, 'VIII-A-I'),
(914, 'X-D-I.5.1', 'cultural development;', 'x-d-i51', 145, 146, 21, 4, 911, 'X-D-I.5.1'),
(915, 'VII-C-I.5', 'The library provides 3-5 book/journal titles for fprofessional subjects in the major fields of specialization.', 'vii-c-i5', 138, 139, 8, 3, 902, 'VII-C-I.5'),
(916, 'X-D-I.5.2', 'athletic and sports development;', 'x-d-i52', 159, 160, 21, 4, 911, 'X-D-I.5.2'),
(917, 'VII-C-I.6', 'The collection is organized according to an accepted scheme of classification and standard code of cataloging.', 'vii-c-i6', 140, 141, 8, 3, 902, 'VII-C-I.6'),
(918, 'X-D-I.5.3', 'medical and dental services;', 'x-d-i53', 161, 162, 21, 4, 911, 'X-D-I.5.3'),
(919, 'VII-C-I.7', 'Regular weeding-out program is sonducted to maintain a relevant and updated collection.', 'vii-c-i7', 142, 143, 8, 3, 902, 'VII-C-I.7'),
(920, 'X-D-I.5.4', 'library;', 'x-d-i54', 163, 164, 21, 4, 911, 'X-D-I.5.4'),
(921, 'VII-C-I.8', 'The quality and quantity of library materials and resources conform with the standards set for a particular academic program.', 'vii-c-i8', 144, 145, 8, 3, 902, 'VII-C-I.8'),
(922, 'VIII-A-I.1', 'The site infrastructure development plan is implemented as planned.', 'viii-a-i1', 4, 5, 12, 3, 913, 'VIII-A-I.1'),
(923, 'X-D-I.5.5', 'student body organization;', 'x-d-i55', 165, 166, 21, 4, 911, 'X-D-I.5.5'),
(924, 'VII-C-O', 'Outcome', 'vii-c-o', 147, 152, 8, 2, 867, 'VII-C-O'),
(925, 'X-D-I.5.6', 'guidance and counseling;', 'x-d-i56', 167, 168, 21, 4, 911, 'X-D-I.5.6'),
(926, 'VII-C-O.1', 'The library core collection is adequate, updated and well-balanced.', 'vii-c-o1', 148, 149, 8, 3, 924, 'VII-C-O.1'),
(927, 'X-D-I.5.7', 'improvement of laboratories/shops;', 'x-d-i57', 169, 170, 21, 4, 911, 'X-D-I.5.7'),
(928, 'X-D-I.5.8', 'repair and maintenance of facilities and equipment;', 'x-d-i58', 171, 172, 21, 4, 911, 'X-D-I.5.8'),
(929, 'VII-C-O.2', 'The professional books, journals and electronic resources for the program are sufficient.', 'vii-c-o2', 150, 151, 8, 3, 924, 'VII-C-O.2'),
(930, 'X-D-I.5.9', 'purchase of new equipment, supplies and materials;', 'x-d-i59', 173, 174, 21, 4, 911, 'X-D-I.5.9');
INSERT INTO `accreapp_category` (`id`, `code`, `description`, `slug`, `lft`, `rght`, `tree_id`, `level`, `parent_id`, `name`) VALUES
(931, 'X-D-I.5.10', 'replacement of old and unserviceable equipment;', 'x-d-i510', 147, 148, 21, 4, 911, 'X-D-I.5.10'),
(932, 'X-D-I.5.11', 'construction of new facilities; as needed', 'x-d-i511', 149, 150, 21, 4, 911, 'X-D-I.5.11'),
(933, 'VIII-A-I.2', 'The site plan is strategeically displayed inside the campus indicating the location of the different buildings, driveways, parking areas, etc.', 'viii-a-i2', 6, 7, 12, 3, 913, 'VIII-A-I.2'),
(934, 'X-D-I.5.12', 'improvement/expansion of physical plant;', 'x-d-i512', 151, 152, 21, 4, 911, 'X-D-I.5.12'),
(935, 'VIII-A-I.3', 'The infrastructure development plan is implemented in accordance with approved zoning ordinances.', 'viii-a-i3', 8, 9, 12, 3, 913, 'VIII-A-I.3'),
(936, 'X-D-I.5.13', 'extension and community service;', 'x-d-i513', 153, 154, 21, 4, 911, 'X-D-I.5.13'),
(937, 'VIII-A-I.4', 'Coverred walks are provided to protect the academic communicaty from inclement weather.', 'viii-a-i4', 10, 11, 12, 3, 913, 'VIII-A-I.4'),
(938, 'X-D-I.5.14', 'disaster and risk reduction and', 'x-d-i514', 155, 156, 21, 4, 911, 'X-D-I.5.14'),
(939, 'VIII-A-I.5', 'The institution implements a Waste Management Program.', 'viii-a-i5', 12, 13, 12, 3, 913, 'VIII-A-I.5'),
(940, 'X-D-I.5.15', 'auxiliary services.', 'x-d-i515', 157, 158, 21, 4, 911, 'X-D-I.5.15'),
(941, 'X-D-I.6', 'The budget for specific expenditures indicated in item 1.5 is allocated in consonance with existing policies and guidelines.', 'x-d-i6', 176, 177, 21, 3, 898, 'X-D-I.6'),
(942, 'X-D-O', 'Outcome', 'x-d-o', 179, 182, 21, 2, 884, 'X-D-O'),
(943, 'X-D-O.1', 'The institution has a sound and effective financial management system.', 'x-d-o1', 180, 181, 21, 3, 942, 'X-D-O.1'),
(944, 'X-E', 'Parameter E: Supply Management', 'x-e', 200, 227, 21, 1, 306, 'X-E'),
(945, 'VIII-A-O', 'Outcome', 'viii-a-o', 15, 22, 12, 2, 866, 'VIII-A-O'),
(946, 'VIII-A-O.1', 'The Campus environemnt is conducive to all educational activities.', 'viii-a-o1', 16, 17, 12, 3, 945, 'VIII-A-O.1'),
(947, 'VIII-A-O.2', 'The site can accommodate its present school population and future expansion.', 'viii-a-o2', 18, 19, 12, 3, 945, 'VIII-A-O.2'),
(948, 'VIII-A-O.3', 'The campus is safe and well-maintained.', 'viii-a-o3', 20, 21, 12, 3, 945, 'VIII-A-O.3'),
(949, 'X-E-S', 'System - Inputs and Processes', 'x-e-s', 219, 226, 21, 2, 944, 'X-E-S'),
(950, 'X-E-S.1', 'The institution has an approved procurement management system in consonance with the Revised IRR of RA 9184 (Government Procurement Reform Act).', 'x-e-s1', 220, 221, 21, 3, 949, 'X-E-S.1'),
(951, 'X-E-S.2', 'The institution has a system for proper disposal on non-serviceable and condemned equipment, supplies and materials.', 'x-e-s2', 222, 223, 21, 3, 949, 'X-E-S.2'),
(952, 'VIII-B', 'Parameter B: Buildings', 'viii-b', 46, 101, 12, 1, 865, 'VIII-B'),
(953, 'X-E-S.3', 'The office has a storeroom for keeping and securing all equipment, supplies and materials purchased.', 'x-e-s3', 224, 225, 21, 3, 949, 'X-E-S.3'),
(954, 'VIII-B-S', 'System - Inputs and Processes', 'viii-b-s', 71, 100, 12, 2, 952, 'VIII-B-S'),
(955, 'X-E-I', 'Implementation', 'x-e-i', 201, 212, 21, 2, 944, 'X-E-I'),
(956, 'X-E-I.1', 'The institution maintains a Supply Management Office (SMO) managed by qualified staff with specific functions and responsibilities.', 'x-e-i1', 202, 203, 21, 3, 955, 'X-E-I.1'),
(957, 'X-E-I.2', 'The Bids and awards Committee (BAC) is responsible for the procurement and deliveries of needed equipment, supplies and materials in accordance with the approved Annual Procurement Plan (APP) and Project Procurement Management Plan (PPMP).', 'x-e-i2', 204, 205, 21, 3, 955, 'X-E-I.2'),
(958, 'VIII-B-S.1', 'The building meet all requirements of the Building Code.  Acertificate of Occupancy for each building is conspicuously displayed.', 'viii-b-s1', 72, 73, 12, 3, 954, 'VIII-B-S.1'),
(959, 'X-E-I.3', 'The BAC perform its tasks and responsibilities in accordance with recent procurement policies and official issuances.', 'x-e-i3', 206, 207, 21, 3, 955, 'X-E-I.3'),
(960, 'X-E-I.4', 'The SMO prepares, evalautes, and submits the annual inventory of serviceable and non-serviceable facilities and equipment.', 'x-e-i4', 208, 209, 21, 3, 955, 'X-E-I.4'),
(961, 'VIII-B-S.2', 'The buildings are constructed according to their respective uses.', 'viii-b-s2', 84, 85, 12, 3, 954, 'VIII-B-S.2'),
(962, 'VII-D-I.1.12', 'bar coding.', 'vii-d-i112', 181, 182, 8, 4, 748, 'VII-D-I.1.12'),
(963, 'VIII-B-S.3', 'The buildings are well-planned and appropriately located to provide for future expansion.', 'viii-b-s3', 86, 87, 12, 3, 954, 'VIII-B-S.3'),
(964, 'X-E-I.5', 'All approved requests for procurment are published with the Philippine Government Electronic Procurement System (PhilGEPS).', 'x-e-i5', 210, 211, 21, 3, 955, 'X-E-I.5'),
(965, 'X-E-O', 'Outcome', 'x-e-o', 213, 218, 21, 2, 944, 'X-E-O'),
(966, 'VIII-B-S.4', 'Entry and exit points permit the use of the buildings for public and other functions with minimum interference to school activities.', 'viii-b-s4', 88, 89, 12, 3, 954, 'VIII-B-S.4'),
(967, 'VII-D-I.2', 'The library opens at least 54 hours per week for the College/Academic Unit or 60 hours per week for the institution.', 'vii-d-i2', 200, 201, 8, 3, 747, 'VII-D-I.2'),
(968, 'VIII-B-S.5', 'Emergency exits are provided and properly marked.', 'viii-b-s5', 90, 91, 12, 3, 954, 'VIII-B-S.5'),
(969, 'X-E-O.1', 'The institution has an efficient and effective Supply Managemet System.', 'x-e-o1', 214, 215, 21, 3, 965, 'X-E-O.1'),
(970, 'VII-D-I.3', 'The library promotes and disseminates its program through a regular announcement of its new acquisitions of print materials (books, journals, magazines), resources, facilities, and services.', 'vii-d-i3', 202, 203, 8, 3, 747, 'VII-D-I.3'),
(971, 'VIII-B-S.6', 'The buildings are equipped with emergency/fire escapes which are readily accessible.', 'viii-b-s6', 92, 93, 12, 3, 954, 'VIII-B-S.6'),
(972, 'VIII-B-S.7', 'The corridors, doorways, and alleys are well-constructed for better mobility.', 'viii-b-s7', 94, 95, 12, 3, 954, 'VIII-B-S.7'),
(973, 'VII-D-I.4', 'Librarians and staff are available during library hours to assist and provide library services.', 'vii-d-i4', 204, 205, 8, 3, 747, 'VII-D-I.4'),
(974, 'X-E-O.2', 'All procurement transactions are transparent.', 'x-e-o2', 216, 217, 21, 3, 965, 'X-E-O.2'),
(975, 'VII-D-I.5', 'Statistical data on the utilization of various resources and services are compiled and used to improve the library collection and operations.', 'vii-d-i5', 206, 207, 8, 3, 747, 'VII-D-I.5'),
(976, 'X-F', 'Parameter F: Records Management', 'x-f', 228, 285, 21, 1, 306, 'X-F'),
(977, 'X-F-S', 'System - Inputs and Processes', 'x-f-s', 277, 284, 21, 2, 976, 'X-F-S'),
(978, 'VII-D-O', 'Outcome', 'vii-d-o', 209, 214, 8, 2, 744, 'VII-D-O'),
(979, 'X-F-S.1', 'The institution has a system of records keeping.', 'x-f-s1', 278, 279, 21, 3, 977, 'X-F-S.1'),
(980, 'VII-D-O.1', 'The library services are efficiently and effectively provided.', 'vii-d-o1', 210, 211, 8, 3, 978, 'VII-D-O.1'),
(981, 'VII-D-O.2', 'The library users are highly satisfied with library services.', 'vii-d-o2', 212, 213, 8, 3, 978, 'VII-D-O.2'),
(982, 'X-F-S.2', 'The institution has policies and procedures to ensure the security and confidentiality of records.', 'x-f-s2', 280, 281, 21, 3, 977, 'X-F-S.2'),
(983, 'VII-E', 'Parameter E: physical Set-up and Facilities', 'vii-e', 220, 295, 8, 1, 551, 'VII-E'),
(984, 'VIII-B-S.8', 'The buildings are well-ventilated and lighted.', 'viii-b-s8', 96, 97, 12, 3, 954, 'VIII-B-S.8'),
(985, 'VII-E-S', 'System - Inputs and Processes', 'vii-e-s', 231, 294, 8, 2, 983, 'VII-E-S'),
(986, 'VIII-B-S.9', 'The buildings have facilities for persons with disability (PWDs) as provided by law.', 'viii-b-s9', 98, 99, 12, 3, 954, 'VIII-B-S.9'),
(987, 'VIII-B-S.10', 'There is a central signal and fire alarm system.', 'viii-b-s10', 74, 75, 12, 3, 954, 'VIII-B-S.10'),
(988, 'VII-E-S.1', 'The library is strategically located and accessible to students, faculty and other clientele.', 'vii-e-s1', 232, 233, 8, 3, 985, 'VII-E-S.1'),
(989, 'VIII-B-S.11', 'There are readily accessible and functional fire extinguishers and other fire-fighting equipment.', 'viii-b-s11', 76, 77, 12, 3, 954, 'VIII-B-S.11'),
(990, 'VII-E-S.2', 'The library is systematically planned to allow future expansion.', 'vii-e-s2', 244, 245, 8, 3, 985, 'VII-E-S.2'),
(991, 'VIII-B-S.12', 'Bulleting boards, display boards, waste disposal containers and other amenities are strategically located inside the buildings.', 'viii-b-s12', 78, 79, 12, 3, 954, 'VIII-B-S.12'),
(992, 'VIII-B-S.13', 'There are faculty rooms and offices.', 'viii-b-s13', 80, 81, 12, 3, 954, 'VIII-B-S.13'),
(993, 'VII-E-S.3', 'The size of the library meets standard requirements considering present enrollment and future expansion.', 'vii-e-s3', 246, 247, 8, 3, 985, 'VII-E-S.3'),
(994, 'VIII-B-S.14', 'The buildings are insured.', 'viii-b-s14', 82, 83, 12, 3, 954, 'VIII-B-S.14'),
(995, 'VII-E-S.4', 'The reading room can accommodate at least 10% of the school enrollment at any given time.', 'vii-e-s4', 248, 249, 8, 3, 985, 'VII-E-S.4'),
(996, 'VII-E-S.5', 'Space is provided for print resources as well as work stations for electronic resources.', 'vii-e-s5', 250, 251, 8, 3, 985, 'VII-E-S.5'),
(997, 'VII-E-S.6', 'Space is provided for the librarians\' office, staff room, technical room, etc.', 'vii-e-s6', 252, 253, 8, 3, 985, 'VII-E-S.6'),
(998, 'VII-E-S.7', 'Ramps for the physically disabled are provided.', 'vii-e-s7', 254, 255, 8, 3, 985, 'VII-E-S.7'),
(999, 'VII-E-S.8', 'The library meets the required and standard-sized furniture and equipment.', 'vii-e-s8', 256, 257, 8, 3, 985, 'VII-E-S.8'),
(1000, 'VII-E-S.9', 'The following library furniture and equipment are available.', 'vii-e-s9', 258, 293, 8, 3, 985, 'VII-E-S.9'),
(1001, 'VII-E-S.9.1', 'adjustable/movable shelves;', 'vii-e-s91', 259, 260, 8, 4, 1000, 'VII-E-S.9.1'),
(1002, 'VII-E-S.9.2', 'magazine display shelves;', 'vii-e-s92', 277, 278, 8, 4, 1000, 'VII-E-S.9.2'),
(1003, 'VII-E-S.9.3', 'newspaper racks;', 'vii-e-s93', 279, 280, 8, 4, 1000, 'VII-E-S.9.3'),
(1004, 'VII-E-S.9.4', 'standard tables and chairs;', 'vii-e-s94', 281, 282, 8, 4, 1000, 'VII-E-S.9.4'),
(1005, 'VIII-B-I', 'Implementation', 'viii-b-i', 47, 66, 12, 2, 952, 'VIII-B-I'),
(1006, 'VII-E-S.9.5', 'carrels for individual study;', 'vii-e-s95', 283, 284, 8, 4, 1000, 'VII-E-S.9.5'),
(1007, 'VII-E-S.9.6', 'desks and chairs for staff;', 'vii-e-s96', 285, 286, 8, 4, 1000, 'VII-E-S.9.6'),
(1008, 'VII-E-S.9.7', 'charging desk;', 'vii-e-s97', 287, 288, 8, 4, 1000, 'VII-E-S.9.7'),
(1009, 'VII-E-S.9.8', 'dictionary stand;', 'vii-e-s98', 289, 290, 8, 4, 1000, 'VII-E-S.9.8'),
(1010, 'VII-E-S.9.9', 'atlas stand;', 'vii-e-s99', 291, 292, 8, 4, 1000, 'VII-E-S.9.9'),
(1011, 'VII-E-S.9.10', 'bulletin boards and display cabinets;', 'vii-e-s910', 261, 262, 8, 4, 1000, 'VII-E-S.9.10'),
(1012, 'VII-E-S.9.11', 'vertical file cabinets;', 'vii-e-s911', 263, 264, 8, 4, 1000, 'VII-E-S.9.11'),
(1013, 'VII-E-S.9.12', 'book racks;', 'vii-e-s912', 265, 266, 8, 4, 1000, 'VII-E-S.9.12'),
(1014, 'VII-E-S.9.13', 'map stands/cabinets;', 'vii-e-s913', 267, 268, 8, 4, 1000, 'VII-E-S.9.13'),
(1015, 'VII-E-S.9.14', 'cardex/rotadex or any filing equipment for periodical records;', 'vii-e-s914', 269, 270, 8, 4, 1000, 'VII-E-S.9.14'),
(1016, 'VII-E-S.9.15', 'typewriters;', 'vii-e-s915', 271, 272, 8, 4, 1000, 'VII-E-S.9.15'),
(1017, 'VII-E-S.9.16', 'computer with printers; and', 'vii-e-s916', 273, 274, 8, 4, 1000, 'VII-E-S.9.16'),
(1018, 'VIII-B-I.1', 'The buildings are clean, well-maintained and free from vandalistic acts.', 'viii-b-i1', 48, 49, 12, 3, 1005, 'VIII-B-I.1'),
(1019, 'X-F-S.3', 'Policies and procedures on prompt release of records are in place.', 'x-f-s3', 282, 283, 21, 3, 977, 'X-F-S.3'),
(1020, 'VII-E-S.9.17', 'others (please specify) _________.', 'vii-e-s917', 275, 276, 8, 4, 1000, 'VII-E-S.9.17'),
(1021, 'X-F-I', 'Implementation', 'x-f-i', 229, 272, 21, 2, 976, 'X-F-I'),
(1022, 'VII-E-S.10', 'The library is well lighted.', 'vii-e-s10', 234, 235, 8, 3, 985, 'VII-E-S.10'),
(1023, 'X-F-I.1', 'The institution mainatains a Records Management Office (RMO) managed by a qualified Records Officer.', 'x-f-i1', 230, 231, 21, 3, 1021, 'X-F-I.1'),
(1024, 'VIII-B-I.2', 'Toilets are clean and well-maintained.', 'viii-b-i2', 50, 51, 12, 3, 1005, 'VIII-B-I.2'),
(1025, 'X-F-I.2', 'A record system is installed in offices where it allows easy access to information needed by concerned parties.', 'x-f-i2', 232, 233, 21, 3, 1021, 'X-F-I.2'),
(1026, 'X-F-I.3', 'The Human resource Management Office (HRMO) maintains accurate, up-to-date and systematic records of faculty and staff.', 'x-f-i3', 234, 235, 21, 3, 1021, 'X-F-I.3'),
(1027, 'VII-E-S.11', 'The library is well-ventilated.', 'vii-e-s11', 236, 237, 8, 3, 985, 'VII-E-S.11'),
(1028, 'VIII-B-I.3', 'Electrical lines are safeley installed and periodically checked.', 'viii-b-i3', 52, 53, 12, 3, 1005, 'VIII-B-I.3'),
(1029, 'X-F-I.4', 'The following updated record compilations are made available to concerned parties:', 'x-f-i4', 236, 271, 21, 3, 1021, 'X-F-I.4'),
(1030, 'VII-E-S.12', 'The atmosphere is conducive to learning.', 'vii-e-s12', 238, 239, 8, 3, 985, 'VII-E-S.12'),
(1031, 'VIII-B-I.4', 'Water facilities are functional and well-distributed in all buildings.', 'viii-b-i4', 54, 55, 12, 3, 1005, 'VIII-B-I.4'),
(1032, 'VII-E-S.13', 'Fire extinguishers and a local fire alarm system are available.', 'vii-e-s13', 240, 241, 8, 3, 985, 'VII-E-S.13'),
(1033, 'X-F-I.4.1', 'minutes of the Board of Regents/Trustees meetings;', 'x-f-i41', 237, 238, 21, 4, 1029, 'X-F-I.4.1'),
(1034, 'VIII-B-I.5', 'There is a periodic potability testing of drinking water.', 'viii-b-i5', 56, 57, 12, 3, 1005, 'VIII-B-I.5'),
(1035, 'X-F-I.4.2', 'minutes of the faculty meetings, e.g. minutes of the Academic Council meetings;', 'x-f-i42', 239, 240, 21, 4, 1029, 'X-F-I.4.2'),
(1036, 'VII-E-S.14', 'The Library employs a system for security and control of library resources.', 'vii-e-s14', 242, 243, 8, 3, 985, 'VII-E-S.14'),
(1037, 'VIII-B-I.6', 'Floor plans indicating fire exits and location of fire-fighting equipment, stand pipes, and other water sources are conspicuously displayed in each building.', 'viii-b-i6', 58, 59, 12, 3, 1005, 'VIII-B-I.6'),
(1038, 'X-F-I.4.3', 'faculty and staff individual files;', 'x-f-i43', 241, 242, 21, 4, 1029, 'X-F-I.4.3'),
(1039, 'VIII-B-I.7', 'All school facilities are periodically subjected to pest control and inspection.', 'viii-b-i7', 60, 61, 12, 3, 1005, 'VIII-B-I.7'),
(1040, 'VII-E-I', 'Implementation', 'vii-e-i', 221, 224, 8, 2, 983, 'VII-E-I'),
(1041, 'X-F-I.4.4', 'faculty and staff performance evaluation results; and', 'x-f-i44', 243, 244, 21, 4, 1029, 'X-F-I.4.4'),
(1042, 'VII-E-I.1', 'IT software and multimedia equipment are utilized.', 'vii-e-i1', 222, 223, 8, 3, 1040, 'VII-E-I.1'),
(1043, 'VIII-B-I.8', 'Smoking is strictly prohibited inside the campus.', 'viii-b-i8', 62, 63, 12, 3, 1005, 'VIII-B-I.8'),
(1044, 'VII-E-O', 'Outcome', 'vii-e-o', 225, 230, 8, 2, 983, 'VII-E-O'),
(1045, 'VIII-B-I.9', 'Periodic drill on diasster and risk reduction (earthquake, flood, fire, etc.) is conducted.', 'viii-b-i9', 64, 65, 12, 3, 1005, 'VIII-B-I.9'),
(1046, 'X-F-I.4.5', 'other records such as:', 'x-f-i45', 245, 270, 21, 4, 1029, 'X-F-I.4.5'),
(1047, 'VIII-B-O', 'Outcome', 'viii-b-o', 67, 70, 12, 2, 952, 'VIII-B-O'),
(1048, 'VII-E-O.1', 'The environment in the library is conducive to learning.', 'vii-e-o1', 226, 227, 8, 3, 1044, 'VII-E-O.1'),
(1049, 'X-F-I.4.5.1', 'student directory;', 'x-f-i451', 246, 247, 21, 5, 1046, 'X-F-I.4.5.1'),
(1050, 'VIII-B-O.1', 'The buildings and other facilities are safe, well-maintained and functional.', 'viii-b-o1', 68, 69, 12, 3, 1047, 'VIII-B-O.1'),
(1051, 'X-F-I.4.5.2', 'alumni directory;', 'x-f-i452', 254, 255, 21, 5, 1046, 'X-F-I.4.5.2'),
(1052, 'VII-E-O.2', 'The library facilities are well-maintained and aesthetically designed.', 'vii-e-o2', 228, 229, 8, 3, 1044, 'VII-E-O.2'),
(1053, 'X-F-I.4.5.3', 'permanent records of students;', 'x-f-i453', 256, 257, 21, 5, 1046, 'X-F-I.4.5.3'),
(1054, 'VII-F', 'Parameter F: Financial Support', 'vii-f', 296, 313, 8, 1, 551, 'VII-F'),
(1055, 'VII-F-S', 'System - Inputs and Processes', 'vii-f-s', 309, 312, 8, 2, 1054, 'VII-F-S'),
(1056, 'X-F-I.4.5.4', 'reports of Director/Dean;', 'x-f-i454', 258, 259, 21, 5, 1046, 'X-F-I.4.5.4'),
(1057, 'VII-F-S.1', 'The institution has a regular and realistic budget for the library.', 'vii-f-s1', 310, 311, 8, 3, 1055, 'VII-F-S.1'),
(1058, 'X-F-I.4.5.5', 'annual reports;', 'x-f-i455', 260, 261, 21, 5, 1046, 'X-F-I.4.5.5'),
(1059, 'VII-F-I', 'Implementation', 'vii-f-i', 297, 304, 8, 2, 1054, 'VII-F-I'),
(1060, 'X-F-I.4.5.6', 'accomplishment/progress reports;', 'x-f-i456', 262, 263, 21, 5, 1046, 'X-F-I.4.5.6'),
(1061, 'VIII-C', 'Parameter C: Classrooms', 'viii-c', 102, 125, 12, 1, 865, 'VIII-C'),
(1062, 'VII-F-I.1', 'The Head Librarian and staff, in coordination with other officials of the institution, prepare and manage the annual library budget.', 'vii-f-i1', 298, 299, 8, 3, 1059, 'VII-F-I.1'),
(1063, 'X-F-I.4.5.7', 'scholarship records;', 'x-f-i457', 264, 265, 21, 5, 1046, 'X-F-I.4.5.7'),
(1064, 'VII-F-I.2', 'All fees and funds allocated for library resources and dervices are utilized solely for such purposes and are properly audited.', 'vii-f-i2', 300, 301, 8, 3, 1059, 'VII-F-I.2'),
(1065, 'X-F-I.4.5.8', 'statistical data;', 'x-f-i458', 266, 267, 21, 5, 1046, 'X-F-I.4.5.8'),
(1066, 'VII-F-I.3', 'Other sources of financial assisstance are sought.', 'vii-f-i3', 302, 303, 8, 3, 1059, 'VII-F-I.3'),
(1067, 'VIII-C-S', 'System - Inputs and Processes', 'viii-c-s', 115, 124, 12, 2, 1061, 'VIII-C-S'),
(1068, 'VII-F-O', 'Outcome', 'vii-f-o', 305, 308, 8, 2, 1054, 'VII-F-O'),
(1069, 'X-F-I.4.5.9', 'financial records of students;', 'x-f-i459', 268, 269, 21, 5, 1046, 'X-F-I.4.5.9'),
(1070, 'VII-F-O.1', 'The financial support from fiduciary, supplemental and external funds is adequate.', 'vii-f-o1', 306, 307, 8, 3, 1068, 'VII-F-O.1'),
(1071, 'VIII-C-S.1', 'Classroom size (1.5 sq.m. per student) meets standard specifications for instruction.', 'viii-c-s1', 116, 117, 12, 3, 1067, 'VIII-C-S.1'),
(1072, 'VII-G', 'Parameter G: Linkages', 'vii-g', 314, 329, 8, 1, 551, 'VII-G'),
(1073, 'X-F-I.4.5.10', 'inventory of property;', 'x-f-i4510', 248, 249, 21, 5, 1046, 'X-F-I.4.5.10'),
(1074, 'X-F-I.4.5.11', 'proceedings pf administrative investigation (if any); and', 'x-f-i4511', 250, 251, 21, 5, 1046, 'X-F-I.4.5.11'),
(1075, 'VIII-C-S.2', 'The classrooms are well-lighted, ventilated and acoustically conditioned.', 'viii-c-s2', 118, 119, 12, 3, 1067, 'VIII-C-S.2'),
(1076, 'VII-G-S', 'System - Inputs and Processes', 'vii-g-s', 325, 328, 8, 2, 1072, 'VII-G-S'),
(1077, 'X-F-I.4.5.12', 'others (please specify) _________.', 'x-f-i4512', 252, 253, 21, 5, 1046, 'X-F-I.4.5.12'),
(1078, 'VII-G-S.1', 'The Library is on the mailing list of agencies, foundations, etc., for exchange of publications and other books and journals donations.', 'vii-g-s1', 326, 327, 8, 3, 1076, 'VII-G-S.1'),
(1079, 'VIII-C-S.3', 'The classrooms are adequate and are provided with enough chairs, furniture and equipment.', 'viii-c-s3', 120, 121, 12, 3, 1067, 'VIII-C-S.3'),
(1080, 'X-F-O', 'Outcome', 'x-f-o', 273, 276, 21, 2, 976, 'X-F-O'),
(1081, 'VII-G-I', 'Implementation', 'vii-g-i', 315, 320, 8, 2, 1072, 'VII-G-I'),
(1082, 'VIII-C-S.4', 'There are sufficient supplies (chalkboards/whiteboards, and instructional materials) in each classroom.', 'viii-c-s4', 122, 123, 12, 3, 1067, 'VIII-C-S.4'),
(1083, 'X-F-O.1', 'The institution has a commendable Records Management System.', 'x-f-o1', 274, 275, 21, 3, 1080, 'X-F-O.1'),
(1084, 'VII-G-I.1', 'Linkages with other institutions and funding agencies are explored and established for purposes of enhanicng library facilities and resources.', 'vii-g-i1', 316, 317, 8, 3, 1081, 'VII-G-I.1'),
(1085, 'VIII-C-I', 'Implementation', 'viii-c-i', 103, 110, 12, 2, 1061, 'VIII-C-I'),
(1086, 'VII-G-I.2', 'The library extablishes consortia, networking and resource sharing with other institutions and library collaborative activities.', 'vii-g-i2', 318, 319, 8, 3, 1081, 'VII-G-I.2'),
(1087, 'X-G', 'Parameter G: Institutional Planning and Development', 'x-g', 286, 305, 21, 1, 306, 'X-G'),
(1088, 'VII-G-O', 'Outcome', 'vii-g-o', 321, 324, 8, 2, 1072, 'VII-G-O'),
(1089, 'X-G-S', 'System - Inputs and Processes', 'x-g-s', 299, 304, 21, 2, 1087, 'X-G-S'),
(1090, 'X-G-S.1', 'The institution has an approved Strategic Development Plan (SDP) available in printed and/or electronic forms.', 'x-g-s1', 300, 301, 21, 3, 1089, 'X-G-S.1'),
(1091, 'VIII-C-I.1', 'The classrooms are clearly marked and arranged relative to their functions.', 'viii-c-i1', 104, 105, 12, 3, 1085, 'VIII-C-I.1'),
(1092, 'VII-G-O.1', 'Library resource sharing and linkages are well-established.', 'vii-g-o1', 322, 323, 8, 3, 1088, 'VII-G-O.1'),
(1093, 'X-G-S.2', 'There is a system of monitoring the implementation of the SDP.', 'x-g-s2', 302, 303, 21, 3, 1089, 'X-G-S.2'),
(1094, 'X-G-I', 'Implementation', 'x-g-i', 287, 294, 21, 2, 1087, 'X-G-I'),
(1095, 'VIII-C-I.2', 'The classrooms are well-maintained and free from interference.', 'viii-c-i2', 106, 107, 12, 3, 1085, 'VIII-C-I.2'),
(1096, 'X-G-I.1', 'The institution\'s Planning and Development Unit plans, monitors and evaluates planned activities/targets.', 'x-g-i1', 288, 289, 21, 3, 1094, 'X-G-I.1'),
(1097, 'X-G-I.2', 'The planning process is a cooperative and participative endeavor of administration, the faculty staff and the students.', 'x-g-i2', 290, 291, 21, 3, 1094, 'X-G-I.2'),
(1098, 'X-G-I.3', 'The SDP is implemented, monitored, evaluated, reviewed and updated regularly.', 'x-g-i3', 292, 293, 21, 3, 1094, 'X-G-I.3'),
(1099, 'VIII-C-I.3', 'Students sooperate in maintaining the cleanliness and ordeliness of the classrooms.', 'viii-c-i3', 108, 109, 12, 3, 1085, 'VIII-C-I.3'),
(1100, 'X-G-O', 'Outcome', 'x-g-o', 295, 298, 21, 2, 1087, 'X-G-O'),
(1101, 'X-G-O.1', 'The SDP is congruent with the VMGO as as with the local, regional and national development goals and agenda.', 'x-g-o1', 296, 297, 21, 3, 1100, 'X-G-O.1'),
(1102, 'VIII-C-O', 'Outcome', 'viii-c-o', 111, 114, 12, 2, 1061, 'VIII-C-O'),
(1103, 'X-H', 'Parameter H: Performance of Administrative Personnel', 'x-h', 306, 337, 21, 1, 306, 'X-H'),
(1104, 'X-H-S', 'System - Inputs and Processes', 'x-h-s', 321, 336, 21, 2, 1103, 'X-H-S'),
(1105, 'VIII-C-O.1', 'Classrooms are adequate and conducive to learning.', 'viii-c-o1', 112, 113, 12, 3, 1102, 'VIII-C-O.1'),
(1106, 'VIII-D', 'Parameter D: Offices and Staff Rooms', 'viii-d', 126, 155, 12, 1, 865, 'VIII-D'),
(1107, 'X-H-S.1', 'The institution has an approved performance evaluation system for administrative personnel which includes the following items:', 'x-h-s1', 322, 335, 21, 3, 1104, 'X-H-S.1'),
(1108, 'X-H-S.1.1', 'competence;', 'x-h-s11', 323, 324, 21, 4, 1107, 'X-H-S.1.1'),
(1109, 'VIII-D-S', 'System - Inputs and Processes', 'viii-d-s', 137, 154, 12, 2, 1106, 'VIII-D-S'),
(1110, 'X-H-S.1.2', 'quality of work;', 'x-h-s12', 325, 326, 21, 4, 1107, 'X-H-S.1.2'),
(1111, 'X-H-S.1.3', 'work ethic (punctuality, wise use of time, etc.);', 'x-h-s13', 327, 328, 21, 4, 1107, 'X-H-S.1.3'),
(1112, 'VIII-D-S.1', 'The administrative offices are accessible to stakeholders.', 'viii-d-s1', 138, 139, 12, 3, 1109, 'VIII-D-S.1'),
(1113, 'X-H-S.1.4', 'creative ability and innovativeness;', 'x-h-s14', 329, 330, 21, 4, 1107, 'X-H-S.1.4'),
(1114, 'VII-A-S', 'System - Inputs and Processes', 'vii-a-s', 33, 42, 8, 2, 552, 'VII-A-S'),
(1115, 'X-H-S.1.5', 'ability to handle internal and external pressures; and', 'x-h-s15', 331, 332, 21, 4, 1107, 'X-H-S.1.5'),
(1116, 'VIII-D-S.2', 'All offices are acessible and convenienlty located in accordance to their functions.', 'viii-d-s2', 140, 141, 12, 3, 1109, 'VIII-D-S.2'),
(1117, 'X-H-S.1.6', 'interpersonal relations.', 'x-h-s16', 333, 334, 21, 4, 1107, 'X-H-S.1.6'),
(1118, 'VIII-D-S.3', 'There are offices and workspaces for all officials, faculty and administrative staff.', 'viii-d-s3', 142, 143, 12, 3, 1109, 'VIII-D-S.3'),
(1119, 'X-H-I', 'Implementation', 'x-h-i', 307, 316, 21, 2, 1103, 'X-H-I'),
(1120, 'VIII-D-S.4', 'Administration and faculty offices and staff rooms are clean, well-lighted and ventilated.', 'viii-d-s4', 144, 145, 12, 3, 1109, 'VIII-D-S.4'),
(1121, 'X-H-I.1', 'The institution regularly monitors and evaluates the performance of administrative personnel.', 'x-h-i1', 308, 309, 21, 3, 1119, 'X-H-I.1'),
(1122, 'VII-A-S.1', 'The organizational structure of the library is well-defined.', 'vii-a-s1', 34, 35, 8, 3, 1114, 'VII-A-S.1'),
(1123, 'VIII-D-S.5', 'Function rooms and lounge are available.', 'viii-d-s5', 146, 147, 12, 3, 1109, 'VIII-D-S.5'),
(1124, 'VII-A-S.2', 'The development of the library goals and objectives is the responsibility of the library head and staff with the approval of the Head of the institution.', 'vii-a-s2', 36, 37, 8, 3, 1114, 'VII-A-S.2'),
(1125, 'X-H-I.2', 'The results of performance evaluation of the administrative personnel are utilized:', 'x-h-i2', 310, 315, 21, 3, 1119, 'X-H-I.2'),
(1126, 'VIII-D-S.6', 'Storerooms are strategically located.', 'viii-d-s6', 148, 149, 12, 3, 1109, 'VIII-D-S.6'),
(1127, 'VII-A-S.3', 'There is a Library Board/Committtee which sets library policies, rules and procedures and periodically reviews them.', 'vii-a-s3', 38, 39, 8, 3, 1114, 'VII-A-S.3'),
(1128, 'X-H-I.2.1', 'to improve performance and delivery of service; and', 'x-h-i21', 311, 312, 21, 4, 1125, 'X-H-I.2.1'),
(1129, 'VIII-D-S.7', 'There is internal and external communication system', 'viii-d-s7', 150, 151, 12, 3, 1109, 'VIII-D-S.7'),
(1130, 'X-H-I.2.2', 'for promotion.', 'x-h-i22', 313, 314, 21, 4, 1125, 'X-H-I.2.2'),
(1131, 'VIII-D-S.8', 'There are clean toilets for administrators, faculty, staff, and students.', 'viii-d-s8', 152, 153, 12, 3, 1109, 'VIII-D-S.8'),
(1132, 'X-H-O', 'Outcome', 'x-h-o', 317, 320, 21, 2, 1103, 'X-H-O'),
(1133, 'VII-A-S.4', 'There is a duly approved and widely disseminated Library Manual or written policies and procedures covering the library\'s internal administration and operation.', 'vii-a-s4', 40, 41, 8, 3, 1114, 'VII-A-S.4'),
(1134, 'X-H-O.1', 'The administrative personnel/staff have commendable performance.', 'x-h-o1', 318, 319, 21, 3, 1132, 'X-H-O.1'),
(1135, 'VIII-D-I', 'Implementation', 'viii-d-i', 127, 132, 12, 2, 1106, 'VIII-D-I'),
(1136, 'VIII-D-I.1', 'All offices are furnished with the necessary equipemtn, furniture, supplies and materials.', 'viii-d-i1', 128, 129, 12, 3, 1135, 'VIII-D-I.1'),
(1137, 'VIII-D-I.2', 'All offices are well-maintained.', 'viii-d-i2', 130, 131, 12, 3, 1135, 'VIII-D-I.2'),
(1138, 'VIII-D-O', 'Outcome', 'viii-d-o', 133, 136, 12, 2, 1106, 'VIII-D-O'),
(1139, 'VIII-D-O.1', 'The offices and staff rooms are adequate and conducive to working environment.', 'viii-d-o1', 134, 135, 12, 3, 1138, 'VIII-D-O.1'),
(1140, 'VIII-E', 'Parameter E: Assembly, Athletic and Sports Facilities', 'viii-e', 156, 205, 12, 1, 865, 'VIII-E'),
(1141, 'IX-A-I', 'Implementation', 'ix-a-i', 3, 28, 5, 2, 439, 'IX-A-I'),
(1142, 'IX-A-I.1', 'Furniture and equipment arrangement allows free flow of movement and enables students to work comfortably without interference.', 'ix-a-i1', 4, 5, 5, 3, 1141, 'IX-A-I.1'),
(1143, 'VIII-E-S', 'System - Inputs and Processes', 'viii-e-s', 193, 204, 12, 2, 1140, 'VIII-E-S'),
(1144, 'IX-A-I.2', 'Safety and precautionary measures are implemented.', 'ix-a-i2', 12, 13, 5, 3, 1141, 'IX-A-I.2'),
(1145, 'VIII-E-S.1', 'Function rooms for holding meetings, conferences, convocations and similar activities are sufficient.', 'viii-e-s1', 194, 195, 12, 3, 1143, 'VIII-E-S.1'),
(1146, 'VIII-E-S.2', 'Facilities for athletics sports, cultural activities, military training, etc. are accessible.', 'viii-e-s2', 196, 197, 12, 3, 1143, 'VIII-E-S.2'),
(1147, 'IX-A-I.3', 'Usable fire extinguishers are accessible to staff and students.', 'ix-a-i3', 14, 15, 5, 3, 1141, 'IX-A-I.3'),
(1148, 'IX-A-I.4', 'Laboratory Operations Manuals for the faculty and students are provided in each laboratory.', 'ix-a-i4', 16, 17, 5, 3, 1141, 'IX-A-I.4'),
(1149, 'IX-A-I.5', 'Demonstration and training on the use of the fire entinguishers, first-aid kit and other emergency measures are periodically ocnducted.', 'ix-a-i5', 18, 19, 5, 3, 1141, 'IX-A-I.5'),
(1150, 'VIII-E-S.3', 'The seating capacity conforms to standards.', 'viii-e-s3', 198, 199, 12, 3, 1143, 'VIII-E-S.3'),
(1151, 'IX-A-I.6', 'A well-equipped first-aid kit, charts for antidotes and neutralizing solutions are made available in each laboratory room.', 'ix-a-i6', 20, 21, 5, 3, 1141, 'IX-A-I.6'),
(1152, 'VIII-E-S.4', 'There are adequate and well-marked entry and exit points.', 'viii-e-s4', 200, 201, 12, 3, 1143, 'VIII-E-S.4'),
(1153, 'IX-A-I.7', 'A student\'s access to a computer is at least 15 hours per term for every subject.', 'ix-a-i7', 22, 23, 5, 3, 1141, 'IX-A-I.7'),
(1154, 'VIII-E-S.5', 'There are storage facilities for athletics sports and other curricular training equipment.', 'viii-e-s5', 202, 203, 12, 3, 1143, 'VIII-E-S.5'),
(1155, 'IX-A-I.8', 'Appropriate laboratories for general education subjects are adequately equipped and well-maintained.', 'ix-a-i8', 24, 25, 5, 3, 1141, 'IX-A-I.8'),
(1156, 'IX-A-I.9', 'A well-equipped Multimedia Center is maintained.', 'ix-a-i9', 26, 27, 5, 3, 1141, 'IX-A-I.9'),
(1157, 'VIII-E-I', 'Implementation', 'viii-e-i', 157, 188, 12, 2, 1140, 'VIII-E-I'),
(1158, 'IX-A-I.10', 'Gas, water and electricity are utilized for classroom practicum activities.', 'ix-a-i10', 6, 7, 5, 3, 1141, 'IX-A-I.10'),
(1159, 'VIII-E-I.1', 'Indoor facilities are constructed with:', 'viii-e-i1', 158, 171, 12, 3, 1157, 'VIII-E-I.1'),
(1160, 'IX-A-I.11', 'A demonstration table, equipped with sink, water, electrical and gas outlets is available and utilized.', 'ix-a-i11', 8, 9, 5, 3, 1141, 'IX-A-I.11'),
(1161, 'IX-A-I.12', 'Laboratory equipment, supplies and materials are kept in separate stock rooms.', 'ix-a-i12', 10, 11, 5, 3, 1141, 'IX-A-I.12'),
(1162, 'IX-A-O', 'Outcome', 'ix-a-o', 29, 32, 5, 2, 439, 'IX-A-O'),
(1163, 'IX-A-O.1', 'The laboratories ans shops are well-equipped, functional and are conducive to learning.', 'ix-a-o1', 30, 31, 5, 3, 1162, 'IX-A-O.1'),
(1164, 'IX-B', 'Parameter B: Equipment, Supplies and Materials', 'ix-b', 48, 69, 5, 1, 438, 'IX-B'),
(1165, 'VIII-E-I.1.1', 'appropriate flooring;', 'viii-e-i11', 159, 160, 12, 4, 1159, 'VIII-E-I.1.1'),
(1166, 'IX-B-S', 'System - Inputs and Processes', 'ix-b-s', 61, 68, 5, 2, 1164, 'IX-B-S'),
(1167, 'VIII-E-I.1.2', 'proper lighting and ventilation;', 'viii-e-i12', 161, 162, 12, 4, 1159, 'VIII-E-I.1.2'),
(1168, 'IX-B-S.1', 'The equipment, instruments and materials needed in the classrooms are available.', 'ix-b-s1', 62, 63, 5, 3, 1166, 'IX-B-S.1'),
(1169, 'IX-B-S.2', 'Apparatuses, tools and materials conform to the specifications required in accordance with the CMO of the program.', 'ix-b-s2', 64, 65, 5, 3, 1166, 'IX-B-S.2'),
(1170, 'VIII-E-I.1.3', 'safety measures;', 'viii-e-i13', 163, 164, 12, 4, 1159, 'VIII-E-I.1.3'),
(1171, 'IX-B-S.3', 'Varied computer software are available.', 'ix-b-s3', 66, 67, 5, 3, 1166, 'IX-B-S.3'),
(1172, 'IX-B-I', 'Implementation', 'ix-b-i', 49, 56, 5, 2, 1164, 'IX-B-I'),
(1173, 'VIII-E-I.1.4', 'toilets;', 'viii-e-i14', 165, 166, 12, 4, 1159, 'VIII-E-I.1.4'),
(1174, 'VIII-E-I.1.5', 'functional drinking facilities; and', 'viii-e-i15', 167, 168, 12, 4, 1159, 'VIII-E-I.1.5'),
(1175, 'IX-B-I.1', 'Equipment are well-maintained.', 'ix-b-i1', 50, 51, 5, 3, 1172, 'IX-B-I.1'),
(1176, 'VIII-E-I.1.6', 'enough chairs.', 'viii-e-i16', 169, 170, 12, 4, 1159, 'VIII-E-I.1.6'),
(1177, 'IX-B-I.2', 'Laboratory supplies and materials are wisely utilized.', 'ix-b-i2', 52, 53, 5, 3, 1172, 'IX-B-I.2'),
(1178, 'IX-B-I.3', 'Licensed computer software are installed and utilized.', 'ix-b-i3', 54, 55, 5, 3, 1172, 'IX-B-I.3'),
(1179, 'IX-B-O', 'Outcome', 'ix-b-o', 57, 60, 5, 2, 1164, 'IX-B-O'),
(1180, 'IX-B-O.1', 'The laboratory equipment, supplies and materials are sufficient and wisely utilized.', 'ix-b-o1', 58, 59, 5, 3, 1179, 'IX-B-O.1'),
(1181, 'IX-C', 'Parameter C: Maintenance', 'ix-c', 70, 121, 5, 1, 438, 'IX-C'),
(1182, 'VIII-E-I.2', 'The constructed outdoor facilities are:', 'viii-e-i2', 172, 183, 12, 3, 1157, 'VIII-E-I.2'),
(1183, 'IX-C-S', 'System - Inputs and Processes', 'ix-c-s', 109, 120, 5, 2, 1181, 'IX-C-S'),
(1184, 'VIII-E-I.2.1', 'free from hazards;', 'viii-e-i21', 173, 174, 12, 4, 1182, 'VIII-E-I.2.1'),
(1185, 'IX-C-S.1', 'A laboratory technician/assistant is available for the proper upkeep of the laboratories.', 'ix-c-s1', 110, 111, 5, 3, 1183, 'IX-C-S.1'),
(1186, 'VIII-E-I.2.2', 'suitable surfaced floor;', 'viii-e-i22', 175, 176, 12, 4, 1182, 'VIII-E-I.2.2'),
(1187, 'IX-C-S.2', 'The institution has a Maintenance and Repair Department/Unit manned by skilled personnel who provides services on direct call.', 'ix-c-s2', 112, 119, 5, 3, 1183, 'IX-C-S.2'),
(1188, 'VIII-E-I.2.3', 'appropriately laid out for a variety of activities;', 'viii-e-i23', 177, 178, 12, 4, 1182, 'VIII-E-I.2.3'),
(1189, 'VIII-E-I.2.4', 'properly maintained and secured; and', 'viii-e-i24', 179, 180, 12, 4, 1182, 'VIII-E-I.2.4'),
(1190, 'IX-C-S.2.1', 'inventory of equipment and supplies;', 'ix-c-s21', 113, 114, 5, 4, 1187, 'IX-C-S.2.1'),
(1191, 'IX-C-S.2.2', 'checking on the physical conditions of equipment and supplies;', 'ix-c-s22', 115, 116, 5, 4, 1187, 'IX-C-S.2.2'),
(1192, 'IX-C-S.2.3', 'maintenance of the laboratories and shops.', 'ix-c-s23', 117, 118, 5, 4, 1187, 'IX-C-S.2.3'),
(1193, 'VIII-E-I.2.5', 'installed with drainage system.', 'viii-e-i25', 181, 182, 12, 4, 1182, 'VIII-E-I.2.5'),
(1194, 'IX-C-I', 'Implementation', 'ix-c-i', 71, 104, 5, 2, 1181, 'IX-C-I'),
(1195, 'IX-C-I.1', 'The institution keeps the laboratories neat, clean and orderly.', 'ix-c-i1', 72, 73, 5, 3, 1194, 'IX-C-I.1'),
(1196, 'IX-C-I.2', 'Laboratory supplies and materials are regularly replinished/replaced, whenever applicable.', 'ix-c-i2', 74, 75, 5, 3, 1194, 'IX-C-I.2'),
(1197, 'IX-C-I.3', 'The inventory of laboratory facilities and equipment is systematically and periodically conducted.', 'ix-c-i3', 76, 77, 5, 3, 1194, 'IX-C-I.3'),
(1198, 'IX-C-I.4', 'The laboratory equipment and instruments are in good condition and are periodically calibrated.', 'ix-c-i4', 78, 79, 5, 3, 1194, 'IX-C-I.4'),
(1199, 'VIII-E-I.3', 'Assembly, athletic sports and cultural facilities are sufficient and varied to meet the requirements of the institution.', 'viii-e-i3', 184, 185, 12, 3, 1157, 'VIII-E-I.3'),
(1200, 'IX-C-I.5', 'All equipment are coded, listed and inventoried.', 'ix-c-i5', 80, 81, 5, 3, 1194, 'IX-C-I.5'),
(1201, 'IX-C-I.6', 'Waste disposal is efficiently and effectively managed on campus.', 'ix-c-i6', 82, 83, 5, 3, 1194, 'IX-C-I.6'),
(1202, 'VIII-E-I.4', 'Audio-visual room and facilities with appropriate equipment are utilized in support of the teaching-learning such as but not limited to video/ overhead/ slide projector, sound system, LCD projectors and screens.', 'viii-e-i4', 186, 187, 12, 3, 1157, 'VIII-E-I.4'),
(1203, 'IX-C-I.7', 'The following are properly maintained by trained staff/technicians:', 'ix-c-i7', 84, 103, 5, 3, 1194, 'IX-C-I.7'),
(1204, 'IX-C-I.7.1', 'shops;', 'ix-c-i71', 85, 86, 5, 4, 1203, 'IX-C-I.7.1'),
(1205, 'VIII-E-O', 'Outcome', 'viii-e-o', 189, 192, 12, 2, 1140, 'VIII-E-O'),
(1206, 'IX-C-I.7.2', 'computer laboratory;', 'ix-c-i72', 87, 88, 5, 4, 1203, 'IX-C-I.7.2'),
(1207, 'VIII-E-O.1', 'Indoor and outdoor facilities are well-equipped and properly maintained.', 'viii-e-o1', 190, 191, 12, 3, 1205, 'VIII-E-O.1'),
(1208, 'IX-C-I.7.3', 'multimedia/educational technology center;', 'ix-c-i73', 89, 90, 5, 4, 1203, 'IX-C-I.7.3'),
(1209, 'IX-C-I.7.4', 'research facility;', 'ix-c-i74', 91, 92, 5, 4, 1203, 'IX-C-I.7.4'),
(1210, 'IX-C-I.7.5', 'general education laboratory;', 'ix-c-i75', 93, 100, 5, 4, 1203, 'IX-C-I.7.5'),
(1211, 'IX-C-I.7.5.1', 'natural sciences/physical science;', 'ix-c-i751', 94, 95, 5, 5, 1210, 'IX-C-I.7.5.1'),
(1212, 'IX-C-I.7.5.2', 'speech laboratory;', 'ix-c-i752', 96, 97, 5, 5, 1210, 'IX-C-I.7.5.2'),
(1213, 'IX-C-I.7.5.3', 'physical education; and', 'ix-c-i753', 98, 99, 5, 5, 1210, 'IX-C-I.7.5.3'),
(1214, 'IX-C-I.7.6', 'others (please specify).', 'ix-c-i76', 101, 102, 5, 4, 1203, 'IX-C-I.7.6'),
(1215, 'IX-C-O', 'Outcome', 'ix-c-o', 105, 108, 5, 2, 1181, 'IX-C-O'),
(1216, 'IX-C-O.1', 'The laboratories and shops are functional and are properly maintained.', 'ix-c-o1', 106, 107, 5, 3, 1215, 'IX-C-O.1'),
(1217, 'IX-D', 'Parameter D: Special Provisions', 'ix-d', 122, 139, 5, 1, 438, 'IX-D'),
(1218, 'IX-D-S', 'System - Inputs and Processes', 'ix-d-s', 131, 138, 5, 2, 1217, 'IX-D-S'),
(1219, 'IX-D-S.1', 'Specific program requirements (listing of materials and equipment as per CMO are in accordance with guidelines/policies embodied in official issuances.', 'ix-d-s1', 132, 133, 5, 3, 1218, 'IX-D-S.1'),
(1220, 'IX-D-S.2', 'There is an approved Project Procurement Management Plan (PPMP).', 'ix-d-s2', 134, 135, 5, 3, 1218, 'IX-D-S.2'),
(1221, 'IX-D-S.3', 'There is an approved Annual Procurement Plan (APP) for laboratory equipment, supplies and materials.', 'ix-d-s3', 136, 137, 5, 3, 1218, 'IX-D-S.3'),
(1222, 'IX-D-I', 'Implementation', 'ix-d-i', 123, 126, 5, 2, 1217, 'IX-D-I'),
(1223, 'VIII-F', 'Parameter F: Medical and Dental Clinic', 'viii-f', 206, 271, 12, 1, 865, 'VIII-F'),
(1224, 'IX-D-I.1', 'The institution implements the special provisions as listed in the CMO.', 'ix-d-i1', 124, 125, 5, 3, 1222, 'IX-D-I.1'),
(1225, 'VIII-F-S', 'System - Inputs and Processes', 'viii-f-s', 219, 270, 12, 2, 1223, 'VIII-F-S'),
(1226, 'IX-D-O', 'Outcome', 'ix-d-o', 127, 130, 5, 2, 1217, 'IX-D-O'),
(1227, 'IX-D-O.1', 'The special provisions in the CMO of the program are complied with.', 'ix-d-o1', 128, 129, 5, 3, 1226, 'IX-D-O.1'),
(1228, 'VIII-F-S.1', 'The Medical and Dental has basic facilities such as: reception area, records section, examination/treatment room and toilets.', 'viii-f-s1', 220, 221, 12, 3, 1225, 'VIII-F-S.1'),
(1229, 'VIII-F-S.2', 'The institution has functional medical and dental section/area.', 'viii-f-s2', 224, 225, 12, 3, 1225, 'VIII-F-S.2'),
(1230, 'VIII-F-S.3', 'Potable water is available and sufficient.', 'viii-f-s3', 226, 227, 12, 3, 1225, 'VIII-F-S.3'),
(1231, 'VIII-F-S.4', 'Medical and dental equipment are provided.', 'viii-f-s4', 228, 229, 12, 3, 1225, 'VIII-F-S.4'),
(1232, 'VIII-F-S.5', 'There are enough medical and dental supplies and materials.', 'viii-f-s5', 230, 231, 12, 3, 1225, 'VIII-F-S.5'),
(1233, 'VIII-F-S.6', 'Storage facilities (refrigerator, steel cabinets, etc.) are available.', 'viii-f-s6', 232, 233, 12, 3, 1225, 'VIII-F-S.6'),
(1234, 'VIII-F-S.7', 'Medical and dental supplies and materials have proper labels.', 'viii-f-s7', 234, 235, 12, 3, 1225, 'VIII-F-S.7'),
(1235, 'VIII-F-S.8', 'The following basic medical equipment and medicines are all available:', 'viii-f-s8', 236, 257, 12, 3, 1225, 'VIII-F-S.8'),
(1236, 'VIII-F-S.8.1', 'emergency medicines;', 'viii-f-s81', 237, 238, 12, 4, 1235, 'VIII-F-S.8.1'),
(1237, 'VIII-F-S.8.2', 'ambobag;', 'viii-f-s82', 241, 242, 12, 4, 1235, 'VIII-F-S.8.2'),
(1238, 'VIII-F-S.8.3', 'oxygen tank;', 'viii-f-s83', 243, 244, 12, 4, 1235, 'VIII-F-S.8.3'),
(1239, 'VIII-F-S.8.4', 'intravenous fluid;', 'viii-f-s84', 245, 246, 12, 4, 1235, 'VIII-F-S.8.4'),
(1240, 'VIII-F-S.8.5', 'shygmomanometer (at least 2 sets);', 'viii-f-s85', 247, 248, 12, 4, 1235, 'VIII-F-S.8.5'),
(1241, 'VIII-F-S.8.6', 'thermometer (at least 10 pcs);', 'viii-f-s86', 249, 250, 12, 4, 1235, 'VIII-F-S.8.6'),
(1242, 'VIII-F-S.8.7', 'diagnostic sets;', 'viii-f-s87', 251, 252, 12, 4, 1235, 'VIII-F-S.8.7'),
(1243, 'VIII-F-S.8.8', 'stethoscope (at least 2 units);', 'viii-f-s88', 253, 256, 12, 4, 1235, 'VIII-F-S.8.8'),
(1244, 'VIII-F-S.8.9', 'treatment cart; and', 'viii-f-s89', 254, 255, 12, 5, 1243, 'VIII-F-S.8.9'),
(1245, 'VIII-F-S.8.10', 'nebulizer.', 'viii-f-s810', 239, 240, 12, 4, 1235, 'VIII-F-S.8.10'),
(1246, 'VIII-F-S.9', 'The following basic dental equipment and apparatuses are available:', 'viii-f-s9', 258, 269, 12, 3, 1225, 'VIII-F-S.9'),
(1247, 'VIII-F-S.9.1', 'dental chair;', 'viii-f-s91', 259, 260, 12, 4, 1246, 'VIII-F-S.9.1'),
(1248, 'VIII-F-S.9.2', 'autoclave (sterilizer);', 'viii-f-s92', 261, 262, 12, 4, 1246, 'VIII-F-S.9.2'),
(1249, 'VIII-F-S.9.3', 'medical supplies;', 'viii-f-s93', 263, 264, 12, 4, 1246, 'VIII-F-S.9.3'),
(1250, 'VIII-F-S.9.4', 'filling instruments; and', 'viii-f-s94', 265, 266, 12, 4, 1246, 'VIII-F-S.9.4'),
(1251, 'VIII-F-S.9.5', 'basic instruments (forceps, mouth mirror, coton fliers, explorer, etc.).', 'viii-f-s95', 267, 268, 12, 4, 1246, 'VIII-F-S.9.5'),
(1252, 'VIII-F-S.10', 'The Medical/Dental Clinic has ample space, adequate lighting and ventilation.', 'viii-f-s10', 222, 223, 12, 3, 1225, 'VIII-F-S.10'),
(1253, 'VIII-F-I', 'Implementation', 'viii-f-i', 207, 214, 12, 2, 1223, 'VIII-F-I'),
(1254, 'VIII-F-I.1', 'The Medical and Dental Clinics are managed by qualified medical and dental officers.', 'viii-f-i1', 208, 209, 12, 3, 1253, 'VIII-F-I.1'),
(1255, 'VIII-F-I.2', 'Distinct rooms and storage areas are properly labeled.', 'viii-f-i2', 210, 211, 12, 3, 1253, 'VIII-F-I.2'),
(1256, 'VIII-F-I.3', 'Medical and dental services are regularly monitored and evaluated.', 'viii-f-i3', 212, 213, 12, 3, 1253, 'VIII-F-I.3'),
(1257, 'VIII-F-O', 'Outcome', 'outcome', 215, 218, 12, 2, 1223, 'VIII-F-O'),
(1258, 'VIII-F-O.1', 'Themedical, dental clinic and services are functional.', 'viii-f-o1', 216, 217, 12, 3, 1257, 'VIII-F-O.1'),
(1259, 'VIII-G', 'Parameter G: Student Center', 'viii-g', 272, 301, 12, 1, 865, 'VIII-G'),
(1260, 'VIII-G-S', 'System - Inputs and Processes', 'viii-g-s', 283, 300, 12, 2, 1259, 'VIII-G-S'),
(1261, 'VIII-G-S.1', 'The insstitution has a Student Center with supplies and materials.', 'viii-g-s1', 284, 285, 12, 3, 1260, 'VIII-G-S.1'),
(1262, 'VIII-G-S.2', 'Policies and guidance on the proper utilization of Student Center are in place.', 'viii-g-s2', 286, 287, 12, 3, 1260, 'VIII-G-S.2'),
(1263, 'VIII-G-S.3', 'The Student Center is well-lighted and ventilated.', 'viii-g-s3', 288, 289, 12, 3, 1260, 'VIII-G-S.3'),
(1264, 'VIII-G-S.4', 'A conference room is available for students\' use.', 'viii-g-s4', 290, 291, 12, 3, 1260, 'VIII-G-S.4'),
(1265, 'VIII-G-S.5', 'There are facilities and equipment fo rtable games, music appreciation, and TV or video viewing.', 'viii-g-s5', 292, 293, 12, 3, 1260, 'VIII-G-S.5'),
(1266, 'VIII-G-S.6', 'Clean and sanitary toilets, for men separate from those of women are available.', 'viii-g-s6', 294, 295, 12, 3, 1260, 'VIII-G-S.6'),
(1267, 'VIII-G-S.7', 'Toilet fixtures for students with special needs and PWD\'s are provided.', 'viii-g-s7', 296, 297, 12, 3, 1260, 'VIII-G-S.7'),
(1268, 'VIII-G-S.8', 'There are offices for student leaders, the editorial staff of the student publication and the officers of other student organizations.', 'viii-g-s8', 298, 299, 12, 3, 1260, 'VIII-G-S.8'),
(1269, 'VIII-G-I', 'Implementation', 'viii-g-i', 273, 278, 12, 2, 1259, 'VIII-G-I'),
(1270, 'VIII-G-I.1', 'Student activities at the Student Center are regularly conducted and monitored.', 'viii-g-i1', 274, 275, 12, 3, 1269, 'VIII-G-I.1'),
(1271, 'VIII-G-I.2', 'The Student Center is properly maintained.', 'viii-g-i2', 276, 277, 12, 3, 1269, 'VIII-G-I.2'),
(1272, 'VIII-G-O', 'Outcome', 'viii-g-o', 279, 282, 12, 2, 1259, 'VIII-G-O'),
(1273, 'VIII-G-O.1', 'The Student Center is fully equipped and functional.', 'viii-g-o1', 280, 281, 12, 3, 1272, 'VIII-G-O.1'),
(1274, 'VIII-H', 'Parameter H: Food Services/Canteen/Cafeteria', 'viii-h', 302, 337, 12, 1, 865, 'VIII-H'),
(1275, 'VIII-H-S', 'System - Inputs and Processes', 'viii-h-s', 321, 336, 12, 2, 1274, 'VIII-H-S'),
(1276, 'VIII-H-S.1', 'The canteen/cafeteria is well-lighted, ventilated, screened and provided with potable water supply.', 'viii-h-s1', 322, 323, 12, 3, 1275, 'VIII-H-S.1'),
(1277, 'VIII-H-S.2', 'There are enough;', 'viii-h-s2', 324, 333, 12, 3, 1275, 'VIII-H-S.2'),
(1278, 'VIII-H-S.2.1', 'cooking and preparatory equipment;', 'viii-h-s21_1', 325, 326, 12, 4, 1277, 'VIII-H-S.2.1'),
(1279, 'VIII-H-S.2.2', 'serving tools and utensils;', 'viii-h-s22', 327, 328, 12, 4, 1277, 'VIII-H-S.2.2'),
(1280, 'VIII-H-S.2.3', 'cleaning supplies and materials; and', 'viii-h-s23', 329, 330, 12, 4, 1277, 'VIII-H-S.2.3'),
(1281, 'VIII-H-S.2.4', 'dining tables and chairs.', 'viii-h-s24', 331, 332, 12, 4, 1277, 'VIII-H-S.2.4'),
(1282, 'VIII-H-S.3', 'Wash area and toilets are available.', 'viii-h-s3', 334, 335, 12, 3, 1275, 'VIII-H-S.3'),
(1283, 'VIII-H-I', 'Implementation', 'viii-h-i', 303, 314, 12, 2, 1274, 'VIII-H-I'),
(1284, 'VIII-H-I.1', 'The institution requires business and sanitary permits for the operation of the Food Center/Cafeteria/Canteen', 'viii-h-i1', 304, 305, 12, 3, 1283, 'VIII-H-I.1'),
(1285, 'VIII-H-I.2', 'Food served is varied, nutritious, safe and sold at affordable price.', 'viii-h-i2', 306, 307, 12, 3, 1283, 'VIII-H-I.2'),
(1286, 'VIII-H-I.3', 'The Food Center/Cafeteria/Canteen is well-managed by qualified and competent staff.', 'viii-h-i3', 308, 309, 12, 3, 1283, 'VIII-H-I.3'),
(1287, 'VIII-H-I.4', 'Cleanliness and orderliness are enforced.', 'viii-h-i4', 310, 311, 12, 3, 1283, 'VIII-H-I.4'),
(1288, 'VIII-H-I.5', 'The food services are prompt.', 'viii-h-i5', 312, 313, 12, 3, 1283, 'VIII-H-I.5'),
(1289, 'VIII-H-O', 'Outcome', 'viii-h-o', 315, 320, 12, 2, 1274, 'VIII-H-O'),
(1290, 'VIII-H-O.1', 'The Canteen/Cafeteria/Food Center is well-patronized.', 'viii-h-o1', 316, 317, 12, 3, 1289, 'VIII-H-O.1'),
(1291, 'VIII-H-O.2', 'The food services generate income for the institution.', 'viii-h-o2', 318, 319, 12, 3, 1289, 'VIII-H-O.2'),
(1292, 'VIII-I', 'Parameter I: Accreditation Center', 'viii-i', 338, 369, 12, 1, 865, 'VIII-I'),
(1293, 'VIII-I-S', 'System - Inputs and Processes', 'viii-i-s', 351, 368, 12, 2, 1292, 'VIII-I-S'),
(1294, 'VIII-I-S.1', 'The Accreditation Center (AC) is accessible and conveniently located.', 'viii-i-s1_1', 352, 353, 12, 3, 1293, 'VIII-I-S.1'),
(1295, 'VIII-I-S.2', 'The AC has the following equipment and fixtures:', 'viii-i-s2_1', 354, 367, 12, 3, 1293, 'VIII-I-S.2'),
(1296, 'VIII-I-S.2.1', 'working tables and chairs;', 'viii-i-s21', 355, 356, 12, 4, 1295, 'VIII-I-S.2.1'),
(1297, 'VIII-I-S.2.2', 'cabinets for display and filing;', 'viii-i-s22', 357, 358, 12, 4, 1295, 'VIII-I-S.2.2'),
(1298, 'VIII-I-S.2.3', 'good ventilation and lighting;', 'viii-i-s23', 359, 360, 12, 4, 1295, 'VIII-I-S.2.3'),
(1299, 'VIII-I-S.2.4', 'computer unit;', 'viii-i-s24', 361, 362, 12, 4, 1295, 'VIII-I-S.2.4'),
(1300, 'VIII-I-S.2.5', 'toilets; and', 'viii-i-s25', 363, 364, 12, 4, 1295, 'VIII-I-S.2.5'),
(1301, 'VIII-I-S.2.6', 'lounge.', 'viii-i-s26', 365, 366, 12, 4, 1295, 'VIII-I-S.2.6'),
(1302, 'VIII-I-I', 'Implementation', 'viii-i-i', 339, 346, 12, 2, 1292, 'VIII-I-I'),
(1303, 'VIII-I-I.1', 'The Institution/College/Acadmic Unit maintains the AC with the required resources, furniture, and documents.', 'viii-i-i1', 340, 341, 12, 3, 1302, 'VIII-I-I.1'),
(1304, 'VIII-I-I.2', 'The AC is managed by a qualified and committed staff/faculty.', 'viii-i-i2_1', 342, 343, 12, 3, 1302, 'VIII-I-I.2'),
(1305, 'VIII-I-I.3', 'Required documents/information and exhibits are updated, systematically packaged and readily available.', 'viii-i-i3_1', 344, 345, 12, 3, 1302, 'VIII-I-I.3'),
(1306, 'VIII-I-O', 'Outcome', 'viii-i-o', 347, 350, 12, 2, 1292, 'VIII-I-O'),
(1307, 'VIII-I-O.1', 'The AC is well-equipped and managed.', 'viii-i-o1', 348, 349, 12, 3, 1306, 'VIII-I-O.1'),
(1308, 'VIII-J', 'Parameter J: Housing (optional)', 'viii-j', 370, 395, 12, 1, 865, 'VIII-J'),
(1309, 'VIII-J-S', 'System - Inputs and Processes', 'viii-j-s', 387, 394, 12, 2, 1308, 'VIII-J-S'),
(1310, 'VIII-J-S.1', 'There are dormitories and housing facilities for students, faculty and staff.', 'viii-j-s1', 388, 389, 12, 3, 1309, 'VIII-J-S.1'),
(1311, 'VIII-J-S.2', 'There is an Implementing Rules and regulations (IRR) for in-campus housing services.', 'viii-j-s2', 390, 391, 12, 3, 1309, 'VIII-J-S.2'),
(1312, 'VIII-J-S.3', 'There is a system of coordinating with LGU\'s on privately owned boarding houses.', 'viii-j-s3_1', 392, 393, 12, 3, 1309, 'VIII-J-S.3'),
(1313, 'VIII-J-I', 'Implementation', 'viii-j-i_1', 371, 380, 12, 2, 1308, 'VIII-J-I'),
(1314, 'VIII-J-I.1', 'The housing facilities are functionally designed.', 'viii-j-i1', 372, 373, 12, 3, 1313, 'VIII-J-I.1'),
(1315, 'VIII-J-I.2', 'The housing facilities and surroundings are properly maintained and monitored.', 'viii-j-i2', 374, 375, 12, 3, 1313, 'VIII-J-I.2'),
(1316, 'VIII-J-I.3', 'The IRR on housing services is strictly followed (e.g. dormitory fees, etc.)', 'viii-j-i3', 376, 377, 12, 3, 1313, 'VIII-J-I.3'),
(1317, 'VIII-J-I.4', 'The institution coordinates with LGU\'s and owners of private boarding houses.', 'viii-j-i4', 378, 379, 12, 3, 1313, 'VIII-J-I.4'),
(1318, 'VIII-J-O', 'Outcome', 'viii-j-o_1', 381, 386, 12, 2, 1308, 'VIII-J-O'),
(1319, 'VIII-J-O.1', 'The housing facilities are safe, habitable and well-maintained.', 'viii-j-o1', 382, 383, 12, 3, 1318, 'VIII-J-O.1'),
(1320, 'VIII-J-O.2', 'There is wholesome coordination among the institution, the LGU\'s and the owners of private boarding houses.', 'viii-j-o2', 384, 385, 12, 3, 1318, 'VIII-J-O.2'),
(1321, 'III-E', 'Parameter E: Graduation Requirements', 'iii-e', 326, 347, 3, 1, 442, 'III-E'),
(1322, 'III-E-S', 'System - Inputs and Processes', 'iii-e-s', 331, 346, 3, 2, 1321, 'III-E-S'),
(1323, 'III-E-S.1', 'There is  policy on graduation requirements.', 'iii-e-s1', 344, 345, 3, 3, 1322, 'III-E-S.1'),
(1324, 'III-E-I', 'Implementation', 'iii-e-i', 332, 343, 3, 3, 1322, 'III-E-I'),
(1325, 'III-B-I.6', 'Classroom instruction is enriched through the use of the following strategies:', 'iii-b-i6', 110, 119, 3, 3, 491, 'III-B-I.6'),
(1326, 'III-E-I.1', 'The students are regularly informed of the academic requirements of their respective courses.', 'iii-e-i1', 333, 334, 3, 4, 1324, 'III-E-I.1'),
(1327, 'III-B-I.6.1', 'symposia, seminars, workshops, professional lectures;', 'iii-b-i61', 111, 112, 3, 4, 1325, 'III-B-I.6.1'),
(1328, 'III-B-I.6.2', 'educational tours/learning visits/other co-curricular activities;', 'iii-b-i62', 113, 114, 3, 4, 1325, 'III-B-I.6.2');
INSERT INTO `accreapp_category` (`id`, `code`, `description`, `slug`, `lft`, `rght`, `tree_id`, `level`, `parent_id`, `name`) VALUES
(1329, 'III-E-I.2', 'The College/Academic Unit implements the system for student returnees and transferees to meet the residence and other graduation requirements.', 'iii-e-i2', 335, 336, 3, 4, 1324, 'III-E-I.2'),
(1330, 'III-B-I.6.3', 'peer teaching/cooperative learning; and', 'iii-b-i63', 115, 116, 3, 4, 1325, 'III-B-I.6.3'),
(1331, 'III-E-I.3', 'Graduating students conduct research and/or undergo practicum/OJT or other activities prescribed in their respective curricula.', 'iii-e-i3', 337, 338, 3, 4, 1324, 'III-E-I.3'),
(1332, 'III-B-I.6.4', 'computer-assisted instruction (CAI) and computer-assisted learning (CAL).', 'iii-b-i64', 117, 118, 3, 4, 1325, 'III-B-I.6.4'),
(1333, 'III-E-I.4', 'The College/department of Information Technology assists the graduating students with academic deficiencies, disciplinary cases, and other problems which hinder issuance of clearances.', 'iii-e-i4', 339, 340, 3, 4, 1324, 'III-E-I.4'),
(1334, 'III-B-I.7', 'At least three (3) of the following course requirement are used:', 'iii-b-i7', 120, 139, 3, 3, 491, 'III-B-I.7'),
(1335, 'III-B-I.7.1', 'group/individual projects;', 'iii-b-i71', 121, 122, 3, 4, 1334, 'III-B-I.7.1'),
(1336, 'III-B-I.7.2', 'group/individual reports;', 'iii-b-i72', 123, 124, 3, 4, 1334, 'III-B-I.7.2'),
(1337, 'III-B-I.7.3', 'group/individual term papers;', 'iii-b-i73', 125, 126, 3, 4, 1334, 'III-B-I.7.3'),
(1338, 'III-B-I.7.4', 'performance activities;', 'iii-b-i74', 127, 128, 3, 4, 1334, 'III-B-I.7.4'),
(1339, 'III-E-I.5', 'Clearance from academic and3 financial accountabilities and responsibilities is required before graduation.', 'iii-e-i5', 341, 342, 3, 4, 1324, 'III-E-I.5'),
(1340, 'III-E-O', 'Outcome', 'iii-e-o', 327, 330, 3, 2, 1321, 'III-E-O'),
(1341, 'III-B-I.7.5', 'learning contract;', 'iii-b-i75', 129, 130, 3, 4, 1334, 'III-B-I.7.5'),
(1342, 'III-B-I.7.6', 'portfolio;', 'iii-b-i76', 131, 132, 3, 4, 1334, 'III-B-I.7.6'),
(1343, 'III-B-I.7.7', 'research study; and', 'iii-b-i77', 133, 134, 3, 4, 1334, 'III-B-I.7.7'),
(1344, 'III-B-I.7.8', 'research study; and', 'iii-b-i78', 135, 136, 3, 4, 1334, 'III-B-I.7.8'),
(1345, 'III-B-I.7.9', 'others (please specify) _________', 'iii-b-i79', 137, 138, 3, 4, 1334, 'III-B-I.7.9'),
(1346, 'III-B-I.8', 'Instruction is enriched through the use of at least ten (10) of the following techniques/strategies:', 'iii-b-i8', 140, 187, 3, 3, 491, 'III-B-I.8'),
(1347, 'III-B-I.8.1', 'film showing;', 'iii-b-i81', 141, 142, 3, 4, 1346, 'III-B-I.8.1'),
(1348, 'III-B-I.8.2', 'projects;', 'iii-b-i82', 163, 164, 3, 4, 1346, 'III-B-I.8.2'),
(1349, 'III-B-I.8.3', 'group dynamics;', 'iii-b-i83', 173, 174, 3, 4, 1346, 'III-B-I.8.3'),
(1350, 'III-B-I.8.4', 'case study;', 'iii-b-i84', 175, 176, 3, 4, 1346, 'III-B-I.8.4'),
(1351, 'III-B-I.8.5', 'workshops;', 'iii-b-i85', 177, 178, 3, 4, 1346, 'III-B-I.8.5'),
(1352, 'III-B-I.8.6', 'simulations;', 'iii-b-i86', 179, 180, 3, 4, 1346, 'III-B-I.8.6'),
(1353, 'III-B-I.8.7', 'dimensional question approach;', 'iii-b-i87', 181, 182, 3, 4, 1346, 'III-B-I.8.7'),
(1354, 'III-B-I.8.8', 'brainstorming;', 'iii-b-i88', 183, 184, 3, 4, 1346, 'III-B-I.8.8'),
(1355, 'III-B-I.8.9', 'buzz sessions;', 'iii-b-i89', 185, 186, 3, 4, 1346, 'III-B-I.8.9'),
(1356, 'III-B-I.8.10', 'informal creative groups;', 'iii-b-i810', 143, 144, 3, 4, 1346, 'III-B-I.8.10'),
(1357, 'III-B-I.8.11', 'interactive learning;', 'iii-b-i811', 145, 146, 3, 4, 1346, 'III-B-I.8.11'),
(1358, 'III-B-I.8.12', 'team teaching;', 'iii-b-i812', 147, 148, 3, 4, 1346, 'III-B-I.8.12'),
(1359, 'III-B-I.8.13', 'micro teaching;', 'iii-b-i813', 149, 150, 3, 4, 1346, 'III-B-I.8.13'),
(1360, 'III-B-I.8.14', 'macro teaching;', 'iii-b-i814', 151, 152, 3, 4, 1346, 'III-B-I.8.14'),
(1361, 'III-B-I.8.15', 'tandem teaching;', 'iii-b-i815', 153, 154, 3, 4, 1346, 'III-B-I.8.15'),
(1362, 'III-B-I.8.16', 'peer teaching;', 'iii-b-i816', 155, 156, 3, 4, 1346, 'III-B-I.8.16'),
(1363, 'III-B-I.8.17', 'multimedia/courseware/teachware;', 'iii-b-i817', 157, 158, 3, 4, 1346, 'III-B-I.8.17'),
(1364, 'III-B-I.8.18', 'experiments;', 'iii-b-i818', 159, 160, 3, 4, 1346, 'III-B-I.8.18'),
(1365, 'III-B-I.8.19', 'problem-solving;', 'iii-b-i819', 161, 162, 3, 4, 1346, 'III-B-I.8.19'),
(1366, 'III-B-I.8.20', 'type study methods;', 'iii-b-i820', 165, 166, 3, 4, 1346, 'III-B-I.8.20'),
(1367, 'III-B-I.8.21', 'reporting;', 'iii-b-i821', 167, 168, 3, 4, 1346, 'III-B-I.8.21'),
(1368, 'III-B-I.8.22', 'panel discussion; and', 'iii-b-i822', 169, 170, 3, 4, 1346, 'III-B-I.8.22'),
(1369, 'III-B-I.8.23', 'others (please specify) _________', 'iii-b-i823', 171, 172, 3, 4, 1346, 'III-B-I.8.23'),
(1370, 'III-B-I.9', 'Intructional Strategies provide for student\'s individual needs and multiple intelligences.', 'iii-b-i9', 188, 189, 3, 3, 491, 'III-B-I.9'),
(1371, 'III-B-I.10', 'Instruction is enhanced through the following:', 'iii-b-i10', 78, 93, 3, 3, 491, 'III-B-I.10'),
(1372, 'III-B-I.10.1', 'submission of approved and updated syllabus per course;', 'iii-b-i101', 79, 80, 3, 4, 1371, 'III-B-I.10.1'),
(1373, 'III-B-I.10.2', 'regular classroom observation/supervision;', 'iii-b-i102', 81, 82, 3, 4, 1371, 'III-B-I.10.2'),
(1374, 'III-B-I.10.3', 'regular faculty meetings with the College/Academic Unit/Dean/Department Chair;', 'iii-b-i103', 83, 84, 3, 4, 1371, 'III-B-I.10.3'),
(1375, 'III-E-O.1', 'At least 60% of the students enrolled in the program are able to graduate within the regular time frame.', 'iii-e-o1', 328, 329, 3, 3, 1340, 'III-E-O.1'),
(1376, 'III-B-I.10.4', 'regular faculty performance evaluation;', 'iii-b-i104', 85, 86, 3, 4, 1371, 'III-B-I.10.4'),
(1377, 'III-B-I.10.5', 'attendance/participation of faculty in in-service training;', 'iii-b-i105', 87, 88, 3, 4, 1371, 'III-B-I.10.5'),
(1378, 'III-B-I.10.6', 'conduct of experimental classes; and', 'iii-b-i106', 89, 90, 3, 4, 1371, 'III-B-I.10.6'),
(1379, 'III-B-I.10.7', 'adoption of alternative instructional delivery modes such as modular instruction, e-learning and online study.', 'iii-b-i107', 91, 92, 3, 4, 1371, 'III-B-I.10.7'),
(1380, 'III-B-I.11', 'Instructional Materials (IMs) are reviewed and recommended by the Instructional Materials Committee (IMC).', 'iii-b-i11', 94, 95, 3, 3, 491, 'III-B-I.11'),
(1381, 'III-B-I.12', 'Varied, multi-sensory materials and computer programs are utilized.', 'iii-b-i12', 96, 97, 3, 3, 491, 'III-B-I.12'),
(1382, 'III-B-I.13', 'The College/Academic Unit maintains consortia and linkages with other learning institutions for academic exchange of instructional materials.', 'iii-b-i13', 98, 99, 3, 3, 491, 'III-B-I.13'),
(1383, 'III-B-I.14', 'The faculty are encouraged to produce their own instructional materials such as modules, software, visual aids, manuals and textbooks.', 'iii-b-i14', 100, 101, 3, 3, 491, 'III-B-I.14'),
(1384, 'III-F', 'Parameter F: Administrative Support for Effective Instruction', 'iii-f', 348, 431, 3, 1, 442, 'III-F'),
(1385, 'III-B-O', 'Outcome', 'iii-b-o', 191, 198, 3, 2, 483, 'III-B-O'),
(1386, 'III-F-S', 'System - Inputs and Processes', 'iii-f-s', 421, 430, 3, 2, 1384, 'III-F-S'),
(1387, 'III-B-O.1', 'Course syllabi are updated and approved by concerned authorities.', 'iii-b-o1', 192, 193, 3, 3, 1385, 'III-B-O.1'),
(1388, 'III-F-S.1', 'The institution has policies on:', 'iii-f-s1', 422, 429, 3, 3, 1386, 'III-F-S.1'),
(1389, 'III-B-O.2', 'Varied teaching dtrategies are efficiently and effectively used.', 'iii-b-o2', 194, 195, 3, 3, 1385, 'III-B-O.2'),
(1390, 'III-B-O.3', 'Instructional Materials produced by the faculty are copyrighted/patented.', 'iii-b-o3', 196, 197, 3, 3, 1385, 'III-B-O.3'),
(1391, 'III-F-S.1.1', 'substitution or special arrangements whenever a faculty is on leave or absent;', 'iii-f-s11', 423, 424, 3, 4, 1388, 'III-F-S.1.1'),
(1392, 'III-C', 'Parameter C: Assessment of Academic Performance', 'iii-c', 214, 279, 3, 1, 442, 'III-C'),
(1393, 'III-C-S', 'System - Inputs and Processes', 'iii-c-s', 259, 278, 3, 2, 1392, 'III-C-S'),
(1394, 'III-C-S.1', 'The program of studies has a system of evaluating student performance through a combination of the following:', 'iii-c-s1', 260, 271, 3, 3, 1393, 'III-C-S.1'),
(1395, 'III-C-S.1.1', 'formative tests such as quizzes, units tests;', 'iii-c-s11', 261, 262, 3, 4, 1394, 'III-C-S.1.1'),
(1396, 'III-C-S.1.2', 'summative tests such as mid-term and final examinations;', 'iii-c-s12', 263, 264, 3, 4, 1394, 'III-C-S.1.2'),
(1397, 'III-C-S.1.3', 'project and term papers;', 'iii-c-s13', 265, 266, 3, 4, 1394, 'III-C-S.1.3'),
(1398, 'III-F-S.1.2', 'giving awards and/or recognition for faculty and students with outstanding achievements; and', 'iii-f-s12', 425, 426, 3, 4, 1388, 'III-F-S.1.2'),
(1399, 'III-C-S.1.4', 'practicum and performance tests; and', 'iii-c-s14', 267, 268, 3, 4, 1394, 'III-C-S.1.4'),
(1400, 'III-F-S.1.3', 'supervision/monitoring and evaluation of faculty performance.', 'iii-f-s13', 427, 428, 3, 4, 1388, 'III-F-S.1.3'),
(1401, 'III-C-S.1.5', 'other course requirements.', 'iii-c-s15', 269, 270, 3, 4, 1394, 'III-C-S.1.5'),
(1402, 'III-C-S.2', 'The summative tests have the following descriptions:', 'iii-c-s2', 272, 277, 3, 3, 1393, 'III-C-S.2'),
(1403, 'III-F-I', 'Implementation', 'iii-f-i', 349, 414, 3, 2, 1384, 'III-F-I'),
(1404, 'III-C-S.2.1', 'comprehensive enough to test the different levels of cognitive skills and knowledge of ocntent; and', 'iii-c-s21', 273, 274, 3, 4, 1402, 'III-C-S.2.1'),
(1405, 'III-C-S.2.2', 'based on well-designed Table of Specifications (TOS).', 'iii-c-s22', 275, 276, 3, 4, 1402, 'III-C-S.2.2'),
(1406, 'III-F-I.1', 'III-F-I.1		The institution implements rules on the attendance of the faculty in their respective classes and other academic related activities.', 'iii-f-i1', 350, 351, 3, 3, 1403, 'III-F-I.1'),
(1407, 'III-C-I', 'Implementation', 'iii-c-i', 215, 252, 3, 2, 1392, 'III-C-I'),
(1408, 'III-C-I.1', 'Varied evaluation measures are used, such as:', 'iii-c-i1', 216, 235, 3, 3, 1407, 'III-C-I.1'),
(1409, 'III-F-I.2', 'Dialogues are regularly conducted by the administration with the:', 'iii-f-i2', 352, 357, 3, 3, 1403, 'III-F-I.2'),
(1410, 'III-C-I.1.1', 'portfolio;', 'iii-c-i11', 217, 218, 3, 4, 1408, 'III-C-I.1.1'),
(1411, 'III-F-I.2.1', 'faculty; and', 'iii-f-i21', 353, 354, 3, 4, 1409, 'III-F-I.2.1'),
(1412, 'III-F-I.2.2', 'students', 'iii-f-i22', 355, 356, 3, 4, 1409, 'III-F-I.2.2'),
(1413, 'III-F-I.3', 'Quality instruction is assured through the following strategies:', 'iii-f-i3', 358, 375, 3, 3, 1403, 'III-F-I.3'),
(1414, 'III-F-I.3.1', 'conducting seminar/workshops on syllabi making;', 'iii-f-i31', 359, 360, 3, 4, 1413, 'III-F-I.3.1'),
(1415, 'III-F-I.3.2', 'holding workshops on test construction and the corresponding table of specifications;', 'iii-f-i32', 361, 362, 3, 4, 1413, 'III-F-I.3.2'),
(1416, 'III-F-I.3.3', 'conducting competency assessment;', 'iii-f-i33', 363, 364, 3, 4, 1413, 'III-F-I.3.3'),
(1417, 'III-F-I.3.4', 'conducting supervisory visit of classes and providing assistance, if necessary;', 'iii-f-i34', 365, 366, 3, 4, 1413, 'III-F-I.3.4'),
(1418, 'III-F-I.3.5', 'holding of regular faculty meetings;', 'iii-f-i35', 367, 368, 3, 4, 1413, 'III-F-I.3.5'),
(1419, 'III-F-I.3.6', 'requiring consultations between students and faculty;', 'iii-f-i36', 369, 370, 3, 4, 1413, 'III-F-I.3.6'),
(1420, 'III-F-I.3.7', 'conducting studies on academic performance of students and', 'i37', 371, 372, 3, 4, 1413, 'III-F-I.3.7'),
(1421, 'III-F-I.3.8', 'providing opportunities for the participation of the faculty in in-service training activities.', 'iii-f-i38', 373, 374, 3, 4, 1413, 'III-F-I.3.8'),
(1422, 'III-F-I.4', 'Periodic faculty performance evaluation on teaching and in other functions is conducted by at least three of the following:', 'iii-f-i4', 376, 387, 3, 3, 1403, 'III-F-I.4'),
(1423, 'III-F-I.4.1', 'the Dean/Academic Head/Department Chair;', 'iii-f-i41', 377, 378, 3, 4, 1422, 'III-F-I.4.1'),
(1424, 'III-F-I.4.2', 'the students;', 'iii-f-i42', 379, 380, 3, 4, 1422, 'III-F-I.4.2'),
(1425, 'III-F-I.4.3', 'the faculty members himself/herself;', 'iii-f-i43', 381, 382, 3, 4, 1422, 'III-F-I.4.3'),
(1426, 'III-F-I.4.4', 'peers; and', 'iii-f-i44', 383, 384, 3, 4, 1422, 'III-F-I.4.4'),
(1427, 'III-F-I.4.5', 'others (please specify) _____', 'iii-f-i45', 385, 386, 3, 4, 1422, 'III-F-I.4.5'),
(1428, 'III-F-I.5', 'The results of the performance evaluation are used to improve the performance/competencies of the faculty.', 'iii-f-i5', 388, 389, 3, 3, 1403, 'III-F-I.5'),
(1429, 'III-F-I.6', 'Students are given recognition for exemplary academic and non-academic performances.', 'iii-f-i6', 390, 391, 3, 3, 1403, 'III-F-I.6'),
(1430, 'III-F-I.7', 'Outstanding achievement of students is recognized and encouraged through:', 'iii-f-i7', 392, 405, 3, 3, 1403, 'III-F-I.7'),
(1431, 'III-F-I.7.1', 'inclusion in honor roll, Dean\'s list, etc.;', 'iii-f-i71', 393, 394, 3, 4, 1430, 'III-F-I.7.1'),
(1432, 'III-F-I.7.2', 'grant of tuition scholarships;', 'iii-f-i72', 395, 396, 3, 4, 1430, 'III-F-I.7.2'),
(1433, 'III-F-I.7.3', 'award of honor medals and merit certificates;', 'iii-f-i73', 397, 398, 3, 4, 1430, 'III-F-I.7.3'),
(1434, 'III-F-I.7.4', 'membership in honor societies/honor class/sections, etc.;', 'iii-f-i74', 399, 400, 3, 4, 1430, 'III-F-I.7.4'),
(1435, 'III-F-I.7.5', 'grant of special privileges such as opportunities for leadership and others (excluding exception from major exams on all professional business subjects); and', 'iii-f-i75', 401, 402, 3, 4, 1430, 'III-F-I.7.5'),
(1436, 'III-F-I.7.6', 'grant of awards and recognition for outstanding academic accomplishments, e.g. Best Thesis, Student Researcher of the Year, etc.', 'iii-f-i76', 403, 404, 3, 4, 1430, 'III-F-I.7.6'),
(1437, 'III-F-I.8', 'Indicators on performance of graduates are studied such as:', 'iii-f-i8', 406, 413, 3, 3, 1403, 'III-F-I.8'),
(1438, 'III-F-I.8.1', 'analysis of performance of graduates in the Information technology Licensure Examination; (if applicable)', 'iii-f-i81', 407, 408, 3, 4, 1437, 'III-F-I.8.1'),
(1439, 'III-F-I.8.2', 'employability of graduates; and', 'iii-f-i82', 409, 410, 3, 4, 1437, 'III-F-I.8.2'),
(1440, 'III-F-I.8.3', 'feedback from employers regarding performance of graduates.', 'iii-f-i83', 411, 412, 3, 4, 1437, 'III-F-I.8.3'),
(1441, 'III-F-O', 'Outcome', 'iii-f-o', 415, 420, 3, 2, 1384, 'III-F-O'),
(1442, 'III-F-O.1', 'The faculty and students have commendable performance as a result of administrative support.', 'iii-f-o1', 416, 417, 3, 3, 1441, 'III-F-O.1'),
(1443, 'III-F-O.2', 'The graduates of the programs are employable.', 'iii-f-o2', 418, 419, 3, 3, 1441, 'III-F-O.2'),
(1444, 'III-C-I.1.2', 'rubric assessment;', 'iii-c-i12', 219, 220, 3, 4, 1408, 'III-C-I.1.2'),
(1445, 'III-C-I.1.3', 'skills demonstration;', 'iii-c-i13', 221, 222, 3, 4, 1408, 'III-C-I.1.3'),
(1446, 'III-C-I.1.4', 'paper and pencil tests;', 'iii-c-i14', 223, 224, 3, 4, 1408, 'III-C-I.1.4'),
(1447, 'III-C-I.1.5', 'oral examinations;', 'iii-c-i15', 225, 226, 3, 4, 1408, 'III-C-I.1.5'),
(1448, 'III-C-I.1.6', 'group/individual reports;', 'iii-c-i16', 227, 228, 3, 4, 1408, 'III-C-I.1.6'),
(1449, 'III-C-I.1.7', 'group/individual study; and', 'iii-c-i17', 229, 230, 3, 4, 1408, 'III-C-I.1.7'),
(1450, 'III-C-I.1.8', 'others (please specify) _____', 'iii-c-i18', 231, 232, 3, 4, 1408, 'III-C-I.1.8'),
(1451, 'III-C-I.2', 'Evaluation tools/instruments are reviewed and revised periodically.', 'iii-c-i2', 236, 237, 3, 3, 1407, 'III-C-I.2'),
(1452, 'III-C-I.3', 'The faculty are trained how to assess student performance properly.', 'iii-c-i3', 238, 239, 3, 3, 1407, 'III-C-I.3'),
(1453, 'III-C-I.4', 'The College/Academic Unit encourages and supports assessment for multiple intelligences.', 'iii-c-i4', 233, 234, 3, 4, 1408, 'III-C-I.4'),
(1454, 'III-C-I.5', 'Course and test requirements are returned to students after results are checked, recorded, and analyzed.', 'iii-c-i5', 240, 241, 3, 3, 1407, 'III-C-I.5'),
(1455, 'III-C-I.6', 'The system of student evaluation and grading is defined, understood, and disseminated to:', 'iii-c-i6', 242, 251, 3, 3, 1407, 'III-C-I.6'),
(1456, 'III-C-I.6.1', 'students;', 'iii-c-i61', 243, 244, 3, 4, 1455, 'III-C-I.6.1'),
(1457, 'III-C-I.6.2', 'faculty;', 'iii-c-i62', 245, 246, 3, 4, 1455, 'III-C-I.6.2'),
(1458, 'III-C-I.6.3', 'academic administrators; and', 'iii-c-i63', 247, 248, 3, 4, 1455, 'III-C-I.6.3'),
(1459, 'III-C-I.6.4', 'parents/guardians.', 'iii-c-i64', 249, 250, 3, 4, 1455, 'III-C-I.6.4'),
(1460, 'III-C-O', 'Outcome', 'iii-c-o', 253, 258, 3, 2, 1392, 'III-C-O'),
(1461, 'III-C-O.1', 'The student\'s academic performance is commendable.', 'iii-c-o1', 254, 255, 3, 3, 1460, 'III-C-O.1'),
(1462, 'III-C-O.2', 'Retention rate of students is on the average.', 'iii-c-o2', 256, 257, 3, 3, 1460, 'III-C-O.2'),
(1463, 'III-D', 'Parameter D: Management of Learning', 'iii-d', 280, 325, 3, 1, 442, 'III-D'),
(1464, 'III-D-S', 'System - Inputs and Processes', 'iii-d-s', 309, 324, 3, 2, 1463, 'III-D-S'),
(1465, 'III-D-S.1', 'There are policies on management of learning which includes the following:', 'iii-d-s1', 310, 323, 3, 3, 1464, 'III-D-S.1'),
(1466, 'III-D-S.1.1', 'student attendance in class and other academic activities;', 'iii-d-s11', 311, 312, 3, 4, 1465, 'III-D-S.1.1'),
(1467, 'III-D-S.1.2', 'schedule of classes;', 'iii-d-s12', 313, 314, 3, 4, 1465, 'III-D-S.1.2'),
(1468, 'III-D-S.1.3', 'student discipline; and', 'iii-d-s13', 315, 316, 3, 4, 1465, 'III-D-S.1.3'),
(1469, 'III-D-S.1.4', 'maintenance of cleanliness and orderliness.', 'iii-d-s14', 317, 322, 3, 4, 1465, 'III-D-S.1.4'),
(1470, 'III-D-I', 'Implementation', 'iii-d-i', 281, 304, 3, 2, 1463, 'III-D-I'),
(1471, 'III-D-I.1', 'The policies on management of learning are enforced.', 'iii-d-i1', 282, 283, 3, 3, 1470, 'III-D-I.1'),
(1472, 'III-D-I.2', 'Student activities are well-planned and implemented.', 'iii-d-i2', 284, 285, 3, 3, 1470, 'III-D-I.2'),
(1473, 'III-D-I.3', 'Assignments are designed to reinforce teaching which results in student maximum learning.', 'iii-d-i3', 286, 287, 3, 3, 1470, 'III-D-I.3'),
(1474, 'III-D-I.4', 'In classess using lecture and other similar methods of teaching, the number of students does not exceed 50.', 'iii-d-i4', 288, 289, 3, 3, 1470, 'III-D-I.4'),
(1475, 'III-D-I.4.1', '48 sqm. - 25 students', 'iii-d-i41', 318, 319, 3, 5, 1469, 'III-D-I.4.1'),
(1476, 'III-D-I.4.2', '60 sqm. - 50 students', 'iii-d-i42', 320, 321, 3, 5, 1469, 'III-D-I.4.2'),
(1477, 'III-D-I.5', 'Classroom discipline is maintained in accordance with democratic practices.', 'iii-d-i5', 290, 291, 3, 3, 1470, 'III-D-I.5'),
(1478, 'III-D-I.6', 'The class officers and assigned students assist in maintaining cleanliness of classrooms, laboratories, corridors and the school campus.', 'iii-d-i6', 292, 293, 3, 3, 1470, 'III-D-I.6'),
(1479, 'III-D-I.7', 'Independent work and performance are encouraged and monitorerd in the following activities:', 'iii-d-i7', 294, 301, 3, 3, 1470, 'III-D-I.7'),
(1480, 'III-D-I.7.1', 'projects/eports;', 'iii-d-i71', 295, 296, 3, 4, 1479, 'III-D-I.7.1'),
(1481, 'III-D-I.7.2', 'thesis; and', 'iii-d-i72', 297, 298, 3, 4, 1479, 'III-D-I.7.2'),
(1482, 'III-D-I.7.3', 'others (specify) _____', 'iii-d-i73', 299, 300, 3, 4, 1479, 'III-D-I.7.3'),
(1483, 'III-D-I.8', 'In practicum courses (field study, OJT, practice teaching, etc.), the number of trainees supervised by each coordinator does not exceed 50.', 'iii-d-i8', 302, 303, 3, 3, 1470, 'III-D-I.8'),
(1484, 'III-D-O', 'Outcome', 'iii-d-o', 305, 308, 3, 2, 1463, 'III-D-O'),
(1485, 'III-D-O.1', 'Learning is efficiently and effectively managed.', 'iii-d-o1', 306, 307, 3, 3, 1484, 'III-D-O.1');

-- --------------------------------------------------------

--
-- Table structure for table `accreapp_file`
--

CREATE TABLE `accreapp_file` (
  `id` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `order` int(11) NOT NULL,
  `extracted_text` longtext DEFAULT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` date DEFAULT NULL,
  `accre_details_id` int(11) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accreapp_file`
--

INSERT INTO `accreapp_file` (`id`, `file_name`, `description`, `order`, `extracted_text`, `uploaded_at`, `user_id`, `date_created`, `accre_details_id`, `flag`) VALUES
(62, '11002.pdf', 'To be updated...', 1, 'To be updated...', '2020-08-24 05:22:57.497056', 1, NULL, 1, 1),
(63, 'Laptop_to_Desktop_Conversion.pdf', ' wewe', 1, 'To be updated...', '2020-08-24 05:30:28.303884', 1, NULL, 1, 1),
(64, 'Sample_SALN_Form_2019.pdf', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum ', 1, 'To be updated...', '2020-08-24 05:44:46.967955', 2, '2018-08-14', 1, 0),
(65, 'ccnach11_110809183828_phpapp02.pdf', 'To be updated...', 1, 'To be updated...', '2020-08-25 00:25:24.588470', 1, NULL, 1, 0),
(66, 'elementsofc_160229095039.pdf', 'To be updated...', 1, 'To be updated...', '2020-08-25 00:29:38.527184', 1, NULL, 1, 0),
(67, 'django_tornado_websockets_latest.pdf', 'To be updated...', 1, 'To be updated...', '2020-08-25 00:29:38.567861', 1, NULL, 1, 0),
(68, 'cprogramming_170502104348.pdf', 'To be updated...', 1, 'To be updated...', '2020-08-25 00:29:38.627544', 1, NULL, 1, 0),
(69, 'Software_Engineering_9th_ed_intro_txt_I_Sommerville_Pearson_2011_BBS.pdf', 'To be updated...', 1, 'To be updated...', '2020-08-25 00:29:38.807451', 1, NULL, 1, 0),
(70, 'Morales_April16_30.pdf', 'To be updated...', 1, 'To be updated...', '2020-08-25 00:36:11.696293', 2, NULL, 1, 0),
(71, 'Morales_April1_15.pdf', 'To be updated...', 1, 'To be updated...', '2020-08-25 00:36:11.734025', 2, NULL, 1, 0),
(72, 'Morales_May1_15.pdf', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 'To be updated...', '2020-08-25 00:36:11.757016', 2, '2017-06-15', 1, 0),
(73, 'Morales_March16_31.pdf', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 'To be updated...', '2020-08-25 00:36:11.798964', 2, '2017-06-15', 1, 0),
(74, 'Morales_May16_31.pdf', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, 'To be updated...', '2020-08-25 00:36:11.811216', 2, '2017-06-15', 1, 0),
(75, 'Morales_March1_15.pdf', 'To be updated...', 1, 'To be updated...', '2020-09-04 04:07:38.513369', 1, NULL, 1, 0),
(76, 'Morales_FacultySched_2020.pdf', 'To be updated...', 1, 'To be updated...', '2020-09-04 04:08:09.679404', 1, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `accreapp_log`
--

CREATE TABLE `accreapp_log` (
  `id` int(11) NOT NULL,
  `log_time` datetime(6) NOT NULL,
  `activity` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `accreapp_profile`
--

CREATE TABLE `accreapp_profile` (
  `id` int(11) NOT NULL,
  `office` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accreapp_profile`
--

INSERT INTO `accreapp_profile` (`id`, `office`, `department`, `designation`, `birth_date`, `address`, `user_id`) VALUES
(1, 'CCIS', 'Information Technology', 'None', '1989-02-20', 'Baan Km.3, Butuan City', 1),
(2, 'CCIS', 'IT', 'None', '2019-10-07', '', 2),
(3, 'N/A', 'N/A', 'N/A', '2020-09-01', '', 3),
(6, 'CCIS', 'IS', 'Instructor1', '2020-09-01', '', 6),
(7, 'Accreditor', 'Accreditor', 'Accreditor', '2020-09-01', '', 27),
(8, 'CCIS', 'IS', 'Faculty', '2020-09-01', '', 18),
(9, 'CCIS', 'IT', 'Faculty', '2020-09-01', '', 23),
(10, 'CCIS', 'IT', 'Faculty', '2020-09-01', '', 14),
(11, 'CCIS', 'IT', 'Faculty', '2020-09-01', '', 20),
(12, 'CCIS', 'CS', 'Faculty', '2020-09-01', '', 15),
(13, 'CCIS', 'CS', 'Faculty', '2020-09-01', '', 7),
(14, 'CCIS', 'IS', 'Faculty', '2020-09-01', '', 10),
(15, 'CCIS', 'IS', 'Faculty', '2020-09-01', '', 21),
(16, 'CCIS', 'CS', 'Faculty', '2020-09-01', '', 25),
(17, 'CCIS', 'IS', 'Faculty', '2020-09-01', '', 8),
(18, 'CCIS', 'IS', 'Faculty', '2020-09-01', '', 26),
(19, 'CCIS', 'IS', 'Faculty', '2020-09-01', '', 11),
(20, 'CCIS', 'IT', 'Faculty', '2020-09-01', '', 13),
(21, 'CCIS', 'CS', 'Faculty', '2020-09-01', '', 9),
(22, 'CCIS', 'IT', 'Faculty', '2020-09-01', '', 16),
(23, 'CCIS', 'IT', 'Faculty', '2020-09-01', '', 24),
(24, 'CCIS', 'IS', 'Faculty', '2020-09-01', '', 12),
(25, 'CCIS', 'IT', 'Faculty', '2020-09-01', '', 22),
(26, 'CCIS', 'CS', 'Faculty', '2020-09-01', '', 17),
(27, 'CCIS', 'IS', 'Faculty', '2020-09-01', '', 19),
(28, 'CCIS', 'IT', 'Faculty', '2020-09-01', '', 28);

-- --------------------------------------------------------

--
-- Table structure for table `accreapp_taggedwhatever`
--

CREATE TABLE `accreapp_taggedwhatever` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accreapp_taggedwhatever`
--

INSERT INTO `accreapp_taggedwhatever` (`id`, `object_id`, `content_type_id`, `tag_id`, `user_id`) VALUES
(201, 63, 9, 17, 1),
(212, 69, 9, 15, 1),
(213, 69, 9, 15, 1),
(214, 67, 9, 15, 1),
(215, 69, 9, 15, 1),
(216, 69, 9, 15, 1),
(217, 67, 9, 15, 1),
(218, 64, 9, 17, 1),
(219, 68, 9, 17, 1),
(220, 68, 9, 17, 1),
(221, 66, 9, 17, 1),
(230, 73, 9, 23, 1),
(231, 73, 9, 10, 1),
(234, 73, 9, 23, 1),
(235, 73, 9, 10, 1),
(239, 73, 9, 23, 1),
(240, 73, 9, 10, 1),
(242, 72, 9, 10, 1),
(250, 74, 9, 23, 1),
(252, 74, 9, 6, 1),
(253, 74, 9, 23, 1),
(254, 74, 9, 23, 1),
(255, 74, 9, 23, 1),
(256, 74, 9, 23, 1),
(257, 74, 9, 23, 1),
(259, 71, 9, 1014, 1),
(260, 71, 9, 1014, 1),
(261, 70, 9, 1014, 1);

-- --------------------------------------------------------

--
-- Table structure for table `actstream_action`
--

CREATE TABLE `actstream_action` (
  `id` int(11) NOT NULL,
  `actor_object_id` varchar(255) NOT NULL,
  `verb` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `target_object_id` varchar(255) DEFAULT NULL,
  `action_object_object_id` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `action_object_content_type_id` int(11) DEFAULT NULL,
  `actor_content_type_id` int(11) NOT NULL,
  `target_content_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actstream_action`
--

INSERT INTO `actstream_action` (`id`, `actor_object_id`, `verb`, `description`, `target_object_id`, `action_object_object_id`, `timestamp`, `public`, `action_object_content_type_id`, `actor_content_type_id`, `target_content_type_id`) VALUES
(70, '1', 'Added', 'Added File  11001.pdf', '9', NULL, '2020-08-24 05:22:57.481421', 1, 9, 4, 5),
(71, '1', 'Added', 'Added File  11002.pdf', '9', NULL, '2020-08-24 05:22:57.497056', 1, 9, 4, 5),
(73, '1', 'Added', 'Added File  Laptop_to_Desktop_Conversion.pdf', '9', NULL, '2020-08-24 05:30:28.303884', 1, 9, 4, 5),
(74, '1', 'Deleted', 'Deleted File  11002.pdf', '9', '62', '2020-08-24 05:30:34.735659', 1, 9, 4, 5),
(75, '2', 'Updated', 'Updated File  Laptop_to_Desktop_Conversion.pdf\'s description.', '9', '63', '2020-08-24 05:39:32.294477', 1, 9, 4, 5),
(76, '2', 'Updated', 'Updated File  Laptop_to_Desktop_Conversion.pdf\'s description.', '9', '63', '2020-08-24 05:39:41.440735', 1, 9, 4, 5),
(77, '2', 'Added', 'Added File  Sample_SALN_Form_2019.pdf', '9', NULL, '2020-08-24 05:44:46.952314', 1, 9, 4, 5),
(78, '1', 'Tagged', 'Tagged File  Laptop_to_Desktop_Conversion.pdf on V-D-I.3', '9', '63', '2020-08-24 05:53:46.890067', 1, 9, 4, 5),
(79, '1', 'Updated', 'Updated File  Laptop_to_Desktop_Conversion.pdf\'s description.', '9', '63', '2020-08-24 05:53:46.890067', 1, 9, 4, 5),
(80, '1', 'Tagged', 'Tagged File  Sample_SALN_Form_2019.pdf on V-D-I.3', '9', '64', '2020-08-24 05:55:12.767770', 1, 9, 4, 5),
(81, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 05:55:12.771650', 1, 9, 4, 5),
(82, '1', 'Tagged', 'Tagged File  Sample_SALN_Form_2019.pdf on V-D-I.3,I-A', '9', '64', '2020-08-24 05:55:21.841230', 1, 9, 4, 5),
(83, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 05:55:21.841230', 1, 9, 4, 5),
(84, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 06:18:57.848483', 1, 9, 4, 5),
(85, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description and date.', '9', '64', '2020-08-24 06:24:04.283622', 1, 9, 4, 5),
(86, '1', 'Tagged', 'Tagged File  Sample_SALN_Form_2019.pdf on I-A-I.3', '9', '64', '2020-08-24 06:32:52.201412', 1, 9, 4, 5),
(87, '1', 'Tagged', 'Tagged File  Sample_SALN_Form_2019.pdf on I-A-S.5.5', '9', '64', '2020-08-24 06:33:08.908908', 1, 9, 4, 5),
(88, '1', 'Tagged', 'Tagged File  Laptop_to_Desktop_Conversion.pdf on I-A-I.1', '9', '63', '2020-08-24 07:21:00.447901', 1, 9, 4, 5),
(89, '1', 'Updated', 'Updated File  Laptop_to_Desktop_Conversion.pdf\'s description.', '9', '63', '2020-08-24 07:21:00.450989', 1, 9, 4, 5),
(90, '1', 'Tagged', 'Tagged File  Laptop_to_Desktop_Conversion.pdf on I-A-I.1,I-A-I', '9', '63', '2020-08-24 07:21:04.541196', 1, 9, 4, 5),
(91, '1', 'Updated', 'Updated File  Laptop_to_Desktop_Conversion.pdf\'s description.', '9', '63', '2020-08-24 07:21:04.543960', 1, 9, 4, 5),
(92, '1', 'Tagged', 'Tagged File  Laptop_to_Desktop_Conversion.pdf on I-A-I.1,I-A-I,I-A-S', '9', '63', '2020-08-24 07:21:09.250699', 1, 9, 4, 5),
(93, '1', 'Updated', 'Updated File  Laptop_to_Desktop_Conversion.pdf\'s description.', '9', '63', '2020-08-24 07:21:09.253693', 1, 9, 4, 5),
(94, '1', 'Tagged', 'Tagged File  Sample_SALN_Form_2019.pdf on I-A,IV-A-I.1', '9', '64', '2020-08-24 07:22:31.233186', 1, 9, 4, 5),
(95, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:22:31.235652', 1, 9, 4, 5),
(96, '2', 'Updated', 'Updated File  Laptop_to_Desktop_Conversion.pdf\'s description.', '9', '63', '2020-08-24 07:41:35.632267', 1, 9, 4, 5),
(97, '2', 'Tagged', 'Tagged File  Laptop_to_Desktop_Conversion.pdf on IV-D-I.20', '9', '63', '2020-08-24 07:41:45.842788', 1, 9, 4, 5),
(98, '2', 'Updated', 'Updated File  Laptop_to_Desktop_Conversion.pdf\'s description.', '9', '63', '2020-08-24 07:41:45.846957', 1, 9, 4, 5),
(99, '2', 'Removed tag', 'Removed tag  Sample_SALN_Form_2019.pdf', '9', '64', '2020-08-24 07:46:41.483726', 1, 9, 4, 5),
(100, '1', 'Tagged', 'Tagged File  Sample_SALN_Form_2019.pdf on I-A-I.1', '9', '64', '2020-08-24 07:48:11.266223', 1, 9, 4, 5),
(101, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:48:11.270231', 1, 9, 4, 5),
(102, '1', 'Tagged', 'Tagged File  Sample_SALN_Form_2019.pdf on I-A-I.1,I-A-S.5', '9', '64', '2020-08-24 07:48:15.462401', 1, 9, 4, 5),
(103, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:48:15.465423', 1, 9, 4, 5),
(104, '1', 'Removed tag', 'Removed tag  IV-A-I.1  on Sample_SALN_Form_2019.pdf', '9', '64', '2020-08-24 07:48:35.741562', 1, 9, 4, 5),
(105, '1', 'Removed tag', 'Removed tag  IV-D-I.20  on Laptop_to_Desktop_Conversion.pdf', '13', '63', '2020-08-24 07:50:35.984279', 1, 9, 4, 5),
(106, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:53:47.875050', 1, 9, 4, 5),
(107, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:53:49.510367', 1, 9, 4, 5),
(108, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:53:50.064494', 1, 9, 4, 5),
(109, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:53:50.278070', 1, 9, 4, 5),
(110, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:53:50.465837', 1, 9, 4, 5),
(111, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:53:50.669288', 1, 9, 4, 5),
(112, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:53:50.848991', 1, 9, 4, 5),
(113, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-24 07:53:51.078022', 1, 9, 4, 5),
(114, '1', 'Updated', 'Updated File  Laptop_to_Desktop_Conversion.pdf\'s description.', '9', '63', '2020-08-24 07:53:58.641858', 1, 9, 4, 5),
(115, '1', 'Deleted', 'Deleted File  Laptop_to_Desktop_Conversion.pdf', '9', '63', '2020-08-24 07:54:56.845965', 1, 9, 4, 5),
(116, '1', 'Added', 'Added File  ccnach11_110809183828_phpapp02.pdf', '9', NULL, '2020-08-25 00:25:24.567661', 1, 9, 4, 5),
(117, '1', 'Tagged', 'Tagged File  Sample_SALN_Form_2019.pdf on II-A-I.1.6', '9', '64', '2020-08-25 00:28:58.842770', 1, 9, 4, 5),
(118, '1', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-25 00:28:58.853894', 1, 9, 4, 5),
(119, '1', 'Added', 'Added File  cprogramming_170502104348.pdf', '9', NULL, '2020-08-25 00:29:38.469990', 1, 9, 4, 5),
(120, '1', 'Added', 'Added File  elementsofc_160229095039.pdf', '9', NULL, '2020-08-25 00:29:38.513661', 1, 9, 4, 5),
(121, '1', 'Added', 'Added File  django_tornado_websockets_latest.pdf', '9', NULL, '2020-08-25 00:29:38.559698', 1, 9, 4, 5),
(122, '1', 'Added', 'Added File  Software_Engineering_9th_ed_intro_txt_I_Sommerville_Pearson_2011_BBS.pdf', '9', NULL, '2020-08-25 00:29:38.659628', 1, 9, 4, 5),
(123, '2', 'Tagged', 'Tagged File  Software_Engineering_9th_ed_intro_txt_I_Sommerville_Pearson_2011_BBS.pdf on I-A-S.5.5', '9', '69', '2020-08-25 00:32:16.565789', 1, 9, 4, 5),
(124, '2', 'Updated', 'Updated File  Software_Engineering_9th_ed_intro_txt_I_Sommerville_Pearson_2011_BBS.pdf\'s description.', '9', '69', '2020-08-25 00:32:16.570218', 1, 9, 4, 5),
(125, '2', 'Tagged', 'Tagged File  django_tornado_websockets_latest.pdf on I-A-S.5.5', '9', '67', '2020-08-25 00:32:16.587149', 1, 9, 4, 5),
(126, '2', 'Updated', 'Updated File  django_tornado_websockets_latest.pdf\'s description.', '9', '67', '2020-08-25 00:32:16.597134', 1, 9, 4, 5),
(127, '2', 'Tagged', 'Tagged File  Software_Engineering_9th_ed_intro_txt_I_Sommerville_Pearson_2011_BBS.pdf on I-A-S.5.5', '9', '69', '2020-08-25 00:32:22.349662', 1, 9, 4, 5),
(128, '2', 'Updated', 'Updated File  Software_Engineering_9th_ed_intro_txt_I_Sommerville_Pearson_2011_BBS.pdf\'s description.', '9', '69', '2020-08-25 00:32:22.351730', 1, 9, 4, 5),
(129, '2', 'Tagged', 'Tagged File  django_tornado_websockets_latest.pdf on I-A-S.5.5', '9', '67', '2020-08-25 00:32:22.368224', 1, 9, 4, 5),
(130, '2', 'Updated', 'Updated File  django_tornado_websockets_latest.pdf\'s description.', '9', '67', '2020-08-25 00:32:22.372229', 1, 9, 4, 5),
(131, '2', 'Updated', 'Updated File  elementsofc_160229095039.pdf\'s description.', '9', '66', '2020-08-25 00:33:07.261341', 1, 9, 4, 5),
(132, '2', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-25 00:33:20.483391', 1, 9, 4, 5),
(133, '2', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description.', '9', '64', '2020-08-25 00:34:15.621607', 1, 9, 4, 5),
(134, '2', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description and date.', '9', '64', '2020-08-25 00:34:39.130312', 1, 9, 4, 5),
(135, '2', 'Tagged', 'Tagged File  Sample_SALN_Form_2019.pdf on I-A-I', '9', '64', '2020-08-25 00:34:56.178767', 1, 9, 4, 5),
(136, '2', 'Updated', 'Updated File  Sample_SALN_Form_2019.pdf\'s description and date.', '9', '64', '2020-08-25 00:34:56.178767', 1, 9, 4, 5),
(137, '2', 'Added', 'Added File  Morales_April16_30.pdf', '9', NULL, '2020-08-25 00:36:11.656635', 1, 9, 4, 5),
(138, '2', 'Added', 'Added File  Morales_April1_15.pdf', '9', NULL, '2020-08-25 00:36:11.711193', 1, 9, 4, 5),
(139, '2', 'Added', 'Added File  Morales_May1_15.pdf', '9', NULL, '2020-08-25 00:36:11.725292', 1, 9, 4, 5),
(140, '2', 'Added', 'Added File  Morales_May16_31.pdf', '9', NULL, '2020-08-25 00:36:11.781253', 1, 9, 4, 5),
(141, '2', 'Added', 'Added File  Morales_March16_31.pdf', '9', NULL, '2020-08-25 00:36:11.784552', 1, 9, 4, 5),
(142, '2', 'Tagged', 'Tagged File  cprogramming_170502104348.pdf on I-A-I', '9', '68', '2020-08-25 00:38:25.799988', 1, 9, 4, 5),
(143, '2', 'Updated', 'Updated File  cprogramming_170502104348.pdf\'s description and date.', '9', '68', '2020-08-25 00:38:25.806664', 1, 9, 4, 5),
(144, '2', 'Tagged', 'Tagged File  elementsofc_160229095039.pdf on I-A-I', '9', '66', '2020-08-25 00:38:25.828054', 1, 9, 4, 5),
(145, '2', 'Updated', 'Updated File  elementsofc_160229095039.pdf\'s description and date.', '9', '66', '2020-08-25 00:38:25.833439', 1, 9, 4, 5),
(146, '2', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I-A-I.3,I-A-S.5', '9', '74', '2020-08-25 00:39:08.981133', 1, 9, 4, 5),
(147, '2', 'Updated', 'Updated File  Morales_May16_31.pdf\'s description and date.', '9', '74', '2020-08-25 00:39:08.987124', 1, 9, 4, 5),
(148, '2', 'Tagged', 'Tagged File  Morales_March16_31.pdf on I-A-I.3,I-A-S.5', '9', '73', '2020-08-25 00:39:09.035148', 1, 9, 4, 5),
(149, '2', 'Updated', 'Updated File  Morales_March16_31.pdf\'s description and date.', '9', '73', '2020-08-25 00:39:09.040185', 1, 9, 4, 5),
(150, '2', 'Tagged', 'Tagged File  Morales_May1_15.pdf on I-A-I.3,I-A-S.5', '9', '72', '2020-08-25 00:39:09.088463', 1, 9, 4, 5),
(151, '2', 'Updated', 'Updated File  Morales_May1_15.pdf\'s description and date.', '9', '72', '2020-08-25 00:39:09.092383', 1, 9, 4, 5),
(152, '2', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I-A-I.3', '9', '74', '2020-08-25 00:39:39.844552', 1, 9, 4, 5),
(153, '2', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I-A-I.3,I-A-S.4', '9', '74', '2020-08-25 00:39:45.781767', 1, 9, 4, 5),
(154, '2', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I-A-I.3,I-A-S.4,I-A-S.1', '9', '74', '2020-08-25 00:39:52.068678', 1, 9, 4, 5),
(155, '1', 'Removed tag', 'Removed tag  I-A-S.4  on Morales_May16_31.pdf', '13', '74', '2020-08-25 01:22:26.757838', 1, 9, 4, 5),
(156, '1', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I-A-I.3', '9', '74', '2020-08-25 01:29:00.231469', 1, 9, 4, 5),
(157, '1', 'Updated', 'Updated File  Morales_May16_31.pdf\'s description.', '9', '74', '2020-08-25 01:29:00.251279', 1, 9, 4, 5),
(158, '1', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I-A-I.3', '9', '74', '2020-08-25 01:29:03.833158', 1, 9, 4, 5),
(159, '1', 'Updated', 'Updated File  Morales_May16_31.pdf\'s description.', '9', '74', '2020-08-25 01:29:03.836269', 1, 9, 4, 5),
(160, '1', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I-A-I.3', '9', '74', '2020-08-25 01:29:05.734631', 1, 9, 4, 5),
(161, '1', 'Updated', 'Updated File  Morales_May16_31.pdf\'s description.', '9', '74', '2020-08-25 01:29:05.738813', 1, 9, 4, 5),
(162, '1', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I-A-I.3', '9', '74', '2020-08-25 01:29:08.532759', 1, 9, 4, 5),
(163, '1', 'Updated', 'Updated File  Morales_May16_31.pdf\'s description.', '9', '74', '2020-08-25 01:29:08.535754', 1, 9, 4, 5),
(164, '1', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I-A-I.3', '9', '74', '2020-08-25 01:29:29.122335', 1, 9, 4, 5),
(165, '1', 'Updated', 'Updated File  Morales_May16_31.pdf\'s description.', '9', '74', '2020-08-25 01:29:29.129419', 1, 9, 4, 5),
(166, '1', 'Tagged', 'Tagged File  Morales_May16_31.pdf on I', '9', '74', '2020-08-25 01:29:42.762950', 1, 9, 4, 5),
(167, '1', 'Updated', 'Updated File  Morales_May16_31.pdf\'s description.', '9', '74', '2020-08-25 01:29:42.767561', 1, 9, 4, 5),
(168, '1', 'Removed tag', 'Removed tag  I  on Morales_May16_31.pdf', '13', '74', '2020-08-25 02:09:09.972235', 1, 9, 4, 5),
(169, '1', 'Updated', 'Updated File  Morales_April1_15.pdf\'s description.', '9', '71', '2020-08-25 02:52:13.131014', 1, 9, 4, 5),
(170, '1', 'Updated', 'Updated File  Morales_April16_30.pdf\'s description.', '9', '70', '2020-08-25 02:52:13.139021', 1, 9, 4, 5),
(171, '1', 'Tagged', 'Tagged File  Morales_April1_15.pdf on VII-E-S.9.13', '9', '71', '2020-08-25 04:56:22.283949', 1, 9, 4, 5),
(172, '1', 'Updated', 'Updated File  Morales_April1_15.pdf\'s description.', '9', '71', '2020-08-25 04:56:22.288187', 1, 9, 4, 5),
(173, '1', 'Tagged', 'Tagged File  Morales_April16_30.pdf on VII-E-S.9.13', '9', '70', '2020-08-25 04:56:22.305608', 1, 9, 4, 5),
(174, '1', 'Updated', 'Updated File  Morales_April16_30.pdf\'s description.', '9', '70', '2020-08-25 04:56:22.309801', 1, 9, 4, 5),
(175, '1', 'Removed tag', 'Removed tag  I-A-I.3  on Morales_May1_15.pdf', '13', '72', '2020-09-01 06:10:00.213681', 1, 9, 4, 5),
(176, '1', 'Added', 'Added File  Morales_March1_15.pdf', '9', NULL, '2020-09-04 04:07:38.482782', 1, 9, 4, 5),
(177, '1', 'Added', 'Added File  Morales_FacultySched_2020.pdf', '9', NULL, '2020-09-04 04:08:09.672890', 1, 9, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `actstream_follow`
--

CREATE TABLE `actstream_follow` (
  `id` int(11) NOT NULL,
  `object_id` varchar(255) NOT NULL,
  `actor_only` tinyint(1) NOT NULL,
  `started` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Classifiers');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 33),
(2, 1, 34),
(4, 1, 36),
(5, 1, 41),
(6, 1, 42),
(8, 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add tag', 7, 'add_tag'),
(26, 'Can change tag', 7, 'change_tag'),
(27, 'Can delete tag', 7, 'delete_tag'),
(28, 'Can view tag', 7, 'view_tag'),
(29, 'Can add tagged item', 8, 'add_taggeditem'),
(30, 'Can change tagged item', 8, 'change_taggeditem'),
(31, 'Can delete tagged item', 8, 'delete_taggeditem'),
(32, 'Can view tagged item', 8, 'view_taggeditem'),
(33, 'Can add Media File (Scanned/Uploaded)', 9, 'add_file'),
(34, 'Can change Media File (Scanned/Uploaded)', 9, 'change_file'),
(35, 'Can delete Media File (Scanned/Uploaded)', 9, 'delete_file'),
(36, 'Can view Media File (Scanned/Uploaded)', 9, 'view_file'),
(37, 'Can add Log', 10, 'add_log'),
(38, 'Can change Log', 10, 'change_log'),
(39, 'Can delete Log', 10, 'delete_log'),
(40, 'Can view Log', 10, 'view_log'),
(41, 'Can add tagged file', 11, 'add_taggedfile'),
(42, 'Can change tagged file', 11, 'change_taggedfile'),
(43, 'Can delete tagged file', 11, 'delete_taggedfile'),
(44, 'Can view tagged file', 11, 'view_taggedfile'),
(45, 'Can add category', 12, 'add_category'),
(46, 'Can change category', 12, 'change_category'),
(47, 'Can delete category', 12, 'delete_category'),
(48, 'Can view category', 12, 'view_category'),
(49, 'Can add tagged whatever', 13, 'add_taggedwhatever'),
(50, 'Can change tagged whatever', 13, 'change_taggedwhatever'),
(51, 'Can delete tagged whatever', 13, 'delete_taggedwhatever'),
(52, 'Can view tagged whatever', 13, 'view_taggedwhatever'),
(53, 'Can add Tag', 14, 'add_mycustomtag'),
(54, 'Can change Tag', 14, 'change_mycustomtag'),
(55, 'Can delete Tag', 14, 'delete_mycustomtag'),
(56, 'Can view Tag', 14, 'view_mycustomtag'),
(57, 'Can add Profile', 15, 'add_profile'),
(58, 'Can change Profile', 15, 'change_profile'),
(59, 'Can delete Profile', 15, 'delete_profile'),
(60, 'Can view Profile', 15, 'view_profile'),
(61, 'Can add accre details', 16, 'add_accredetails'),
(62, 'Can change accre details', 16, 'change_accredetails'),
(63, 'Can delete accre details', 16, 'delete_accredetails'),
(64, 'Can view accre details', 16, 'view_accredetails'),
(65, 'Can add action', 17, 'add_action'),
(66, 'Can change action', 17, 'change_action'),
(67, 'Can delete action', 17, 'delete_action'),
(68, 'Can view action', 17, 'view_action'),
(69, 'Can add follow', 18, 'add_follow'),
(70, 'Can change follow', 18, 'change_follow'),
(71, 'Can delete follow', 18, 'delete_follow'),
(72, 'Can view follow', 18, 'view_follow');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$XBMXwl9rMj1z$eWN0YuFdlvbynG+H1TFwOUZoocX5taWaatLvjfZkWys=', '2020-09-05 08:55:01.355597', 1, 'matt', '', '', 'idsilmat@gmail.com', 1, 1, '2020-08-10 05:10:32.660954'),
(2, 'pbkdf2_sha256$150000$a9WOL0xYuAT7$qAREQPxSLgKYme1bRgoOFp5Nn2aDIkruAlfJ32vue0k=', '2020-09-01 03:50:19.019821', 0, 'classifier1', '', '', '', 1, 1, '2020-08-10 09:22:01.000000'),
(3, 'pbkdf2_sha256$150000$hAjUHrxUWRYR$RQxGiddccVFFmmBbfCKPPJ8lBdvSANN62RT2aXTgjFo=', '2020-09-01 08:00:46.020143', 0, 'viewer', '', '', '', 0, 1, '2020-09-01 02:19:05.419133'),
(6, 'pbkdf2_sha256$150000$YEmanrlTNdaV$KbTOUjxxe8ATCx4M/5QzAKz2aF2OUZrzmxS9VnlLcDg=', '2020-09-03 08:08:37.463512', 1, 'esmoyon', 'Elbert', 'Moyon', 'esmoyon@carsu.edu.ph', 1, 1, '2020-09-01 04:37:21.000000'),
(7, 'pbkdf2_sha256$150000$mdJsWqVhV7dx$ndGivd8HHn3Sw1Cgxs0M4WvCfj/cv/K+L/oAOF+4Pos=', NULL, 0, 'jcsaga', '', '', '', 1, 1, '2020-09-01 06:51:10.000000'),
(8, 'pbkdf2_sha256$150000$XB6053n78NON$iwOAUTzs3zTmHV48iTNNe3b6tm0gan1OuSTmFdNo7+4=', NULL, 0, 'jpjaictin', '', '', '', 1, 1, '2020-09-01 06:52:18.000000'),
(9, 'pbkdf2_sha256$150000$mDrKZXL5GaHN$gXMyMuArYoXd0Afa847X6G2f61SGx15pkXebjejPwtU=', NULL, 0, 'mmortuyo', '', '', '', 1, 1, '2020-09-01 06:52:28.000000'),
(10, 'pbkdf2_sha256$150000$BLWOn33JR32W$EMxnOMdf9OVZzZWd9zzBoltkCU8orWD7TaQWiDleY7c=', NULL, 0, 'jesabugaa', '', '', '', 1, 1, '2020-09-01 06:53:12.000000'),
(11, 'pbkdf2_sha256$150000$1X9R5QqNPmfT$MQaCmdvWGilqs8r/voasS1WYqcmqkVK5OcpJvLdVV68=', NULL, 0, 'jqtimosan', '', '', '', 1, 1, '2020-09-01 06:53:23.000000'),
(12, 'pbkdf2_sha256$150000$5VfmJ80EHwGB$iUJSZoxQGo2V96538KZ50dcmvTbV6rVtl7IsbaPxQbc=', NULL, 0, 'regalleto', '', '', '', 1, 1, '2020-09-01 06:53:37.000000'),
(13, 'pbkdf2_sha256$150000$uWxG49SmPKgy$fh1+rKEZv79UIfa1xcYKS2twX90lpKR2KRV5p9NicZA=', NULL, 0, 'jralmonteros', '', '', '', 1, 1, '2020-09-01 06:53:51.000000'),
(14, 'pbkdf2_sha256$150000$lM5ElbgBgq6w$3t4FDpIQrWYAYhELWjAKaB/XsHkgQYFWwB7ueYH1RCA=', NULL, 0, 'gtesma', '', '', '', 1, 1, '2020-09-01 06:54:04.000000'),
(15, 'pbkdf2_sha256$150000$GXObWcEdopo9$3RVm698NneMZ6yZ6kbDhiM+mqTuxxJgCwJKRxFAmHZQ=', NULL, 0, 'jbmatis', '', '', '', 1, 1, '2020-09-01 06:54:15.000000'),
(16, 'pbkdf2_sha256$150000$qyPvC4MMVXgC$CnxLW7DJ27XG2VKgEQRLqux/WbdguryHhIoKtpzvnKQ=', NULL, 0, 'mrbonotan', '', '', '', 1, 1, '2020-09-01 06:54:25.000000'),
(17, 'pbkdf2_sha256$150000$bU3M6ckISBwK$FaiZXYPRx9ZtlAuiYoXEhJ1CGMP7ikwAC9dcFAbXrRw=', NULL, 0, 'rucandare', '', '', '', 1, 1, '2020-09-01 06:54:38.000000'),
(18, 'pbkdf2_sha256$150000$IejQxlpWoZ3T$Ks22kEOl4UyLR6otvcc97ZaAl5zPSJkoYPkhK5Rs09U=', '2020-09-02 02:34:08.285583', 0, 'citabada', '', '', '', 1, 1, '2020-09-01 06:54:48.000000'),
(19, 'pbkdf2_sha256$150000$Zqu4RfRdSVZe$p9ccOoEdhvs6ARhAB1v2v/L/zVkiMx3nrSeNlF4dW/M=', NULL, 0, 'tvnakazato', '', '', '', 1, 1, '2020-09-01 06:54:58.000000'),
(20, 'pbkdf2_sha256$150000$tbyOXT3z1IJs$1hhZxxRmtLsMRausKPCdWTSIi18CEgKRT8lo7KQ+LJ8=', NULL, 0, 'ignalam', '', '', '', 1, 1, '2020-09-01 06:55:09.000000'),
(21, 'pbkdf2_sha256$150000$MkXCWa8N0HBb$zO86k9YrpMuH+GW/vi3E+JQfi/AUyc1DP0rholFEPsg=', NULL, 0, 'jfcamba', '', '', '', 1, 1, '2020-09-01 06:55:21.000000'),
(22, 'pbkdf2_sha256$150000$TfU8SR6FXA42$FKZ1Q5zrNmSukQLOMjNn2pqUZw3bGRUS1KDm5qwr3ko=', NULL, 0, 'rpabao', '', '', '', 1, 1, '2020-09-01 06:55:30.000000'),
(23, 'pbkdf2_sha256$150000$SMcyXrdcpmqf$qr7ZAwSlvC9sTFrruY7DCzZIO9FuxnRVQ3KfqiCXfug=', NULL, 0, 'daromaguera', '', '', '', 1, 1, '2020-09-01 06:55:42.000000'),
(24, 'pbkdf2_sha256$150000$VV4ZK88ueJTB$EaNbtkuSndudxKK0mtKJjHP96tNpasecAgDcMZENAC8=', NULL, 1, 'rcdaguil', '', '', '', 1, 1, '2020-09-01 06:55:54.000000'),
(25, 'pbkdf2_sha256$150000$TQuCT8C6VBij$GbUSWn9kxb2T35ifct59sDEJp3JWxvLgJs44rMWjIyY=', NULL, 1, 'jmjayoma', '', '', '', 1, 1, '2020-09-01 06:56:18.000000'),
(26, 'pbkdf2_sha256$150000$CDpdY9I9MEnd$tJyae6Z4th7mdLLI9alFbWP1n7Iuzhq1/6ppXiCbc9c=', NULL, 1, 'jpnabas', '', '', '', 1, 1, '2020-09-01 06:56:34.000000'),
(27, 'pbkdf2_sha256$150000$r5iuhmG2GdAa$FXI6Z2AvezFdH3PLfpyR434LG/k8ZT6XIVIijSp+tu8=', '2020-09-02 02:16:14.602674', 0, 'accreditor', '', '', '', 0, 1, '2020-09-01 06:57:32.726772'),
(28, 'pbkdf2_sha256$150000$6asn6vFiB3qs$iYUduB4pt0pCf21xVtfjhoPk21xM7y+SH4E3xrlBLBg=', NULL, 1, 'esmorales', '', '', '', 1, 1, '2020-09-01 07:12:17.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-08-10 05:30:53.077178', '1', 'q93PBlvVU_011.png', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-08-10 05:32:28.736690', '1', 'qlpwHPrEx_012.png', 2, '[{\"changed\": {\"fields\": [\"file_name\"]}}]', 9, 1),
(3, '2020-08-10 05:34:11.636671', '1', 'q9PAGz46c_014.png', 2, '[{\"changed\": {\"fields\": [\"file_name\"]}}]', 9, 1),
(4, '2020-08-10 05:35:02.146140', '1', 'q9PAGz46c_014.png', 2, '[{\"changed\": {\"fields\": [\"file_name\"]}}]', 9, 1),
(5, '2020-08-10 05:43:55.852147', '2', 'awewewe', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-08-10 05:57:18.182666', '1', '1', 1, '[{\"added\": {}}]', 12, 1),
(7, '2020-08-10 05:57:32.344886', '2', 'Sa', 1, '[{\"added\": {}}]', 12, 1),
(8, '2020-08-10 06:02:45.358095', '1', 'matt', 3, '', 7, 1),
(9, '2020-08-10 06:02:45.374220', '2', 'morales', 3, '', 7, 1),
(10, '2020-08-10 06:02:45.374220', '3', 'zayin', 3, '', 7, 1),
(11, '2020-08-10 06:02:58.195850', '2', 'awewewe', 3, '', 9, 1),
(12, '2020-08-10 06:02:58.195850', '1', 'asdsasd', 3, '', 9, 1),
(13, '2020-08-10 06:07:52.488598', '1', 'Area 1', 1, '[{\"added\": {}}]', 14, 1),
(14, '2020-08-10 06:19:32.289076', '4', '1', 1, '[{\"added\": {}}]', 7, 1),
(15, '2020-08-10 06:33:09.488473', '4', '1', 3, '', 7, 1),
(16, '2020-08-10 06:33:39.543084', '1', '1', 1, '[{\"added\": {}}]', 14, 1),
(17, '2020-08-10 06:35:10.001470', '1', '1', 3, '', 12, 1),
(18, '2020-08-10 06:35:10.007981', '2', 'Sa', 3, '', 12, 1),
(19, '2020-08-10 06:35:40.978018', '3', 'Area 1', 1, '[{\"added\": {}}]', 12, 1),
(20, '2020-08-10 07:40:47.870538', '2', 'Area 1', 1, '[{\"added\": {}}]', 14, 1),
(21, '2020-08-10 07:46:46.210837', '3', 'Area 1', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 12, 1),
(22, '2020-08-10 07:47:03.316380', '7', 'asd', 1, '[{\"added\": {}}]', 9, 1),
(23, '2020-08-10 07:47:34.149019', '4', '', 3, '', 12, 1),
(24, '2020-08-10 07:47:34.158903', '5', '', 3, '', 12, 1),
(25, '2020-08-10 07:58:33.375916', '1', 'Area 1', 1, '[{\"added\": {}}]', 14, 1),
(26, '2020-08-10 08:31:36.116755', '3', 'Morales_March16-31.pdf tagged with Area 1', 1, '[{\"added\": {}}]', 11, 1),
(27, '2020-08-10 08:33:48.595250', '6', 'Area 2', 1, '[{\"added\": {}}]', 12, 1),
(28, '2020-08-10 08:39:15.768554', '7', 'Area 3', 1, '[{\"added\": {}}]', 12, 1),
(29, '2020-08-10 08:47:06.169007', '8', 'Morales_March16-31_SND5ZqC.pdf', 1, '[{\"added\": {}}]', 9, 1),
(30, '2020-08-10 08:48:58.261790', '4', 'Morales_March16-31.pdf tagged with Area 2', 1, '[{\"added\": {}}]', 11, 1),
(31, '2020-08-10 09:17:33.569947', '1', 'Classifiers', 1, '[{\"added\": {}}]', 3, 1),
(32, '2020-08-10 09:22:01.981380', '2', 'classifier1', 1, '[{\"added\": {}}]', 4, 1),
(33, '2020-08-10 09:22:26.408364', '2', 'classifier1', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]', 4, 1),
(34, '2020-08-11 06:14:42.285581', '1', 'matt', 1, '[{\"added\": {}}]', 15, 1),
(35, '2020-08-11 06:44:30.809694', '9', 'Morales_FacultySched_2020.pdf', 1, '[{\"added\": {}}]', 9, 1),
(36, '2020-08-11 11:01:50.875398', '10', 'q93PBlvVU_011.png', 1, '[{\"added\": {}}]', 9, 1),
(37, '2020-08-11 11:02:28.854472', '8', 'Area 1', 1, '[{\"added\": {}}]', 12, 1),
(38, '2020-08-11 11:03:10.011417', '1', 'q93PBlvVU_011.png tagged with Area 1', 1, '[{\"added\": {}}]', 13, 1),
(39, '2020-08-11 11:04:47.459265', '9', 'Area  2', 1, '[{\"added\": {}}]', 12, 1),
(40, '2020-08-11 11:07:54.676905', '2', 'q93PBlvVU_011.png tagged with Area  2', 1, '[{\"added\": {}}]', 13, 1),
(41, '2020-08-11 11:08:30.820723', '11', 'Morales_FacultySched_2020_bSyNcaK.pdf', 1, '[{\"added\": {}}]', 9, 1),
(42, '2020-08-11 11:09:13.643461', '3', 'Morales_FacultySched_2020_bSyNcaK.pdf tagged with Area  2', 1, '[{\"added\": {}}]', 13, 1),
(43, '2020-08-11 11:17:44.361704', '4', 'q93PBlvVU_011.png tagged with Area 1', 1, '[{\"added\": {}}]', 13, 1),
(44, '2020-08-11 11:17:52.989561', '5', 'q93PBlvVU_011.png tagged with Area  2', 1, '[{\"added\": {}}]', 13, 1),
(45, '2020-08-11 11:18:01.190076', '6', 'Morales_FacultySched_2020_bSyNcaK.pdf tagged with Area 1', 1, '[{\"added\": {}}]', 13, 1),
(46, '2020-08-12 06:17:59.652735', '9', 'Area  2', 2, '[{\"changed\": {\"fields\": [\"code\"]}}]', 12, 1),
(47, '2020-08-12 06:18:03.940131', '8', 'Area 1', 2, '[{\"changed\": {\"fields\": [\"code\"]}}]', 12, 1),
(48, '2020-08-12 06:22:47.685772', '1', 'Classifiers', 2, '[{\"changed\": {\"fields\": [\"permissions\"]}}]', 3, 1),
(49, '2020-08-12 06:24:26.359200', '2', 'classifier1', 1, '[{\"added\": {}}]', 15, 1),
(50, '2020-08-19 06:00:24.882545', '2', 'BSIS-III-None', 1, '[{\"added\": {}}]', 16, 1),
(51, '2020-08-19 06:00:31.172983', '2', 'BSIS-III-None', 3, '', 16, 1),
(52, '2020-08-19 07:46:35.614513', '33', 'matt Updated File on Senior_Management_Perceptions.pdf 1 minute ago', 3, '', 17, 1),
(53, '2020-08-19 07:46:35.614513', '32', 'matt Tagged File on Senior_Management_Perceptions.pdf 1 minute ago', 3, '', 17, 1),
(54, '2020-08-19 07:46:35.630135', '31', 'matt Updated Senior_Management_Perceptions.pdf on Senior_Management_Perceptions.pdf 15 minutes ago', 3, '', 17, 1),
(55, '2020-08-19 07:46:35.630135', '30', 'matt Tagged Senior_Management_Perceptions.pdf on Senior_Management_Perceptions.pdf 15 minutes ago', 3, '', 17, 1),
(56, '2020-08-19 07:46:35.630135', '29', 'matt Updated Global_virtual_teams_for_value_creation.pdf on Global_virtual_teams_for_value_creation.pdf 15 minutes ago', 3, '', 17, 1),
(57, '2020-08-19 07:46:35.630135', '28', 'matt Tagged Global_virtual_teams_for_value_creation.pdf on Global_virtual_teams_for_value_creation.pdf 15 minutes ago', 3, '', 17, 1),
(58, '2020-08-19 07:46:35.630135', '27', 'matt Tagged Senior_Management_Perceptions.pdf on Senior_Management_Perceptions.pdf 16 minutes ago', 3, '', 17, 1),
(59, '2020-08-19 07:46:35.630135', '26', 'matt Tagged Global_virtual_teams_for_value_creation.pdf on Global_virtual_teams_for_value_creation.pdf 16 minutes ago', 3, '', 17, 1),
(60, '2020-08-19 07:46:35.645788', '25', 'matt Tagged Senior_Management_Perceptions.pdf on Senior_Management_Perceptions.pdf 16 minutes ago', 3, '', 17, 1),
(61, '2020-08-19 07:46:35.645788', '24', 'matt Tagged Global_virtual_teams_for_value_creation.pdf on Global_virtual_teams_for_value_creation.pdf 16 minutes ago', 3, '', 17, 1),
(62, '2020-08-19 08:33:20.862874', '45', 'IS_Project_Team_Performance_Assessment.pdf', 3, '', 9, 1),
(63, '2020-08-19 08:33:20.878501', '44', 'Influence_of_Project_Managers.pdf', 3, '', 9, 1),
(64, '2020-09-01 02:19:05.519471', '3', 'viewer', 1, '[{\"added\": {}}]', 4, 1),
(65, '2020-09-01 02:19:27.855613', '3', 'viewer', 1, '[{\"added\": {}}]', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(16, 'accreapp', 'accredetails'),
(12, 'accreapp', 'category'),
(9, 'accreapp', 'file'),
(10, 'accreapp', 'log'),
(14, 'accreapp', 'mycustomtag'),
(15, 'accreapp', 'profile'),
(11, 'accreapp', 'taggedfile'),
(13, 'accreapp', 'taggedwhatever'),
(17, 'actstream', 'action'),
(18, 'actstream', 'follow'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'taggit', 'tag'),
(8, 'taggit', 'taggeditem');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-08-10 05:10:10.420692'),
(2, 'auth', '0001_initial', '2020-08-10 05:10:10.670779'),
(3, 'admin', '0001_initial', '2020-08-10 05:10:11.900762'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-10 05:10:12.097757'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-10 05:10:12.105787'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-08-10 05:10:12.190871'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-08-10 05:10:12.261238'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-08-10 05:10:12.281160'),
(9, 'auth', '0004_alter_user_username_opts', '2020-08-10 05:10:12.290767'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-08-10 05:10:12.361006'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-08-10 05:10:12.371168'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-10 05:10:12.371168'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-08-10 05:10:12.390985'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-10 05:10:12.411207'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-08-10 05:10:12.431202'),
(16, 'auth', '0011_update_proxy_permissions', '2020-08-10 05:10:12.440734'),
(17, 'sessions', '0001_initial', '2020-08-10 05:10:12.481000'),
(18, 'taggit', '0001_initial', '2020-08-10 05:10:12.570802'),
(19, 'taggit', '0002_auto_20150616_2121', '2020-08-10 05:10:12.750729'),
(20, 'taggit', '0003_taggeditem_add_unique_index', '2020-08-10 05:10:12.770924'),
(21, 'accreapp', '0001_initial', '2020-08-10 05:28:58.427572'),
(22, 'accreapp', '0002_auto_20200810_1358', '2020-08-10 05:58:06.861278'),
(23, 'accreapp', '0003_auto_20200810_1421', '2020-08-10 06:21:21.138631'),
(24, 'accreapp', '0004_auto_20200810_1432', '2020-08-10 06:32:43.456092'),
(25, 'accreapp', '0005_auto_20200810_1546', '2020-08-10 07:46:06.187219'),
(26, 'accreapp', '0006_auto_20200810_1556', '2020-08-10 07:56:33.588110'),
(27, 'accreapp', '0007_auto_20200810_1626', '2020-08-10 08:26:45.433989'),
(28, 'accreapp', '0008_auto_20200810_1631', '2020-08-10 08:31:26.135886'),
(29, 'accreapp', '0009_auto_20200811_1350', '2020-08-11 05:50:23.146961'),
(30, 'accreapp', '0010_auto_20200811_1852', '2020-08-11 10:58:13.723389'),
(31, 'accreapp', '0011_auto_20200811_1858', '2020-08-11 10:58:13.923996'),
(32, 'accreapp', '0012_auto_20200812_1008', '2020-08-12 02:08:14.126371'),
(33, 'accreapp', '0013_auto_20200812_1010', '2020-08-12 02:10:19.533796'),
(34, 'accreapp', '0014_remove_category_alias', '2020-08-12 07:45:37.635061'),
(35, 'accreapp', '0015_auto_20200814_1055', '2020-08-18 07:30:33.725336'),
(36, 'accreapp', '0016_auto_20200818_1530', '2020-08-18 07:30:34.001316'),
(37, 'accreapp', '0017_auto_20200819_1146', '2020-08-19 03:47:08.761805'),
(38, 'actstream', '0001_initial', '2020-08-19 03:55:36.043705'),
(39, 'actstream', '0002_remove_action_data', '2020-08-19 03:55:36.698804'),
(40, 'actstream', '0003_add_follow_flag', '2020-08-19 03:55:36.783456'),
(41, 'accreapp', '0017_auto_20200819_1312', '2020-08-19 05:52:21.966584'),
(42, 'accreapp', '0017_auto_20200819_1352', '2020-08-19 05:53:03.568965'),
(43, 'accreapp', '0017_accredetails', '2020-08-19 05:54:37.746198'),
(44, 'accreapp', '0018_auto_20200819_1355', '2020-08-19 05:55:59.790916'),
(45, 'accreapp', '0019_file_accre_details', '2020-08-19 05:56:42.402289'),
(46, 'accreapp', '0020_auto_20200824_1329', '2020-08-24 05:29:21.795632'),
(47, 'accreapp', '0021_taggedwhatever_user', '2020-09-01 02:01:35.188495');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4kv54yjk4whp3apkzs0y3n4gj19uktf8', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-08-25 03:56:03.023824'),
('53o1sv7wfsyombis4r1acdxvvhxzd5mh', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-08-25 03:51:22.493954'),
('67bjyk0wxu13ynogvb70evonmfv6ycc0', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-15 08:37:21.935150'),
('6n9py046p8er9ge6gt5n00rloize92sc', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-15 07:09:58.470998'),
('7fmtio3n2m6br90xmec4wq8jabb4f24h', 'YWFjZDhhOWUyNjJhODQzMDU1YTMwMjc0MWQzMmI3MTQ4OGYxNjlkMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YTdhNDAzYmRkYTVlMjM2YTI2NjQyMjhkNzU3YjJmYWFjYTI2OTkwIn0=', '2020-09-08 04:56:46.888999'),
('83llhgtp3iseao3sqcqt5chomma88gzw', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-18 09:02:51.307463'),
('8pxvsrgtmfnr5e8fakzpx1ltd5lgprzr', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-08 05:55:56.056792'),
('cfg73vb56d8bppo1r7zyt9vauuyic085', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-19 08:55:01.387697'),
('e13eopcz7oqon0r6n4lydxjkxozbt0zw', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-08-26 08:55:57.312696'),
('g6p5phoyadkfgcmisrvjpkvta7k4shnq', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-08-25 01:59:53.465627'),
('i9yzds5hhz5al1lap9036uiahtxkag5p', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-18 09:10:37.028714'),
('icfobtuww7g3xv98582ut17h6vymxw7l', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-07 07:47:01.967096'),
('mpcth4v6n2cly9h4d6sl824vfv49hjgt', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-18 03:33:34.575631'),
('mqk8737oe3cg0tvlhb7e8cs751iy13dm', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-18 08:21:43.406724'),
('n6fizddpkc0oj0qcfel2ut5bv44ptyc5', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-08-24 09:24:01.425543'),
('om6yfeyehbk5ao4zif7edffy5fpwprwp', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-08-24 05:10:50.195541'),
('tkkm9qbntlpeo1yevr40juux8os6k7iz', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-08-26 06:19:46.970562'),
('w6fdst4zyz2d7x2l169vdeo12isirfio', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-08-25 06:14:53.823433'),
('yvhjd05vp7b3yulaourobwm62kgwqjtu', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-19 03:57:08.431925'),
('zlyjg1t61b5bxqt5v030qwwcylll6ahf', 'OTI5NGRhZDMzNjg4Y2JmY2FlNzRiNWRiYTQ1MWM2OGYxZjU1OTJmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM3OGUzMzZmMmQ2YjQ3YTUxYTMwOWUwZDRlYjViYWJhYzE3ZmMwIn0=', '2020-09-08 09:10:51.794949');

-- --------------------------------------------------------

--
-- Table structure for table `taggit_tag`
--

CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `taggit_taggeditem`
--

CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accreapp_accredetails`
--
ALTER TABLE `accreapp_accredetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accreapp_category`
--
ALTER TABLE `accreapp_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `accreapp_category_slug_cd133b96` (`slug`),
  ADD KEY `accreapp_category_tree_id_52103047` (`tree_id`),
  ADD KEY `accreapp_category_parent_id_d76f959e` (`parent_id`);

--
-- Indexes for table `accreapp_file`
--
ALTER TABLE `accreapp_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accreapp_file_user_id_ff0a085a_fk_auth_user_id` (`user_id`),
  ADD KEY `accreapp_file_accre_details_id_ee02efc4_fk_accreapp_` (`accre_details_id`);

--
-- Indexes for table `accreapp_log`
--
ALTER TABLE `accreapp_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `accreapp_profile`
--
ALTER TABLE `accreapp_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `accreapp_taggedwhatever`
--
ALTER TABLE `accreapp_taggedwhatever`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accreapp_taggedwhate_content_type_id_1baa32df_fk_django_co` (`content_type_id`),
  ADD KEY `accreapp_taggedwhatever_object_id_eaac2984` (`object_id`),
  ADD KEY `accreapp_taggedwhatever_tag_id_7777feff_fk_accreapp_category_id` (`tag_id`),
  ADD KEY `accreapp_taggedwhatever_user_id_2e5ad748_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `actstream_action`
--
ALTER TABLE `actstream_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actstream_action_action_object_conten_ee623c15_fk_django_co` (`action_object_content_type_id`),
  ADD KEY `actstream_action_actor_content_type_i_d5e5ec2a_fk_django_co` (`actor_content_type_id`),
  ADD KEY `actstream_action_target_content_type__187fa164_fk_django_co` (`target_content_type_id`),
  ADD KEY `actstream_action_actor_object_id_72ef0cfa` (`actor_object_id`),
  ADD KEY `actstream_action_verb_83f768b7` (`verb`),
  ADD KEY `actstream_action_target_object_id_e080d801` (`target_object_id`),
  ADD KEY `actstream_action_action_object_object_id_6433bdf7` (`action_object_object_id`),
  ADD KEY `actstream_action_timestamp_a23fe3ae` (`timestamp`),
  ADD KEY `actstream_action_public_ac0653e9` (`public`);

--
-- Indexes for table `actstream_follow`
--
ALTER TABLE `actstream_follow`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actstream_follow_user_id_content_type_id__b3632d76_uniq` (`user_id`,`content_type_id`,`object_id`,`flag`),
  ADD KEY `actstream_follow_content_type_id_ba287eb9_fk_django_co` (`content_type_id`),
  ADD KEY `actstream_follow_object_id_d790e00d` (`object_id`),
  ADD KEY `actstream_follow_started_254c63bd` (`started`),
  ADD KEY `actstream_follow_user_id_e9d4e1ff` (`user_id`),
  ADD KEY `actstream_follow_flag_0e741c24` (`flag`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `taggit_tag`
--
ALTER TABLE `taggit_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taggit_taggeditem_content_type_id_object_id_tag_id_4bb97a8e_uniq` (`content_type_id`,`object_id`,`tag_id`),
  ADD KEY `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` (`tag_id`),
  ADD KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  ADD KEY `taggit_taggeditem_content_type_id_object_id_196cc965_idx` (`content_type_id`,`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accreapp_accredetails`
--
ALTER TABLE `accreapp_accredetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accreapp_category`
--
ALTER TABLE `accreapp_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1486;

--
-- AUTO_INCREMENT for table `accreapp_file`
--
ALTER TABLE `accreapp_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `accreapp_log`
--
ALTER TABLE `accreapp_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accreapp_profile`
--
ALTER TABLE `accreapp_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `accreapp_taggedwhatever`
--
ALTER TABLE `accreapp_taggedwhatever`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `actstream_action`
--
ALTER TABLE `actstream_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `actstream_follow`
--
ALTER TABLE `actstream_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `taggit_tag`
--
ALTER TABLE `taggit_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accreapp_category`
--
ALTER TABLE `accreapp_category`
  ADD CONSTRAINT `accreapp_category_parent_id_d76f959e_fk_accreapp_category_id` FOREIGN KEY (`parent_id`) REFERENCES `accreapp_category` (`id`);

--
-- Constraints for table `accreapp_file`
--
ALTER TABLE `accreapp_file`
  ADD CONSTRAINT `accreapp_file_accre_details_id_ee02efc4_fk_accreapp_` FOREIGN KEY (`accre_details_id`) REFERENCES `accreapp_accredetails` (`id`),
  ADD CONSTRAINT `accreapp_file_user_id_ff0a085a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accreapp_log`
--
ALTER TABLE `accreapp_log`
  ADD CONSTRAINT `accreapp_log_user_id_8b1c0d6e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accreapp_profile`
--
ALTER TABLE `accreapp_profile`
  ADD CONSTRAINT `accreapp_profile_user_id_0b87e37b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accreapp_taggedwhatever`
--
ALTER TABLE `accreapp_taggedwhatever`
  ADD CONSTRAINT `accreapp_taggedwhate_content_type_id_1baa32df_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `accreapp_taggedwhatever_tag_id_7777feff_fk_accreapp_category_id` FOREIGN KEY (`tag_id`) REFERENCES `accreapp_category` (`id`),
  ADD CONSTRAINT `accreapp_taggedwhatever_user_id_2e5ad748_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `actstream_action`
--
ALTER TABLE `actstream_action`
  ADD CONSTRAINT `actstream_action_action_object_conten_ee623c15_fk_django_co` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `actstream_action_actor_content_type_i_d5e5ec2a_fk_django_co` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `actstream_action_target_content_type__187fa164_fk_django_co` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `actstream_follow`
--
ALTER TABLE `actstream_follow`
  ADD CONSTRAINT `actstream_follow_content_type_id_ba287eb9_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `actstream_follow_user_id_e9d4e1ff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `taggit_taggeditem`
--
ALTER TABLE `taggit_taggeditem`
  ADD CONSTRAINT `taggit_taggeditem_content_type_id_9957a03c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
