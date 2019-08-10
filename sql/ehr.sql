-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2017 at 12:00 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ehr`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `d_id` int(5) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(100) NOT NULL,
  `d_passwd` varchar(50) NOT NULL,
  `d_email` varchar(100) NOT NULL,
  `d_gender` varchar(8) NOT NULL,
  `d_address` varchar(250) NOT NULL,
  `d_dob` varchar(50) NOT NULL,
  `d_contact` int(12) NOT NULL,
  `d_university` varchar(50) NOT NULL,
  `d_uni_year` int(4) NOT NULL,
  `d_work_exp` varbinary(30) NOT NULL,
  `d_current_work` varchar(30) NOT NULL,
  `d_speciality` varchar(30) NOT NULL,
  `reg_doc` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`d_id`, `d_name`, `d_passwd`, `d_email`, `d_gender`, `d_address`, `d_dob`, `d_contact`, `d_university`, `d_uni_year`, `d_work_exp`, `d_current_work`, `d_speciality`, `reg_doc`) VALUES
(1, 'Nishant jinde', 'dc06698f0e2e75751545455899adccc3', 'nishantvjinde@gmail.com', 'male', 'xfbvxdbvxb', '6 November, 1994', 720634292, 'Barati Vidyapeeth', 2010, '5', 'Sai Clinic', 'Heart', 1),
(2, 'Priyanka Vinod Jinde', 'dc06698f0e2e75751545455899adccc3', 'priyankavjinde@gmail.com', 'f', 'Sagar CO-OP Housing Society\r\nSec-10,8-B/24,Koparkhairne', '26 April, 2017', 2147483647, 'fgdfbh', 2014, '2', 'bnm bm', 'Heart', 0);

-- --------------------------------------------------------

--
-- Table structure for table `genetic`
--

CREATE TABLE IF NOT EXISTS `genetic` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `gen_desease` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `genetic`
--

INSERT INTO `genetic` (`id`, `gen_desease`) VALUES
(1, 'Type 2 diabetes'),
(2, 'Deletion');

-- --------------------------------------------------------

--
-- Table structure for table `med`
--

CREATE TABLE IF NOT EXISTS `med` (
  `m_id` int(15) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `med`
--

INSERT INTO `med` (`m_id`, `m_name`) VALUES
(1, 'dexycycline'),
(2, 'minocyclineamycin'),
(3, 'spironelactone'),
(4, 'aldactone'),
(5, 'clindmycin'),
(6, 'truvada'),
(7, 'atripla'),
(8, 'narviv'),
(9, 'isentress'),
(10, 'prezista'),
(11, 'lipitor'),
(12, 'simvastain'),
(13, 'atorvastatin'),
(14, 'crestor'),
(15, 'minoxidil'),
(16, 'rogaine'),
(17, 'kenalog-10'),
(18, 'symbalta'),
(19, 'zoloft'),
(20, 'lexapro'),
(21, 'prozac'),
(22, 'celexa'),
(23, 'vicks nyquil D-cold'),
(24, 'benadryl'),
(25, 'chlorphen iramine'),
(26, 'promekazine DM'),
(27, 'tylenal cold'),
(28, 'tramadol'),
(29, 'noreo'),
(30, 'gabapentin'),
(31, 'vicodin'),
(32, 'dilaudud'),
(33, 'plavix'),
(34, 'aspirin'),
(35, 'clapid ogrel'),
(36, 'activase'),
(37, 'aspir81'),
(38, 'arte mether'),
(39, 'malarone'),
(40, 'plaqueril'),
(41, 'chloroquine'),
(42, 'doxycycline'),
(44, 'lomotil'),
(45, 'loperamide'),
(46, 'imodium'),
(47, 'immodium A-D'),
(48, 'atropine');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `Disease_id` int(15) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) NOT NULL,
  `d_symptoms` varchar(255) NOT NULL,
  `d_medicine` varchar(255) NOT NULL,
  PRIMARY KEY (`Disease_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Disease_id`, `d_name`, `d_symptoms`, `d_medicine`) VALUES
(1, 'Acne', 'white heads,black heads,pimple,large,solid,painful lumps beneath the surface of skin', 'dexycycline,minocycline,spironelactone,aldactone,clindamycin'),
(2, 'HIV', 'fever,headache,muscle aches and joint pain,rash,sore throat,weight loss,skin rashes,soaking night sweats', 'truvada,atripla,narviv,isentress,prezista'),
(3, 'Chrolestrol', 'no symptoms,blood test', 'lipitor,simvastain,atorvastatin,crestor'),
(4, 'Hairloss', 'baldness on the scalp,oval patches, mild itching,tenderness', 'spironolactone,minoxidil,aldactone,rogaine,kenalog-10,'),
(5, 'Derpression', 'tiredness,sleep disturbance,anxiety,change in apetite, loss of interest,slowed thinking,speaking or body movement', 'symbalta,zoloft,lexapro,prozac,celexa'),
(6, 'cold and Flu', 'sore throat,cough,congestion,sneezing,low-grade fever,runny or stuffy nose', 'vicks nyquil Dcold, benadryl,chlorphen iramine,promekazine DM, tylenal cold'),
(7, 'Pain', 'pain', 'tramadol,noreo,gabapentin,vicodin,dilaudud'),
(8, 'Stroke', 'weakness,numbness,dizziness or loss of balance,blindness in both eyes', 'plavix,aspirin,clapid ogrel,activase,aspir81'),
(9, 'Malaria', 'high fever,sweating,headache,vomitting,diarrhea', 'arte mether,malarone,plaqueril,chloroquine,doxycycline'),
(10, 'Diarrhea', 'loose water stools,abdominal cramps,abdominal pain,fever,nausea', 'lomotil,loperamide,imodium,immodium A-D.atropine');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `desease` varchar(30) NOT NULL,
  `med_name` varchar(300) NOT NULL,
  `m_time` varchar(100) NOT NULL,
  `doctor_id` varchar(50) NOT NULL,
  `p_date` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `user_id`, `desease`, `med_name`, `m_time`, `doctor_id`, `p_date`) VALUES
(1, 'priyankavjinde@gmail.com', 'Fever', 'benadryl,benadryl,', '13,13,', 'nishantvjinde@gmail.com', ' 04-04-2017'),
(2, 'priyankavjinde@gmail.com', 'Cold', 'benadryl,benadryl,', '13,13,', 'nishantvjinde@gmail.com ', '03-12-2015'),
(3, 'priyankavjinde@gmail.com', 'Heart', 'benadryl,benadryl,', '13,13,', 'nishantvjinde@gmail.com ', '06-05-2014'),
(4, 'ujadhav25@gmail.com', 'Fever', 'benadryl,benadryl,', '13,13,', 'nishantvjinde@gmail.com', '04-04-2017'),
(5, '', '', 'benadryl,benadryl,', '13,13,', 'nishantvjinde@gmail.com', '04-04-2017'),
(6, 'ujadhav25@gmail.com', 'fever', 'benadryl,benadryl,', '13,13,', 'nishantvjinde@gmail.com', '05-04-2017'),
(7, 'ujadhav25@gmail.com', 'Cold', 'benadryl,benadryl,', '13,13,', 'nishantvjinde@gmail.com', '05-04-2017'),
(8, 'ujadhav25@gmail.com', 'fever', 'benadryl,benadryl,', '13,13,', 'nishantvjinde@gmail.com', '05-04-2017'),
(9, 'ujadhav25@gmail.com', 'heart', 'benadryl,benadryl,', '13,13,', 'priyankavjinde@gmail.com', '05-04-2017'),
(10, 'ujadhav25@gmail.com', 'fever', 'benadryl,benadryl,', '13,13,', 'nishantvjinde@gmail.com', '16-04-2017');

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE IF NOT EXISTS `relation` (
  `user_id` varchar(250) NOT NULL,
  `in_relation` varchar(250) NOT NULL,
  `relation` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relation`
--

INSERT INTO `relation` (`user_id`, `in_relation`, `relation`) VALUES
('priyankavjinde@gmail.com', 'asas', 'mother'),
('priyankavjinde@gmail.com', 'nishantvjinde@gmail.com', 'brother'),
('priyankavjinde@gmail.com', 'priyankavjinde@gmail.com', 'sister');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) NOT NULL,
  `type_of_report` varchar(60) NOT NULL,
  `verified_by` varchar(60) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `r_date` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `user_id`, `type_of_report`, `verified_by`, `file_path`, `r_date`) VALUES
(1, 'priyankavjinde@gmail.com', 'Blood Check', 'nishantvjinde@gmail.com', 'Reports/1.pdf', '20-05-2017'),
(3, 'ujadhav25@gmail.com', 'Blood', 'nishantvjinde@gmail.com', 'Reports/1491373390.pdf', '05-04-2017'),
(4, 'ujadhav25@gmail.com', 'm', 'nishantvjinde@gmail.com', 'Reports/1491840383.pdf', '10-04-2017');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(15) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_gender` varchar(255) NOT NULL,
  `u_address` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_password` varchar(255) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_name`, `u_gender`, `u_address`, `dob`, `telephone`, `u_email`, `u_password`) VALUES
(1, 'Priyanka Vinod Jinde', 'female', 'At : vadap, Post : Gaurkamath, Tal : karjat, Dist : Raigad, Pin Code : 410201', '04-04-2017', '9699706998', 'priyankavjinde@gmail.com', 'dc06698f0e2e75751545455899adccc3'),
(2, 'Umesh Jadhav', 'male', 'At : vadap, Post : Gaurkamath,Tal : karjat, Dist : Raigad,Pin Code : 410201', '25-11-1994', '7666189155', 'ujadhav25@gmail.com', 'dc06698f0e2e75751545455899adccc3'),
(3, 'Sachin Jadhav', 'male', 'At : vadap, Post : Gaurkamath,Tal : karjat, Dist : Raigad,Pin Code : 410201', '12-04-2017', '7666189155', 'jsachin72@gmail.com', 'dc06698f0e2e75751545455899adccc3'),
(4, 'Sujit Jadhav', 'male', 'At : vadap, Post : Gaurkamath,Tal : karjat, Dist : Raigad,Pin Code : 410201', '21-04-2017', '7523148522', 'jsujit72@gmail.com', 'dc06698f0e2e75751545455899adccc3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
