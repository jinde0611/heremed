-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 09:14 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heremed`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `p_id` int(10) NOT NULL,
  `about_file_path` varchar(255) NOT NULL,
  `about_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`p_id`, `about_file_path`, `about_name`) VALUES
(1, 'Reports/About/Anti-Money Laundering Guidelines.pdf', 'Anti-Money Laundering Guidelines'),
(2, 'Reports/About/IRDA NON PAYABLE LIST - Year - 2013-14.pdf', 'IRDA NON PAYABLE LIST'),
(3, 'Reports/About/PHS Document Checklist.pdf', 'PHS Document Checklist');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(32) NOT NULL,
  `text` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `time`, `username`, `text`) VALUES
(1, '2018-12-21 07:26:48', 'wvavbsdbs', 'sabadb');

-- --------------------------------------------------------

--
-- Table structure for table `dependents`
--

CREATE TABLE `dependents` (
  `de_id` int(11) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `relation_name` varchar(255) NOT NULL,
  `d_relation` varchar(255) NOT NULL,
  `d_occupation` varchar(255) NOT NULL,
  `d_address` varchar(255) NOT NULL,
  `d_age` int(10) NOT NULL,
  `d_mobile` int(15) NOT NULL,
  `d_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dependents`
--

INSERT INTO `dependents` (`de_id`, `u_email`, `d_name`, `relation_name`, `d_relation`, `d_occupation`, `d_address`, `d_age`, `d_mobile`, `d_email`) VALUES
(1, 'nishant.jinde@here.com', 'Nishant Jinde ', 'Saraswati Vinod Jinde', 'Mother', 'housewife', 'kk', 40, 32266, 'saraswati@gmail.com'),
(2, 'nishant.jinde@here.com', 'Nishant Jinde ', 'Vinod Laxman Jinde', 'Father', 'Service', 'kk', 58, 2147483647, 'jiv07@rediffmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `d_id` int(10) NOT NULL,
  `dname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`d_id`, `dname`, `username`, `password`) VALUES
(1, 'Nishant Jinde', 'nishant.jinde@here.com', '2c8b8a10d0423186d99cfb04526ccfed');

-- --------------------------------------------------------

--
-- Table structure for table `file_upload`
--

CREATE TABLE `file_upload` (
  `f_id` int(10) NOT NULL,
  `claim_id` int(11) NOT NULL,
  `receipt_no` varchar(255) NOT NULL,
  `receipt_date` varchar(255) NOT NULL,
  `f_expenditure` varchar(255) NOT NULL,
  `f_amount` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `r_date` varchar(15) NOT NULL,
  `Verifiation_status` tinyint(1) DEFAULT '0',
  `opd_type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_upload`
--

INSERT INTO `file_upload` (`f_id`, `claim_id`, `receipt_no`, `receipt_date`, `f_expenditure`, `f_amount`, `f_name`, `file_path`, `r_date`, `Verifiation_status`, `opd_type`) VALUES
(8, 16, '235', '03-01-2019', 'dental', '1124', 'nishant.jinde@here.com', 'Reports/1548854004.pdf', '30-01-2019', 1, 'Dental');

-- --------------------------------------------------------

--
-- Table structure for table `form_details`
--

CREATE TABLE `form_details` (
  `f_id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_relation` varchar(255) DEFAULT NULL,
  `patient_occupation` varchar(255) DEFAULT NULL,
  `patient_address` varchar(255) DEFAULT NULL,
  `patient_policyno` varchar(255) DEFAULT NULL,
  `illness_nature` varchar(255) DEFAULT NULL,
  `patient_mobile` varchar(255) DEFAULT NULL,
  `patient_email` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `treatment_st_date` varchar(50) DEFAULT NULL,
  `treatment_end_date` varchar(50) DEFAULT NULL,
  `doctor_address` varchar(250) DEFAULT NULL,
  `doctor_phone_no` varchar(10) DEFAULT NULL,
  `registration_no` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_details`
--

INSERT INTO `form_details` (`f_id`, `name`, `patient_name`, `patient_relation`, `patient_occupation`, `patient_address`, `patient_policyno`, `illness_nature`, `patient_mobile`, `patient_email`, `user_id`, `doctor_name`, `treatment_st_date`, `treatment_end_date`, `doctor_address`, `doctor_phone_no`, `registration_no`) VALUES
(1, 'Nishant Vinod Jinde', 'Vinod Laxman Jinde', 'Father', 'Service', 'Sagar CHS ', '451234', 'Blood Pressure', '9969052299', 'jiv07@rediff.com', 'nishant.jinde@here.com', 'Neeraj ', '03-09-2018', '04-09-2018', 'Koparkhairane', '27542299', '442123'),
(2, 'Priya Singh', 'Smita', 'Child', 'Service', 'Kamothe', '12453', 'malaria', '9969052299', 'priya.n.singh@here.com', 'priya.n.singh@here.com', 'Vilas', '05-09-2018', '11-09-2018', 'Svsavabv', '23262', '21213526'),
(3, 'Nishant Vinod Jinde', 'Smita Bendale', 'Child', 'Service', 'Wada', '11246', 'Dental', '7666018855', 'smita.bendale@here.com', 'nishant.jinde@here.com', 'Sindrella Fernandes', '09-10-2018', '10-10-2018', 'Thane', '27542299', '4621351'),
(11, 'Nishant Vinod Jinde ', 'Saraswati Vinod Jinde', 'Spouse', 'House wife', 'Koparkhairane', '67464', 'fever', '9869106377', 'saraswati.jinde@gmail.com', 'nishant.jinde@here.com', 'suraj', '03-12-2018', '11-12-2018', 'kk', '6465645', '4545353'),
(12, 'Nishant Vinod Jinde ', 'Saraswati Vinod Jinde', 'Child', ' d', 'fnn', 'nedm', 'sn f', 'y43', 'saraswati.jinde@gmail.com', 'nishant.jinde@here.com', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Nishant Vinod Jinde ', 'Saraswati Vinod Jinde', 'Mother', 'House wife', 'Koparkhairane', '67464', 'fever', '9869106377', 'saraswati.jinde@gmail.com', 'nishant.jinde@here.com', 'suraj', '01-01-2019', '02-01-2019', 'hdf', '6465645', '4545353'),
(14, 'Nishant Vinod Jinde ', 'Saraswati Vinod Jinde', 'Father', 'House wife', 'Koparkhairane', '67464', 'fever', '9869106377', 'saraswati.jinde@gmail.com', 'nishant.jinde@here.com', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Nishant Vinod Jinde ', 'Saraswati Vinod Jinde', 'Mother', 'House wife', 'Koparkhairane', '2353', 'fever', '235', 'saraswati.jinde@gmail.com', 'nishant.jinde@here.com', 'suraj', '07-01-2019', '14-01-2019', 'advadv', '6465645', '4325'),
(16, 'Nishant Vinod Jinde ', 'Vinod Laxman Jinde', 'Father', 'Service', 'Sagar CHS Sector 10 Koparkhairane', '67464', 'fever', '9969052299', 'jiv07@rediffmail.com', 'nishant.jinde@here.com', 'Prashanyt', '01-01-2019', '04-01-2019', 'Vashi', '6465645', '4545353');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_list`
--

CREATE TABLE `hospital_list` (
  `Provider Number` varchar(164) DEFAULT NULL,
  `Provider Name` varchar(74) DEFAULT NULL,
  `Address 1` varchar(75) DEFAULT NULL,
  `Address 2` varchar(61) DEFAULT NULL,
  `Address Area` varchar(27) DEFAULT NULL,
  `Pin Code` varchar(6) DEFAULT NULL,
  `PIN_CODE2` varchar(6) DEFAULT NULL,
  `STD Code` varchar(3) DEFAULT NULL,
  `Telephone Number` varchar(40) DEFAULT NULL,
  `CITY` varchar(6) DEFAULT NULL,
  `STATE` varchar(11) DEFAULT NULL,
  `Fax Number` varchar(25) DEFAULT NULL,
  `TYPE` varchar(8) DEFAULT NULL,
  `E-Mail Address` varchar(146) DEFAULT NULL,
  `Web Site` varchar(38) DEFAULT NULL,
  `IRDA_UNIQUE_ID` varchar(9) DEFAULT NULL,
  `GIPSA_NETWORK` varchar(1) DEFAULT NULL,
  `ROHINI_REGISTRY_CODE` varchar(10) DEFAULT NULL,
  `LATITUDE` varchar(8) DEFAULT NULL,
  `LONGITUDE` varchar(8) DEFAULT NULL,
  `LEVEL_OF_CARE` varchar(9) DEFAULT NULL,
  `PHM_RATING` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospital_list`
--

INSERT INTO `hospital_list` (`Provider Number`, `Provider Name`, `Address 1`, `Address 2`, `Address Area`, `Pin Code`, `PIN_CODE2`, `STD Code`, `Telephone Number`, `CITY`, `STATE`, `Fax Number`, `TYPE`, `E-Mail Address`, `Web Site`, `IRDA_UNIQUE_ID`, `GIPSA_NETWORK`, `ROHINI_REGISTRY_CODE`, `LATITUDE`, `LONGITUDE`, `LEVEL_OF_CARE`, `PHM_RATING`) VALUES
('92', 'ASHIRWAD HEART HOSPITAL ( GHATKOPAR )', 'Vivek Building', 'Tilak Road,', 'Ghatkopar', '400077', '400077', '22', '21025911/12/13', 'Mumbai', 'Maharashtra', '21021259 / 25160259', 'HOSPITAL', 'ashirwadhearthospital@yahoo.com', '-', '400077005', 'Y', '8.90008E+1', '19.07617', '72.90553', 'Secondary', 'PGI'),
('122', 'ASHWINI HOSPITAL & ICCU ( MULUND )', '1st Flr., Lalan Bldg.', 'P. K. Rd.', 'Mulund', '400080', '400080', '22', '2,561,117,725,603,380', 'Mumbai', 'Maharashtra', '25681960', 'HOSPITAL', 'Mayurshah_123@Yahoo.in', '-', '400080010', 'Y', '8.90008E+1', '19.17561', '72.95160', 'Secondary', 'PGI'),
('150', 'BOMBAY HOSPITAL AND MEDICAL RESEARCH CENTRE', '12, Sir V. T. Marg,', 'New Marine Lines', 'Marine Lines', '400020', '400020', '22', '22067676 / 22088323 / 22067675', 'Mumbai', 'Maharashtra', '22085012 / 22079485', 'HOSPITAL', 'bhtmktg@gmail.com,narsim73@rediffmail.com,bhtbackup2016@gmail.com', '-', '400020001', 'Y', '8.90008E+1', '18.94106', '72.82781', 'Teritary', 'PGI'),
('258', 'JASLOK HOSPITAL AND MEDICAL RESEARCH INSTITUTE', '15, Dr. G. Deshmukh Marg,', '0', 'Pedder Road', '400026', '400026', '22', '66573333/66573451/23520508', 'Mumbai', 'Maharashtra', '66573035', 'HOSPITAL', 'info@jaslokhospital.net,tpa@jaslokhospital.net,billing@jaslokhospital.net,recovery@jaslokhospital.net', 'www.jaslokhospital.net', '400026004', 'Y', '8.90008E+1', '18.97171', '72.80983', 'Teritary', 'PGI'),
('266', 'JOY HOSPITAL PVT. LTD.', '423, A B, Joy Hospital,', '10th Road,', 'Chembur', '400071', '400071', '22', '25223939/25286911/710', 'Mumbai', 'Maharashtra', '25220431', 'HOSPITAL', 'joy.hospital@gmail.com', 'joyhospital.org', '400071020', 'Y', '8.90008E+1', '22.29482', '73.15241', 'Secondary', 'PGI'),
('367', 'PURNIMA HOSPITAL', 'A. H. Tech. Center, Daulatgar, Road No.8,Borivali (E) Daulat Nagar, Rd. # 8', 'A. H. Tech. Center,', 'Borivali', '400066', '400066', '22', '28949968 / 28945328', 'Mumbai', 'Maharashtra', '28915706', 'HOSPITAL', 'does not access regularly so no mail id', '-', '400066016', 'Y', '8.90008E+1', '19.23667', '72.86072', 'Secondary', 'GI'),
('372', 'R.G. STONE UROLOGICAL RESEARCH INSTITUTE(KHAR)', '21-A, 14-A Road,', 'Ahinsa Marg,', 'Khar(W)', '400052', '400052', '22', '61463500 / 26041395/ 3260/ 2605 7805/ 06', 'Mumbai', 'Maharashtra', '26462123', 'HOSPITAL', 'ccd.mumbai@rghospital.com,surjitsingh86@gmail.com', 'www.rghospital.com', '400052014', 'Y', '8.90008E+1', '19.07422', '72.83237', 'Secondary', 'PGI'),
('403', 'SANJEEVANI HOSPITAL( ANDHERI)', '11,Nityanand Nagar,', 'Sahar Road,', 'Andheri(E)', '400069', '400069', '22', '26833939 /26834141/ 26841969', 'Mumbai', 'Maharashtra', '2684 0647', 'HOSPITAL', 'sanjeevani_srao@yahoo.com,viju@vsnl.com', '-', '400069016', 'Y', '8.90008E+1', '19.11683', '72.84756', 'Secondary', 'G'),
('408', 'SARLA HOSPITAL & ICU', '5-D Dattatraya Road', '0', 'Santacruz(W)', '400054', '400054', '22', '26614779, 26614773, 26615111', 'Mumbai', 'Maharashtra', '26616091', 'HOSPITAL', 'sarlahos@mail.com,sarlahos@bom5.vsnl.net.in', '-', '400054021', 'Y', '8.90008E+1', '19.08553', '72.83646', 'Secondary', 'GI'),
('552', 'FAUZIYA HOSPITAL(MUMBAI)', '209, Solanki Apts., Flat # 10', 'L. B. S. Marg, Opp. Kurla Weigh Bridge', 'Kurla(W)', '400070', '400070', '22', '2503 4057', 'Mumbai', 'Maharashtra', '25038932', 'HOSPITAL', 'tpafauziyakurla@gmail.com,fauziya@fauziya.tk', '-', 'NA', 'Y', '8.90008E+1', '19.07961', '72.88000', 'Secondary', 'G'),
('556', 'NARENDRA HOSPITAL', 'Seeta Mahal,', 'Kasturba Road 5,', 'Borivali(E)', '400066', '400066', '22', '28058086 / 28057217', 'Mumbai', 'Maharashtra', '28057217 / 28058086', 'HOSPITAL', 'narendra_hospital@rediffmail.com,drnarendra@narendrahospital.com', '-', '400066010', 'Y', '8.90008E+1', '19.22975', '72.86272', 'Secondary', 'PGI'),
('593', 'GOKUL NURSING HOME & ICCU ( MULUND )', 'Munshi Estate, 1st Flr.,', 'M. G. Rd.,', 'Mulund(W)', '400080', '400080', '22', '25655992 / 25919683', 'Mumbai', 'Maharashtra', '25655992/253', 'HOSPITAL', 'drnareshshetty@yahoo.co.in,gokulnursinghome@gmail.com', '-', '400001015', 'Y', '8.90008E+1', '19.17315', '72.95565', 'Secondary', 'G'),
('610', 'SIR HN HOSPITAL TRUST(RELIANCE FOUNDATION)', 'Padmashri Gordhanbapa Chowk,', 'Raja Ram Roy Marg,', 'Prathna Samaj', '400004', '400004', '22', '61305005 / 61305552', 'Mumbai', 'Maharashtra', '23810707/66106269', 'HOSPITAL', 'RFH.TPADESK@rfhospital.org,abhishek.gawde@rfhospital.org,tpa@hnhospital.com,ref.tpa@rfhospital.org', '-', '400004012', 'Y', '8.90008E+1', '18.95891', '72.81993', 'Teritary', 'PG'),
('628', 'INLAKS GENERAL HOSPITAL', 'Inlaks Hospital Road,', 'Chembur Colony ,', 'Chembur', '400074', '400074', '22', '25204160 / 4161/ 4162/ 4163/ 4164', 'Mumbai', 'Maharashtra', '61500311/61500333/2520437', 'HOSPITAL', 'inlakstpadept@gmail.com,inlaks@rediffmail.com,indrajitchakraborty607@gmail.com', '-', '400074003', 'Y', '8.90008E+1', '19.04624', '72.89438', 'Secondary', 'PGI'),
('659', 'KATARIA EYE CLINIC', '102-103, First Floor, Kartar Bhavan ,', 'Above Central Bank Of India, Colaba Causeway', 'Colaba', '400005', '400005', '22', '22823083 / 22840430', 'Mumbai', 'Maharashtra', '22840430', 'HOSPITAL', 'katariasandeep70@gmail.com,eyefacts@hotmail.com,drkataria@outlook.com', 'www.skataria.com', '400006001', 'Y', '8.90008E+1', '18.91914', '72.82935', 'Secondary', 'PG'),
('675', 'SANJEEVANI SURGICAL AND GENERAL HOSPITAL ( MALAD )', 'Bhawani Chambers,', 'Kedarmal Road,Of Rani Sati Marg', 'Malad(E)', '400097', '400097', '22', '28445678 / 28809595 / 28442058', 'Mumbai', 'Maharashtra', '28442058', 'HOSPITAL', 'sankochmore@gmail.com,info@sanjeevanihospital.com,sanjeevanihospitalmalad@gmail.com,shivmohan42@gmail.com', '-', '400097017', 'Y', '8.90008E+1', '19.18456', '72.85272', 'Secondary', 'PGI'),
('706', 'DHANWANTRY HOSPITAL & ICCU', '545,N.S.Road,', 'Near 5 Rasta,', 'Mulund', '400080', '400080', '22', '25616070 / 25644706', 'Mumbai', 'Maharashtra', '25904371', 'HOSPITAL', 'd.dhanwantary@yahoo.in,ndavda@bol.net.in', '-', '400080015', 'Y', '8.90008E+1', '19.17633', '72.95341', 'Secondary', 'PGI'),
('717', 'SMT.SUSHILABEN R.MEHTA & SIR KIKABHAI PREMCHAND CARDIAC INSTITUTE', 'Plot No.96, Road No.31,', 'Near Shanmukhanand Hall', 'Sion', '400022', '400022', '22', '24035455,24035454 / 24035459', 'Mumbai', 'Maharashtra', '24094732', 'HOSPITAL', 'tpa@srmkpcardiac.com,srmkpci@gmail.com', '-', '400022013', 'Y', '8.90008E+1', '19.03241', '72.85958', 'Teritary', 'PGI'),
('760', 'ADARSH GENERAL & MATERNITY NURSING HOME', 'B, Shrenik Nagar , Chs Ltd.', 'Amrut Nagar,L.B.S Road,', 'Ghatkopar(W)', '400086', '400086', '22', '25007853 / 25002288', 'Mumbai', 'Maharashtra', '25007853 / 25007481', 'HOSPITAL', 'adarsh.maternity.nh@gmail.com,info@theadarshhospital.com', 'www.theadarshhospital.com', '400086001', 'N', '8.90008E+1', '19.08880', '72.90731', 'Secondary', 'P'),
('761', 'MODI GENERAL HOSPITAL & I.C.C.U ( VIKHROLI )', '240 / 3271,', 'Tagore Nagar,', 'Vikhroli (E)', '400083', '400083', '22', '25742061/ 25748939/ 25746595 / 25745666', 'Mumbai', 'Maharashtra', '25743000', 'HOSPITAL', 'modihospitals@rediffmail.com,modihospital@yahoo.com', 'www.modihospitals.com', '400083005', 'Y', '8.90008E+1', '19.11762', '72.93276', 'Secondary', 'PGI'),
('771', 'SANCHAITI HOSPITAL PVT LTD', 'Shree Mira Co-Op. Housing Society,', 'Akurli Road', 'Kandivali(E)', '400101', '400101', '22', '40672800/', 'Mumbai', 'Maharashtra', '28878149', 'HOSPITAL', 'sanchaitihospital3@gmail.com', '-', '400101017', 'Y', '8.90008E+1', '19.20125', '72.86612', 'Secondary', 'GI'),
('780', 'SAPNA HEALTHCARE CENTRE', '1st Floor, A-Wing, Bhaveshwar Plaza,', 'Opp. Shreyas Cinema,', 'Ghatkopar(W)', '400086', '400086', '22', '25003831/25001054/ 2500 42 02/ 25151753', 'Mumbai', 'Maharashtra', '42155059/40612051', 'HOSPITAL', 'sapna_healthcare@rediffmail.com, shccpvtltd@gmail.com', 'www.sapnahealthcare.com', '400086028', 'Y', '8.90008E+1', '19.09080', '72.90766', 'Secondary', 'PGI'),
('806', 'PARAMOUNT GENERAL HOSPITAL & I.C.C.U ( MUMBAI )', 'Laxmi Commercial Premises,', 'Sakinaka Junction,', 'Andheri (E)', '400072', '400072', '22', '28590606 / 28590064', 'Mumbai', 'Maharashtra', '56778911', 'HOSPITAL', 'paramountgeneralhospital_iccu@rediffmail.com', 'www.paramount.treatum.com', '400059013', 'Y', '8.90008E+1', '19.10382', '72.88686', 'Secondary', 'GI'),
('807', 'UNIQUE HOSPITAL AND POLYCLINIC (DR.VAID)', 'Jamuna Apartments,', 'Opp. Sphoppers Stop,', 'Andheri(W)', '400056', '400056', '22', '26283600 / 5700 / 26208577 / 26253734', 'Mumbai', 'Maharashtra', '26283600', 'HOSPITAL', 'zubindoctor@rediffmail.com', '-', '400058027', 'N', '8.90008E+1', '19.11403', '72.84251', 'Secondary', 'I'),
('820', 'MASINA HOSPITAL', 'Near Gloria Church, Sant Savta Mali Marg,', 'Near Ralway Station,', 'Byculla (E)', '400027', '400027', '22', '23714889 / 90/ 23721676', 'Mumbai', 'Maharashtra', '23721676', 'HOSPITAL', 'tpamasina@gmail.com,masinahospital@rediffmail.com', 'www.masinahospital.com', '400027002', 'Y', '8.90008E+1', '18.97492', '72.83571', 'Teritary', 'PG'),
('1229', 'SATYAM NURSING HOME ( GHATKOPAR )', 'Bhaveshwar Plaza, C-Wing , 2nd Floor', 'L.B.S.Marg, Near Bhaveshwar Plaza,', 'Ghatkopar(W)', '400086', '400086', '22', '25004409/ 25002600', 'Mumbai', 'Maharashtra', '25007739', 'HOSPITAL', 'ngouhar@yahoo.com,satyamhospital86@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.09260', '72.91218', 'Secondary', 'G'),
('1361', 'LIFELINE HOSPITAL& HEART INSTITUTE( MALAD)', 'A-Wing, 101,102,B-101,', 'Vishal Complex,,S. V. Road', 'Malad(W)', '400064', '400064', '22', '28074040 / 28073109 / 28020475', 'Mumbai', 'Maharashtra', '28074040', 'HOSPITAL', 'lifelinehospital@vsnl.net,drkamleshnshah@gmail.com', 'www.lifelinehospitalmumbai.in', '400064030', 'Y', '8.90008E+1', '19.19012', '72.84789', 'Secondary', 'GI'),
('1388', 'SUSHRUT HOSPITAL AND RESEARCH CENTRE', '365, Swastik Park', 'Opposite To Swastik Chembers And Lane Mseb Staff', 'Chembur', '400071', '400071', '22', '25265555 / 25265500 / 25283302', 'Mumbai', 'Maharashtra', '25265329 /25288771', 'HOSPITAL', 'tpa@sushruthospital.org,care@sushruthospital.org,billing@sushruthospital.org,finance@sushruthospital.org', 'www.sushruthospital.org', '400077036', 'Y', '8.90008E+1', '19.05645', '72.88950', 'Secondary', 'PGI'),
('1403', 'SUMAN EYE CLINIC AND SURGERY CENTRE LLP', 'B/ 103, Suman Apartments', '3rd Cross Lane, Lokhandwala Complex', 'Andheri(W)', '400053', '400053', '22', '26326508 / 26362418', 'Mumbai', 'Maharashtra', '26362418 / 26326508', 'HOSPITAL', 'drsanjay_c@yahoo.co.in, sumaneye@gmail.com', 'sumaneyeclinic.com', '400053032', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'GI'),
('1469', 'MALLIKA HOSPITAL', 'Sharma Estate,Next To Dewan Shopping Centre,', 'S.V.Road,', 'Jogeshwari(W)', '400102', '400102', '22', '26797171', 'Mumbai', 'Maharashtra', '26798585 / 26797171', 'HOSPITAL', 'hospital.m@gmail.com,m.hospital2016@gmail.com', '-', '400102005', 'Y', '8.90008E+1', '19.13744', '72.84671', 'Secondary', 'PGI'),
('1672', 'FORTIS HOSPITALS LIMITED (MULUND)', 'Mulund Goregaon Link Road', 'Opp To Demart', 'Mulund(W)', '400078', '400078', '22', '67994444/4134/4400 /4155// 67994185', 'Mumbai', 'Maharashtra', '67994343 / 66466824', 'HOSPITAL', 'nazir.ahmed@fortishealthcare.com,collection.mulund@fortishealthcare.com,tpa.mulund@fortishealthcare.com,claims.mulund@fortishealthcare.com', 'Deepak tpa 4925 4306', '400051002', 'Y', '8.90008E+1', '19.16207', '72.94198', 'Teritary', 'PGI'),
('1888', 'PATEL NURSING HOME(ANDHERI EAST)', 'B-Vishal Apartments, M.V. Road', 'Vishal Hall,', 'Andheri(E)', '400069', '400069', '22', '26835108 26831836', 'Mumbai', 'Maharashtra', '26831836', 'HOSPITAL', 'drpateldh@yahoo.co.in,dhpatel@vsnl.com', 'www.drdhpatel.com', '400069012', 'Y', '8.90008E+1', '19.11843', '72.85241', 'Secondary', 'PGI'),
('2027', 'SHREE SAI CLINIC & LATE PARVATI SHANKAR RAO CHAVAN MEMORIAL HOSPITAL', 'Padmavati Bldg,Unnat Nagar Road No.2,', 'Near Pathkar College, Sv Road,', 'Goregaon(W)', '400062', '400062', '22', '42682222 to 27', 'Mumbai', 'Maharashtra', '66949211', 'HOSPITAL', 'shreesaiclinic62@gmail.com,shreesaiclinic63@gmail.com,saiclinichospital@yahoo.co.in', '-', '400104003', 'Y', '8.90008E+1', '19.02022', '72.83399', 'Secondary', 'PG'),
('2115', 'CRITICARE HOSPITAL & RESEARCH CENTRE(JVPD SCHEME)', 'Plot No.39,Opp Juhu Supreme Shopping Centre,', 'Main Gulmohar Road,', 'Andheri(W)', '400049', '400049', '22', '26286644/67756600/67756698/97', 'Mumbai', 'Maharashtra', '26703201 / 24308048', 'HOSPITAL', 'cashlesswest@criticarehospital.in,cashlesscriticarejuhu@gmail.com,caharshitacch@gmail.com,drsandhyacriticare@gmail.com', 'www.criticarehospital.in', '400049004', 'Y', '8.90008E+1', '19.11551', '72.83527', 'Secondary', 'PGI'),
('2195', 'BSES MG HOSPITAL', 'S.V. Road,', 'Opp. Andheri Station,', 'Andheri(W)', '400058', '400058', '22', '66487500 / 66487544/45 / 66487636', 'Mumbai', 'Maharashtra', '26715000 / 66487658', 'HOSPITAL', 'bses-tpa@ghrc-bk.org,bses-ipd@ghrc-bk.org,act@ghrc-bk.org', 'www.ghrc-bk.org', '400058002', 'N', '8.90008E+1', '19.11945', '72.84494', 'Teritary', 'PI'),
('2547', 'GOMATHI EYE CENTRE', 'No-101, \"Maa Durgamata\",', 'Hanuman Chowk,Vghar Road, Mulund (E)', 'Mulund(E)', '400081', '400081', '22', '21631482', 'Mumbai', 'Maharashtra', '21631482 / 25911481', 'HOSPITAL', 'gomathieye@hotmail.com', 'www.gomthieye.com', '400081004', 'N', '8.90008E+1', '19.16951', '72.95964', 'Secondary', 'PI'),
('2599', 'H.J.DOSHI GHATKOPAR HINDU SABHA HOSPITAL', 'Shraddanand Road', 'Opp Railway Station', 'Ghatkopar(W)', '400086', '400086', '22', '25094451/52/53/54', 'Mumbai', 'Maharashtra', '25124959 / 25094451', 'HOSPITAL', 'hjdoshighs@hotmail.com,hjdoshi.tpa123@gmail.com', '-', '400086013', 'Y', '8.90008E+1', '19.08525', '72.90622', 'Secondary', 'PG'),
('2653', 'SRUSHTI ORTHOPEDIC HOSPITAL', '111, R R Realty, 1st Floor,', 'Junction Of L B S Marg, & Tank Road,', 'Bhandup(W)', '400078', '400078', '22', '25955275', 'Mumbai', 'Maharashtra', '25969727', 'HOSPITAL', 'orthosrushti@hotmail.com', '-', '400078038', 'Y', '8.90008E+1', '19.14735', '72.93595', 'Secondary', 'G'),
('2657', 'ARIHANT EYE CARE CENTRE', 'B-104,Gomti Apartments,Above Mandapeshwar Hospital,', 'Near Sudhir Phadke Flyover,Svp Road,', 'Borivali(W)', '400092', '400092', '22', '28957699 / 28951118', 'Mumbai', 'Maharashtra', '28957699', 'HOSPITAL', 'drrahulji@gmail.com,arihanteyecare@gmail.com', '-', '400092005', 'Y', '8.90008E+1', '19.23751', '72.85600', 'Secondary', 'PG'),
('2659', 'AGGARWAL EYE HOSPITAL (ANDHERI )', '102/5,Ketayun Mainsion,Sahaji Raje Marg,', 'Koldongri,', 'Andheri (E)', '400057', '400057', '22', '66960220/66960221/26825893', 'Mumbai', 'Maharashtra', '66960220 / 21', 'HOSPITAL', 'aggarwaleyehospital@gmail.com', 'www.aggarwaleyehospital.org', '400057001', 'Y', '8.90008E+1', '19.11000', '72.84949', 'Secondary', 'PG'),
('2678', 'DR.BOTHRA\'S HOSPITAL', '1st Floor ,Ram Krishna Building,', 'Gadav Naka', 'Bhandup(W)', '400078', '400078', '22', '25956516/24556232', 'Mumbai', 'Maharashtra', '25963755/ 25949926', 'HOSPITAL', 'k.bothra@yahoo.co.in', '-', '400078003', 'Y', '8.90008E+1', '19.15324', '72.93077', 'Secondary', 'PGI'),
('2680', 'BHAGAT NURSING HOME (SUN SUPER SPECIALITY HOSPITAL)', 'Ganesh Niwas,2nd Floor,Pai Nagar,', 'Ganjawala Lane,', 'Borivali(W)', '400092', '400092', '22', '28956060', 'Mumbai', 'Maharashtra', '28917474', 'HOSPITAL', 'sshbhagathospital@gmail.com', '-', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'GI'),
('2691', 'SIDDHI NURSING HOME (SANTACRUZ )', '16/121,Anand Nagar,', 'Near Vakola Poilce Station,', 'Santacruz(E)', '400055', '400055', '22', '26685747 / 26080509', 'Mumbai', 'Maharashtra', '26686767', 'HOSPITAL', 'siddhihospital93@gmail.com,arati.mutha@gmail.com,muthadhkmn@gmail.com', '-', '400055008', 'Y', '8.90008E+1', '19.08167', '72.84724', 'Secondary', 'PG'),
('2736', 'SHRI BALCHIKITSALAYA HOSPITAL', '14 A Miniland', 'Tank Road', 'Bhandup(W)', '400078', '400078', '22', '25951297 / 25963755', 'Mumbai', 'Maharashtra', '25963755', 'HOSPITAL', 'k.bothra@yahoo.co.in', '-', '400078033', 'Y', '8.90008E+1', '19.14743', '72.86298', 'Secondary', 'PGI'),
('2778', 'YASHWANT HOSPITAL - VIKHROLI', 'Tagore Nagar,Group No.8/B,', 'Near Old Tagore Nagar Post Office', 'Vikhroli(E)', '400083', '400083', '22', '257,456,042,574,202,000,000,000', 'Mumbai', 'Maharashtra', '25743731', 'HOSPITAL', 'yashwant.hospital@gmail.com,prabhuamey84@gmail.com', 'www.yashwanthospital.com', 'NA', 'Y', '8.90008E+1', '19.11517', '72.93377', 'Secondary', 'G'),
('2782', 'DR. SHETTY\'S E.N.T. HOSPITAL', '9, Luv-Kush, M.G.Road,', 'Panch Rasta,', 'Mulund(W)', '400080', '400080', '22', '25909844/25606548', 'Mumbai', 'Maharashtra', '5670702', 'HOSPITAL', 'jeevanent@yahoo.co.in', '-', '400080016', 'Y', '8.90008E+1', '19.17611', '72.95173', 'Secondary', 'GI'),
('2808', 'AGRAWAL EYE HOSPITAL(MALAD)', 'Maharaja Apartments,', 'Opp Malad Telephone Exchange,S. V. Road', 'Malad(W)', '400064', '400064', '22', '28820900/28801730', 'Mumbai', 'Maharashtra', '28801730/28884488', 'HOSPITAL', 'drshyamagrawal12@gmail.com', 'www.drshyamagrawal.com', '400064005', 'Y', '8.90008E+1', '19.18986', '72.84641', 'Secondary', 'PGI'),
('2821', 'SHIVAM NURSING HOME(KANDIVALI)', 'Shrenik Chs Ltd, Plot 106, Sector-2,', 'Near Ies School, Charkop,', 'Kandivali (W)', '400067', '400067', '22', '28693615 / 28691312 / 28680671', 'Mumbai', 'Maharashtra', '28693615', 'HOSPITAL', 'info@shivamhospitals.co.in,admin@shivamhospitals.co.in,spataria@yahoo.com', '-', '400067037', 'Y', '8.90008E+1', '19.21472', '72.82395', 'Secondary', 'G'),
('2897', 'MUKUND MATERNITY & SURGICAL NURSING HOME(ANDHERI)', '6-601,Mukund Nagar Soc.', 'Marol Pipe Line,Andheri Kurla Road,', 'Andheri(E)', '400059', '400059', '22', '61116888 / 28221936/ 28391059', 'Mumbai', 'Maharashtra', '28391059/2832856', 'HOSPITAL', 'bipinpandit@gmail.com,mukundhospital82@gmail.com', '-', '400059011', 'Y', '8.90008E+1', '19.11180', '72.86879', 'Secondary', 'GI'),
('2902', 'SUD CLINIC ( ANDHERI )', '192,Shaheed Bhagat Singh Colony, J.B. Nagar', 'Off Andheri Kurla Road, Link Road, Nxt To Gurudwara', 'Andheri(E)', '400059', '400059', '22', '28344107 / 28394505', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'pardeepsud@yahoo.co.in,psud53@gmail.com', '-', '400059023', 'N', '8.90008E+1', '19.11508', '72.85928', 'Primary', 'I'),
('2992', 'ZYNOVA HOSPITALS PRIVATE LIMITED', '205, Trimurti Arcade,', 'L. B. S. Marg, Nr. Sarvoday Hospital', 'Ghatkopar(W)', '400086', '400086', '22', '42700641 / 42700600 / 42700633', 'Mumbai', 'Maharashtra', '25153337', 'HOSPITAL', 'tpa@zynovahospitals.com,info@zynovahospitals.com', 'www.zynovaheart.com', '400086039', 'Y', '8.90008E+1', '19.08910', '72.90691', 'Secondary', 'GI'),
('3105', 'NATIONAL HOSPITAL & ICCU ( MULUND)', 'Vikas Paradise, 1st Floor, Lbs Road,', 'Bhakti Marg. Opp Balrejeshwar Mandir,', 'Mulund (W)', '400080', '400080', '22', '66430743 / 25650743 / 25650744', 'Mumbai', 'Maharashtra', '66430500', 'HOSPITAL', 'chetanharia@hotmail.com,pratulharia@hotmail.com', '-', '400081014', 'Y', '8.90008E+1', '19.18245', '72.94941', 'Secondary', 'PG'),
('3107', 'SAI KRIPA HOSPITAL', '001/002, Ashish Chs, Raheja Township,', 'Rani Sati Road, Near Sai Baba Temple', 'Malad(E)', '400097', '400097', '22', '28776616 28780778 38776616', 'Mumbai', 'Maharashtra', '28776616/28780778', 'HOSPITAL', 'Saikrupahospitalmalad@gmail.com/ saiikrupa@gmail.com', '0', '400097015', 'Y', '8.90008E+1', '19.18386', '72.85843', 'Secondary', 'G'),
('3155', 'SHAH CHILDREN HOSPITAL', 'A - Wing, 1st Floor, Arunoday Tower,', 'Kokan Nagar, Opp. Jaoli Bank, J. M. Road,', 'Bhandup(W)', '400078', '400078', '22', '25941139 / 25949690', 'Mumbai', 'Maharashtra', '25941139', 'HOSPITAL', 'sanjaypaed61@gmail.com, shahchildren1997@gmail.com', '-', '400078031', 'Y', '8.90008E+1', '19.14577', '72.92901', 'Secondary', 'PGI'),
('3171', 'DR. L H HIRANANDANI HOSPITAL', 'Hill Side Avenue', 'Hiranandani Gardens, Hiranandani Business Park', 'Powai', '400076', '400076', '22', '25763333 / 25763300/25763490', 'Mumbai', 'Maharashtra', '25763344', 'HOSPITAL', 'tpadesk@hiranandanihospital.org,,hemant.kamble@hiranandanihospital.com,sudhir.more@hiranandanihospital.org', 'nitin.pahurkar@hiranandanihospital.org', '400076001', 'Y', '8.90008E+1', '19.12032', '72.91731', 'Teritary', 'PGI'),
('3202', 'RIDDHI EYE CLINIC', '104/B, S. B. Apartment,', 'Rai Dongro, Carter Road No. 5,', 'Borivali(E)', '400066', '400066', '22', '28625447/64525447', 'Mumbai', 'Maharashtra', '28625447', 'HOSPITAL', 'riddhieye@rediffmail.com', '-', '400066019', 'Y', '8.90008E+1', '19.22700', '72.86295', 'Secondary', 'PGI'),
('3350', 'VARUN CARDIAC CLINIC', '101-102, Gayatridham,', 'Derasar Lane, M G Road,', 'Ghatkopar(E)', '400077', '400077', '22', '25010600 / 25013988', 'Mumbai', 'Maharashtra', '25010306', 'HOSPITAL', 'vcctpa@gmail.com,dr_mukeshparikh@hotmail.com', '-', '400022014', 'Y', '8.90008E+1', '19.08249', '72.90495', 'Secondary', 'PGI'),
('3353', 'SANJEEVAN NURSING HOME & ICCU', '1st Floor Neha Annexe Khot Road', 'Madhuban Garden, Off L B S Marg', 'Bhandup(W)', '400078', '400078', '22', '25954646 25954647 31056514', 'Mumbai', 'Maharashtra', '25954646', 'HOSPITAL', 'sanjeevannursingtpa@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.15056', '72.93686', 'Secondary', 'GI'),
('3779', 'DR. DIPAK DESAI EAR NOSE THROAT HOSPITAL', '206, Gayatri Dham,', 'M G Road,', 'Ghatkopar(E)', '400077', '400077', '22', '25138914', 'Mumbai', 'Maharashtra', '25011914', 'HOSPITAL', 'nashan 8489@yahoo.com', '-', '400077012', 'Y', 'NA', 'NA', 'NA', 'Secondary', 'PG'),
('3871', 'SAHU EYE HOSPITAL', 'A-1, Wimla Apartment,', 'Marve Road,', 'Malad(W)', '400064', '400064', '22', '28823623 / 28808397 / 28899492', 'Mumbai', 'Maharashtra', '28823623', 'HOSPITAL', 'info@sahueyehospital.com,shraddha@sahueyehospital.com,dramulyasahu@rediffmail.com', 'www.kamalnetralayaeyehospital.com', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'G'),
('4264', 'AASTHA HEALTH CARE', 'Mulund Colony, Off. L B S Road', 'Opp. Chheda Petrol Pump,', 'Mulund(W)', '400082', '400082', '22', '25628262/3', 'Mumbai', 'Maharashtra', '25628262', 'HOSPITAL', 'admin@aasthahealthcare.com,drmanish@aasthahealthcare.com', '-', '400082001', 'Y', '8.90008E+1', '19.17841', '72.94333', 'Secondary', 'PGI'),
('5047', 'EYE ESSENTIALS', '3, Milan, 169 - Garodia Nagar,', '90 Feet Road, Opp. Lavender Bough,', 'Ghatkopar(E)', '400077', '400077', '22', '25068855 / 25067733', 'Mumbai', 'Maharashtra', '25068855', 'HOSPITAL', 'kalpesh913@yahoo.co.in', 'eye.esentiale.net', '400077018', 'Y', '8.90008E+1', '19.07549', '72.90855', 'Secondary', 'GI'),
('5060', 'APEX HOSPITAL (MULUND)', 'Veenanagar Phase Ii, Near Swapna Nagri,', 'Model Town & Tulsi Pipe Lane Road,', 'Mulund (W)', '400080', '400080', '22', '41624000', 'Mumbai', 'Maharashtra', '41624040', 'HOSPITAL', 'accounts.mulund@apexhospitals.in,cashless.mulund@apexhospitals.in', 'www.apexhospital.in', '400080057', 'Y', '8.90008E+1', '19.18096', '72.94246', 'Secondary', 'PGI'),
('5345', 'ROMEEN MEDICO SURGICAL HOSPITAL', 'Opp. Tagore Nagar Municipal School,', 'Group - 1, Ganesh Marg,', 'Vikhroli (East)', '400083', '400083', '22', '25745562 / 25745563', 'Mumbai', 'Maharashtra', '25942376', 'HOSPITAL', 'vasantbhosale33@gmail.com,romeenmalwankar@yahoo.in,romeenhospitalz@gmail.com', '-', '400078007', 'Y', '8.90008E+1', '19.11531', '72.93095', 'Secondary', 'GI'),
('5461', 'KOHINOOR HOSPITAL PVT LTD', 'Kohinoor City, Kirol Road,', 'Off L B S Road,', 'Kurla (W)', '400070', '400070', '22', '30553055 / 67556755 / 67556726', 'Mumbai', 'Maharashtra', '67556800', 'HOSPITAL', 'neha.vishwakarma@kohinoorhospitals.in,ipbilling@kohinoorhospitals.in,accounts@kohinoorhospitals.in,tpacell@kohinoorhospitals.in', 'www.kohinoorhospitals.in', '400070007', 'Y', '8.90008E+1', '19.07621', '72.88620', 'Teritary', 'PG'),
('5614', 'SEVENHILLS HEALTHCARE PVT. LTD. (MUMBAI)', 'Marol-Maroshi Road,', 'Seven Health City,', 'Andheri (E)', '400059', '400059', '22', '67676767', 'Mumbai', 'Maharashtra', '67676718/29254188', 'HOSPITAL', 'tpamumbai@sevenhillshospital.com,shivkumar.k@sevenhillshospital.com,mumbai.collection@sevenhillshospital.com', '-', '400059018', 'Y', '8.90008E+1', '19.11772', '72.8786', 'Teritary', 'PGI'),
('6120', 'APEX KIDNEY CARE PVT. LTD.', 'Abhishek Commercial Complex ,', '3 Rd Floor, Near Aditi Hotel , S.V. Road,Deonar', 'Malad', '400062', '400062', '22', '28809303 / 28809114 / 25575971', 'Mumbai', 'Maharashtra', '28809114', 'HOSPITAL', 'shrikant.khot@apexkidneycare.in', '-', 'NA', 'Y', 'NA', 'NA', 'NA', 'Secondary', 'G'),
('6418', 'DR MUKHIS RAJ HOSPITAL', 'Devi Dayal Road,', 'Near Panch Rasta,', 'Mulund (W)', '400080', '400080', '22', '25658821 / 25658843', 'Mumbai', 'Maharashtra', '25674166', 'HOSPITAL', 'smukhi1@hotmail.com,drmukhirajhospital@outlook.com', '-', '400080018', 'Y', '8.90008E+1', '19.17610', '72.94897', 'Secondary', 'GI'),
('6674', 'APOLLO SPECTRA HOSPITALS-CHEMBUR (APOLLO SPECIALITY HOSPITALS PRIVATE LTD)', 'Near Sunder Baug, Ujagar Compound, Opp. Deonar Bus Depot Main Gate,', 'Sion Trombay Road, Deonar, Borla Village,', 'Chembur', '400088', '400088', '22', '43344600 / 43344609', 'Mumbai', 'Maharashtra', '43344603', 'HOSPITAL', 'tpa.cbr@apollospectra.com,cc.cbr@apollospectra.com', 'www.apollospectra.com', '400088002', 'Y', '8.90008E+1', '19.04727', '72.91114', 'Secondary', 'PGI'),
('7339', 'HITECH UROLOGY CENTRE', 'K,Sushobhan, Opp Bmc Market,', 'Near Bhurabhai Hall,Sarojini Naidu Road,', 'Kandivali (W)', '400067', '400067', '22', '28062525', 'Mumbai', 'Maharashtra', '28062525', 'HOSPITAL', 'vivekmaste@yahoo.com,diptimaste@gmail.com', '-', '400067014', 'Y', '8.90008E+1', '19.19962', '72.84261', 'Secondary', 'PG'),
('7428', 'R G STONE UROLOGY & LAPAROSCOPY HOSPITAL - ANDHERI', 'C Wing, Dhananjay Apartment,', 'Behind Balaji Studio, Off Veera Desai Road,', 'Andheri (W)', '400059', '400059', '22', '40743333', 'Mumbai', 'Maharashtra', '40743334', 'HOSPITAL', 'corpdesk.andheri@rghospital.com, surjitsingh86@gmail.com,ccd.mumbai@rghospital.com', 'www.rghospital.com', '400059016', 'Y', '8.90008E+1', '19.13672', '72.83646', 'Secondary', 'PGI'),
('7436', 'DNA MULTISPECIALTY HOSPITAL', '1st Floor, Whispering Palms Shopping Center,', 'Next To Lokhandwala Sales Office, Akurli Road', 'Kandivali E', '400101', '400101', '22', '29653388 / 29654488', 'Mumbai', 'Maharashtra', '29654488', 'HOSPITAL', 'dnahospital@yahoo.in, dnamhospital@gmail.com', '-', '400101004', 'Y', '8.90008E+1', '19.20052', '72.87134', 'Secondary', 'GI'),
('7569', 'SAI HOSPITAL DHARAVI ( SAI MEDICURE SERVICES PVT. LTD.)', 'Masiha Islampura Chs Ltd. Behind Sion Hospital,', 'Near Dharavi Police Station, 90 Feet Road, Near Kamraj School', 'Dharavi', '400017', '400017', '22', '24022739/40/41/42', 'Mumbai', 'Maharashtra', '24022738', 'HOSPITAL', 'sai.hospitaldharavi@yahoo.com', 'www.saigroupofhospital.in', '400017007', 'Y', '8.90008E+1', '19.03992', '72.85468', 'Secondary', 'PGI'),
('7803', 'OSCAR HOSPITAL( KANDIWALI )', 'Pooja Enclave 15-22, D & E-Wing,', 'Ganesh Nagar', 'Kandiwali (W)', '400067', '400067', '22', '22,296,720,202,869,600,000,000,000', 'Mumbai', 'Maharashtra', '28672022', 'HOSPITAL', 'theoscarhospital@gmail.com', 'wwwoscarhospital.com', 'NA', 'Y', '8.90008E+1', '19.20364', '72.82772', 'Secondary', 'PG'),
('8188', 'SHANTINIKETAN HOSPITAL(GHATKOPAR)', 'E-Bldg Gr Fl Shantiniketan', 'L.B.S. Marg', 'Ghatkopar(W)', '400086', '400086', '22', '2,500,100,525,001,020', 'Mumbai', 'Maharashtra', '25001025', 'HOSPITAL', 'shantiniketanhospital@gmail.com', 'www.shantiniketanhospital.com', '400086044', 'Y', '8.90008E+1', '19.09521', '72.91386', 'Secondary', 'PG'),
('8823', 'V CARE HOSPITAL MEDICAL SURGICAL & ICU', 'Kusumesh Chanda Hospital,Rinisa Residency Apartment,', 'Building No-101,', 'Kurla', '400024', '400024', '22', '25292317', 'Mumbai', 'Maharashtra', '25290100', 'HOSPITAL', 'corporateomr@gmail.com,vcarehospital06@gmail.com', '-', '400070015', 'Y', '8.90008E+1', '19.06270', '72.88164', 'Secondary', 'GI'),
('9012', 'VARDANN HOSPITAL', 'C-2, D-2, Ground Floor, Sonal Link,', 'Residency,Near Marve Junction,', 'Link Road, Malad(W)', '400064', '400064', '22', '0', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'vardannhospitalmalad@gmail.com', '0', 'NA', 'Y', 'NA', 'NA', 'NA', 'Secondary', 'G'),
('9757', 'ZENITH HOSPITAL (MUMBAI)', 'Parth Business Plaza,', 'Mith Chowki Link Road,', 'Malad West', '400064', '400064', '22', '28837861/62/63', 'Mumbai', 'Maharashtra', '28837863', 'HOSPITAL', 'tpahelpdesk@zenithhospital.com,marketing@zenithhospital.com,tpazenith@gmail.com', 'www.zenithhospital.com', '400064058', 'Y', '8.90008E+1', '19.19506', '72.83412', 'Secondary', 'GI'),
('9877', 'APEX KIDNEY CARE PVT. LTD (CHEMBUR)', 'C/O. Sushrut Hospital,2nd Fllor,', 'Swastik Park,Near Kach Gujar Hall,', 'Chembur(E)', '400071', '400071', '22', '25278908 25278909', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'admine.malad@apexkidneycare.in', '-', 'NA', 'Y', '8.90008E+1', '19.18785', '72.83684', 'Secondary', 'G'),
('11255', 'GLOBAL HOSPITAL SUPER SPECIALITY & TRANSPLANT CENTRE', '35, Dr. .E Borges Road ,Hospital Avenue,', 'Opp Shirodkar High School,', 'Parel', '400012', '400012', '22', '6,767,010,767,670,100', 'Mumbai', 'Maharashtra', '6,767,012,167,670,100', 'HOSPITAL', 'account.mumbai@globalhospitalsindia.com,tpacorporate.mumbai@globalhospitalsindia.com,prasad.gamare@globalhospitalsindia.com', '0', '400012004', 'Y', '8.90008E+1', '18.99920', '72.84051', 'Teritary', 'PGI'),
('11337', 'HEALTH HI TECH ORTHOPAEDIC & SURGICAL CENTER', 'Kandivali Sai Kripa, Plot No 51-B,', 'Dattamandir Road, Dahanukar Wadi, Mahavir Nagar,', 'Kandivali (W)', '400067', '400067', '22', '28672100 / 65294152', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'panchamiak@hotmail.com,drketanpanchamia@gmail.com', 'www.healthhitechhospital.com', '200', 'Y', '8.90008E+1', '19.20955', '72.83726', 'Secondary', 'G'),
('11400', 'LOTUS MULTISPECIALITY HOSPITAL', 'Satyam Apartment S. No. 1,2,3,', 'Dutta Mandir Road,', 'Bhandup (West)', '400078', '400078', '22', '25664919', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'lotushospital07@gmail.com', '0', '400078015', 'Y', '8.90008E+1', '19.15306', '72.94123', 'Secondary', 'PGI'),
('11679', 'DALVI NURSING HOME', 'Aditya Heritage Apt Commercial Office 101 102 103', '& Shop 1b V N Purab Marg', 'Chunabhati East', '400022', '400022', '22', '240,511,162,405,111,000,000,000', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'aryasanjivskh@yahoo.com,dalvihealthcare2013@gmail.com', 'www.dalvihealthcare.com', '549', 'Y', '8.90008E+1', '19.05484', '72.87749', 'Secondary', 'G'),
('11852', 'MEHTA NURSING HOME (MUMBAI)', '101, Rita Gold Crest ,1st Floor,', 'Opp Hanuman Temple', 'Daulat Nagar', '400066', '400066', '22', '28939565', 'Mumbai', 'Maharashtra', '28939565', 'HOSPITAL', 'mehtanursinghome@hotmail.com,dr_jeeten@hotmail.com', '0', '400066006', 'Y', '8.90008E+1', '19.23656', '72.86114', 'Secondary', 'G'),
('12138', 'LIFELINE MULTISPECIALITY HOSPITAL (MALAD)', 'Sainath Road, Cts No. 613/1,', 'Nr. Malad Subway, Off. S.V. Road,', 'Malad West', '400064', '400064', '22', '28885001 / 28885006', 'Mumbai', 'Maharashtra', '28885001', 'HOSPITAL', 'drkamleshnshah@gmail.com', 'www.lifelinehospitalmumbai.com', 'NA', 'Y', '8.90008E+1', '19.19012', '72.84789', 'Secondary', 'GI'),
('12151', 'ASHIRWAD CRITICAL CARE UNIT & MULTISPECIALITY HOSPITAL', '1st, 2nd, Navinjyot Buliding,', 'R.R.T. Road, Opposite Om Jewellers,', 'Mulund (W)', '400080', '400080', '22', '25606500 / 01 / 02 / 03', 'Mumbai', 'Maharashtra', '25606503', 'HOSPITAL', 'accunit@gmail.com', 'www.ashirwadhospitals.com', '400080009', 'Y', '8.90008E+1', '19.17474', '72.95263', 'Secondary', 'PG'),
('12918', 'DR MANISHA\'S SPARSHAD NURSHING HOME', 'L.B.S Marg, \'D\' Wing, 1st &2nd Floor, Saishruti Blg,', 'Adj Shangrilla Biscuit Company, Opp. Bharat Petrol Pump,', 'Bhandup (W)', '400078', '400078', '22', '65285774 / 25947869', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'jyoticashless@yahoo.in,sparshadnh@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.15574', '72.93726', 'Secondary', 'G'),
('12932', 'SAANVI ENT HOSPITAL', '1st Floor,111 , Shreeji Solitaire,', 'Khadakpada Circle, Kalyan(W)', 'Above Bikaner Sweet,', '421301', '421301', '251', '2021055 / 2970563', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'saanvienthospital@gmail.com,drshewade.c@gmail.com', '0', 'NA', 'Y', '8.90008E+1', '19.06069', '72.85045', 'Secondary', 'GI'),
('13007', 'PHOENIX HOSPITAL PVT. LTD.', 'Cst No.374, B/21, Padma Nagar,', 'Chikuwadi,', 'Boriwali (W).', '400092', '400092', '22', '28985671 / 28985672 / 28985673', 'Mumbai', 'Maharashtra', '28985671', 'HOSPITAL', 'tpa.phoenixhospital@gmail.com,info@phoenixhospitals.co.in', '-', '400092059', 'Y', '8.90008E+1', '19.21958', '72.83810', 'Secondary', 'G'),
('13243', 'ADVANCED MULTI SPECIALTY HOSPITALS', 'Inside Homopathic Medical College Campus,', 'Natkkar Gadkari Marg, Irla Vile P', 'Vile Parle (W)', '400056', '400056', '22', '2621 3500', 'Mumbai', 'Maharashtra', '26213502', 'HOSPITAL', 'drjigs@yahoo.co.in', 'amshospitals.in', 'NA', 'Y', 'NA', 'NA', 'NA', 'Secondary', 'G'),
('14061', 'LIFELLINE MEDICARE HOSPITALS PVT.LTD', 'Ground Floor, Dlh Park,', 'S.V.Road', 'Goregaon (W)', '400062', '400062', '22', '28758100 /01/02/03/04/05', 'Mumbai', 'Maharashtra', '28758100/01/02', 'HOSPITAL', 'mayaparit@gmail.com,lifelinemedicarehospital@gmail.com', 'www.lifelinemedicare.com', 'NA', 'Y', '8.90008E+1', '19.17232', '72.86844', 'Secondary', 'G'),
('14547', 'DISHA HOSPITAL - MUMBAI', 'Om Shree Sai Dham Chs,', 'Ghatkopar Andheri Link Road Asalpha Villaga', 'Ghatkopar (W)', '400084', '400084', '22', '25121215 /16', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'dishamultispeciality@gmail.com', '0', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'G'),
('15322', 'KIRTI NURSING HOME (KANDIVALI)', 'Kedamath,Plot : 7, Sector-7 R.D.P.: 5,', 'Near Bus Depot,Charkop', 'Kandivali (W)', '400067', '400067', '22', '28690174/28681510', 'Mumbai', 'Maharashtra', '28690174', 'HOSPITAL', 'tpa.kirtihospital@gmail.com', '-', '400067020', 'Y', '8.90008E+1', '19.22268', '72.82908', 'Secondary', 'PIG'),
('15420', 'LIFELLINE MEDICARE HOSPITAL PVT. LTD.', '1 St Floor, Above Saraswat Bank, Near Wellness Forever,', 'Thakur Complex, Kandivali- East', '0', '400101', '400101', '22', '28548101/28758100', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'lifelinemedicarehospital@gmail.com,lifelline.kandivalli@gmail.com', 'www.lifelinemedicare.com', 'NA', 'Y', 'NA', '19.17232', '72.86844', 'Secondary', 'GI'),
('15445', 'R. G. STONE UROLOGICAL', 'Unit No 603, 6 Th Floor,', 'Centre Point, J B Nagar', 'Andheri', '400059', '400059', '22', '26057805', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'surjitsingh86@gmail.com', 'www.rghospital.com', 'NA', 'Y', '8.90008E+1', '19.13672', '72.83646', 'Secondary', 'GI'),
('15520', 'PRAKASH EYE CARE CENTRE', 'Unit No 203, Mith Chowky Signal, Link Lotus Blg,', 'Link Road, Opp Zenith Hospital', 'Malad West', '400064', '400064', '22', '65006002', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'prakasheye27@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.19535', '72.83335', 'Secondary', 'G'),
('16178', 'GLOBAL EYE CLINIC', '305-306/, Shopzone Complex,', 'Above Colors Showroom,', 'Ghatkopar West', '400086', '400086', '22', '25127744 / 25127755 / 25127766', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'globaleyeclinic@gmail.com', 'www.globaleyeclinic.com', 'NA', 'Y', '8.90008E+1', '19.08931', '72.90780', 'Secondary', 'PG'),
('16226', 'DHANASHRI HOSPITAL - MUMBAI', 'Siddhivinayak Tower,', 'Natakwala Lane,', 'Borivali (W),', '400092', '400092', '22', '28087780, 28661050', 'Mumbai', 'Maharashtra', '28661050', 'HOSPITAL', 'dhanashrihospital01@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.22223', '72.85506', 'Secondary', 'G'),
('16354', 'SRCC CHILDREN\'S HOSPITAL(A UNIT OF NARAYANA HRUDAYALAYA LIMITED)', '1-1a, Haji Ali Park K. Khadey Marg,', 'Opposite Willingdon Sports Club', 'Mahalaxmi, Mumbai', '400034', '400034', '22', '71222222', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'info@srcc@nhhospitals.org,faridh.skm@narayanahealth.org,info.srcc@narayanahealth.org', 'www.narayanahealth.org', 'NA', 'Y', '8.90008E+1', '18.97846', '72.81346', 'Teritary', 'PG'),
('16418', 'THUNGA HEALTH CARE LLP', 'Opp. Nirman Diagnostic Centre,Goraswadi Road,', 'Nr Milap Cinema, Off S V Road,', 'Malad (W)', '400064', '400064', '22', '28661400', 'Mumbai', 'Maharashtra', '28090128', 'HOSPITAL', 'info@thungahealthcare.com,thungahealthcarellpmalad@gmail.com', 'www.thungahospital.com', '68021', 'Y', '8.90008E+1', 'NA', 'NA', 'Teritary', 'PGI'),
('16490', 'MUMBAI EYE CARE CORNEA AND LASIK CENTER', '101/102, Sai Vaibhav Chs,', 'Near Vikrant Circle,', 'Ghatkopar (East)', '400077', '400077', '22', '25066699', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'tpa.mumbaieyecare@gmail.com,mumbaieyecarecornealasik@gmail.com', 'www.mumbaieyecarecornealasik.com', 'NA', 'Y', '8.90008E+1', '19.07479', '72.90540', 'Secondary', 'GI'),
('25006', 'PARAKH HOSPITAL', 'Khokhani Lane,', 'Opp. Railway Station,', 'Ghatkopar(E)', '400077', '400077', '22', '67827000 / 311/25157000 / 1/2/3', 'Mumbai', 'Maharashtra', '67827007/ 25011007', 'HOSPITAL', 'parakhrc@gmail.com,info@parakhhospital.com,poonam@parakhhospital.com', 'www.parakhhospital.com', '400077032', 'Y', '8.90008E+1', '19.08460', '72.90748', 'Secondary', 'PGI'),
('25177', 'S.L. RAHEJA HOSPITAL', 'Raheja Rugnalaya Road', 'NA', 'Mahim (W)', '400016', '400016', '22', '66529612 / 66529888 / 999', 'Mumbai', 'Maharashtra', '24442486', 'HOSPITAL', 'tpacell@rahejahospital.com,amit.naik@rahejahospital.com,info@rahejahospital.com', 'www.rahejahospital.com', '400016015', 'Y', '8.90008E+1', '19.04657', '72.84220', 'Teritary', 'PGI'),
('25518', 'SNEH MATERNITY SURGICAL & GENERAL NURSING HOME', '111 / 112, Ekveera,', 'Old Nagardas Road, Near Hdfc Home Loans Office,', 'Andheri(E)', '400069', '400069', '22', '26839921 / 56995142', 'Mumbai', 'Maharashtra', '26833240', 'HOSPITAL', 'draneeshsabnis@yahoo.co.in', '-', '400069021', 'N', '8.90008E+1', '19.12103', '72.85000', 'Secondary', 'I'),
('25627', 'PARVATIBAI CHAVAN CHARITABLE TRUST.', 'Yashwant Hospital -Bldg, Dhanukarwadi ,', 'Dattamandir Cross Road No.1,', 'Kandivali', '400067', '400067', '22', '28054891', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'pccttpa@gmail.com,drchavanvishal@gmail.com', '-', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'G'),
('27285', 'DR.SONAGRA MEDICAL & SURGICAL CENTRE', 'Shiv Plaza, 2nd Floor,', 'Opp. Ghatkopar Telephone Exchange, L B S Road,', 'Ghatkopar(W)', '400086', '400086', '22', '41207766', 'Mumbai', 'Maharashtra', '25120099', 'HOSPITAL', 'rajaramsonagra@yahoo.com,smsc86@gmail.com', '-', '400086006', 'Y', '8.90008E+1', '19.08757', '72.90450', 'Secondary', 'PGI'),
('27449', 'DR. REDKAR\'S MATERNITY & NURSING HOME', 'A - 10, 3 & 4, Apurva Apartment,', 'Govardhan Nagar, L B S Marg,', 'Mulund(W)', '400081', '400081', '22', '25621211 / 12', 'Mumbai', 'Maharashtra', '25640043/25673977', 'HOSPITAL', 'dr.redkar@gmail.com', '-', 'NA', 'N', '8.90008E+1', '19.18266', '72.94797', 'Secondary', 'PI'),
('28462', 'HDL LIFECARE PLUS', 'Green Lawn Apt.,', 'Opp.St.Pius College, Aarey Road,', 'Goregaon(E)', '400063', '400063', '22', '29270400 / 125', 'Mumbai', 'Maharashtra', '26865617 / 26862022', 'HOSPITAL', 'hdllifecareplus@gmail.com,saisparshcriticalcare@rediffmail.com', '-', '400063008', 'Y', '8.90008E+1', '19.16632', '72.85588', 'Secondary', 'PG'),
('28811', 'THE CHILDREN\'S HOSPITAL', '1/2 Chandra Raj Apartment Chincholi Bunder Road,', 'Khandelwal Layout,Link Road', 'Malad (W)', '400064', '400064', '22', '28807575', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'admin@tchm.co.in,tpa@tchm.co.in', '-', 'NA', 'Y', '8.90008E+1', '19.19058', '72.83487', 'Secondary', 'G'),
('29833', 'SURYA CHILDREN\'S MEDICARE PRIVATE LIMITED', '101-102 Mangal Ashirwad,Junction,', 'S V And Dattary Road,Tps Ii ,', 'Santacruz(W)', '400054', '400054', '22', '61538923,24,61538989', 'Mumbai', 'Maharashtra', '61538990', 'HOSPITAL', 'tpa@suryahospitals.com,suryabio@vsnl.com,tpa@suryachildcare.com,corporate@suryahospitals.com,collections@suryahospitals.com', 'www.surychildrenhospitals.com', '400054024', 'Y', '8.90008E+1', '19.08201', '72.83446', 'Secondary', 'GI'),
('32862', 'DATTATREYA NURSING HOME', 'Opp Bandhutva Chs, Datta Mandir Road', 'Near Vakola Bridge', 'Santacruz (E)', '400055', '400055', '22', '66979963 / 66916398 / 26682841', 'Mumbai', 'Maharashtra', '26682782 / 26682841', 'HOSPITAL', 'dattatreyanh@gmail.com', '-', '400055002', 'Y', '8.90008E+1', '19.08353', '72.85294', 'Secondary', 'PGI'),
('33111', 'NEW LIFE NURSING HOME (KANDIVALI)', '11-12/A, Tirupati Tower,', 'Thakur Complex, W E Highway,', 'Kandivli(E)', '400101', '400101', '22', '28548307 ,285406190', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'drvijaymoon@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.20145', '72.86440', 'Secondary', 'G'),
('33198', 'DR. BHATIA\'S RUBY HOSPTIAL.', 'First Floor, Arunoday Tower, Konkan Nagar,', 'Jangal Mangal Road,', 'Bhandup', '400078', '400078', '22', '5680719', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'chowdhryjiten@gmail.com, drbhatiarubyhosp@gmail.com', '0', '400078005', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'PGI'),
('33442', 'ASHWINI NURSING HOME & POLYCLINIC', 'Ganesh Apt, Ground Floor,', 'L. J. Road,', 'Mahim(W)', '400016', '400016', '22', '24455105 / 24455155', 'Mumbai', 'Maharashtra', '24319075 / 24309381', 'HOSPITAL', 'ravi.ravindra77@gmail.com,drshahsuhas@gmail.com', 'www.ashwiniihospital.com', '400014005', 'N', '8.90008E+1', '19.03635', '72.84273', 'Secondary', 'PI'),
('33955', 'SMT.B.C.J GENERAL HOSPITAL& ASHA PAREKH RESEARCH CENTRE', 'Corner Of S.V. Road,', 'And Tilak Road', 'Santacruz(W )', '400054', '400054', '22', '61486666', 'Mumbai', 'Maharashtra', '26493737 / 26492081', 'HOSPITAL', 'sadanand.shetty1956@gmail.com,bcjtpa@gmail.com', 'bcjhospital.com', '400054003', 'Y', 'NA', '19.08286', '72.83766', 'Secondary', 'PG'),
('34144', 'RADHA KRISHNA HOSPITAL (GOREGAON)', 'K 101-104,', 'Sate Llite Gardens', 'Goregaon (E)', '400063', '400063', '22', '28424522 / 28405661 / 28426065', 'Mumbai', 'Maharashtra', '28426065', 'HOSPITAL', 'rkhospital@mtnl.net.in,rkhospital63@gmail.com', '-', '400063016', 'Y', '8.90008E+1', '19.17280', '72.87392', 'Secondary', 'PG'),
('37029', 'AASTHA HOSPITAL (MUMBAI)', '65,Balasinor Society,S.V. Road, Kandivali(W)', ',S.V. Road,', 'Kandivali(W)', '400067', '400067', '22', '28010700 28010800', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'aasthahospital07@gmail.com', '0', 'NA', 'Y', '8.90008E+1', '19.20772', '72.85022', 'Secondary', 'PGI'),
('37542', 'R. G. STONE UROLOGY CENTRE', 'Valji Ladha Road,', 'C/O Hiramongi', 'Mulund (W)', '400080', '400080', '22', '25675012', 'Mumbai', 'Maharashtra', '25675014 / 25601636', 'HOSPITAL', 'info@rghospital.com,drbinish.cheulkar@rghospital.com', 'www.rghospital.com', '400081011', 'Y', '8.90008E+1', '19.17098', '72.95030', 'Secondary', 'PGI'),
('38251', 'VARDHAMAN HOSPITAL AND ICCU', 'Sheetal Apt., B Wing,', 'J M Road, Opp. Shivsena Shakha Office,', 'Bhandup(W)', '400078', '400078', '22', '25963823 / 25961543', 'Mumbai', 'Maharashtra', '25961543', 'HOSPITAL', 'vardhaman.hospital.mumbai@gmail.com', '-', '400078037', 'Y', '8.90008E+1', '19.15086', '72.93408', 'Secondary', 'PGI'),
('38625', 'MADHU POLYCLINIC & NURSING HOME', '1, Mini Apts, Opp. Sarvodaya Nagar,', 'Jungle Mangal Road,', 'Bhandup (W)', '400078', '400078', '22', '25965290 / 25959802', 'Mumbai', 'Maharashtra', '25965290 / 25959802', 'HOSPITAL', 'sjdalal@rediffmail.com,madhuhospital1@gmail.com', 'www.madhuhospital.com', '400078018', 'Y', '8.90008E+1', '19.14791', '72.93226', 'Secondary', 'GI'),
('41392', 'K.J. SOMAIYA HOSPITAL & RESEARCH CENTRE', 'Somaya Ayurvihar Complex,', 'Opp Eastern Express Highway,', 'Sion (E)', '400022', '400022', '22', '61124800 / 61124815', 'Mumbai', 'Maharashtra', '61124820', 'HOSPITAL', 'nalini.j@somaiya.edu,tpa@somaiya.edu', 'www.somaiya.edu', '400022018', 'Y', '8.90008E+1', '19.04731', '72.87459', 'Teritary', 'GI'),
('41549', 'PLATINUM HOSPITALS', 'Color Scape Shopping Mall,', 'G-103, D.D. Upadhyay Marg, Mulund Checknaka,', 'Mulund (W)', '400080', '400080', '22', '25600190', 'Mumbai', 'Maharashtra', '25600197', 'HOSPITAL', 'info@platinumhospitals.in,dr.tushar@platinumhospitals.in,tpa@platinumhospitals.in', '-', '400088003', 'Y', '8.90008E+1', '19.18282', '72.95427', 'Secondary', 'PGI'),
('44382', 'BADWAIK MATERNITY & GENERAL HOSPITAL', 'L.B.S. Marg,', 'Jain Mandir,', 'Bhandup', '400078', '400078', '22', '25661297', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'badwaikhospital@gmail.com', '-', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'G'),
('45704', 'KOKILABEN DHIRUBAI AMBANI HOSPITAL AND MEDICAL RESEARCH INSTITUTE', 'Four Bungalows', 'Lokhandwala', 'Andheri (W)', '400053', '400053', '22', '30970087 / 30999999 / 30666666', 'Mumbai', 'Maharashtra', '30970015 / 30972030', 'HOSPITAL', 'tpa.kh@relianceada.com,tpa2.kh@relianceada.com,manish.l.makwana@relianceada.com,Viren.R.Shah@relianceada.com', 'www.kokilabenhospital.in', '400053020', 'Y', '8.90008E+1', '19.13122', '72.82477', 'Teritary', 'PGI'),
('48039', 'ROMEEN NURSING HOME(MUMBAI)', 'Gautam Dham', 'Gamdevi Road,', 'Bhandup(W)', '400078', '400078', '22', '2,596,237,645,942,020', 'Mumbai', 'Maharashtra', '25942376', 'HOSPITAL', 'romeenmalwankar@gmail.com,anilmalwankar@yahoo.co.in', '-', '400078007', 'Y', '8.90008E+1', '19.15118', '72.93378', 'Secondary', 'PGI'),
('52342', 'DR. THAKUR\'S ENT CLINIC', '100a, R R Realty, Opp. Deams Mall,', 'L. B. S Marg,', 'Bhandup', '400078', '400078', '22', '2,594,686,925,948,770', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'tpa.thakurenthospital@gmail.com', '-', '400078008', 'Y', '8.90008E+1', '19.23634', '73.12785', 'Secondary', 'GI'),
('52554', 'KOLEKAR HOSPITAL', 'Omprakash Arcade,2nd Floor,', 'Unit No -209,Ambedkar Garden', 'Chembur', '400071', '400071', '22', '2,520,118,025,201,150', 'Mumbai', 'Maharashtra', '25207304', 'HOSPITAL', 'kolekaraditya@gmail.com,kolekarhosp09@yahoo.com', '0', '400065008', 'Y', '8.90008E+1', '19.05530', '72.91044', 'Secondary', 'PGI'),
('56467', 'APEX HOSPITALS (BORIVALI)', 'Vaishali Heights, A-Wing', 'Chandavarkar Road,Near Standard Charted Bank,', 'Borivali(W)', '400092', '400092', '22', '42457027/42457000,', 'Mumbai', 'Maharashtra', '42457018/11', 'HOSPITAL', 'cashless@apexhospitals.in,ha@apexhospitals.in', 'www.apexhospitals.in', '400092004', 'Y', '8.90008E+1', '19.23134', '72.84962', 'Secondary', 'PGI'),
('61119', 'SAI SWAYAM MATERNITY & NURSING HOME', 'Nalanda Society, Kurar Village,,Near Sai Baba Temple', 'Nalanda, Off Western Express Highway', 'Malad (E)', '400097', '400097', '22', '65153823 / 20314612 / 28420858', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'saisparsh27@gmail.com', '-', '400097016', 'N', '8.90008E+1', '19.18802', '72.85935', 'Secondary', 'P'),
('61261', 'SUMANGAL HOSPITAL', 'B-101 / 102, Mitnayan Chs. Ltd., Old Link Road,', 'Ganesh Nagar,', 'Kandivali(W)', '400067', '400067', '22', '28670909 / 28685988', 'Mumbai', 'Maharashtra', '28697258', 'HOSPITAL', 'sumangal_hospital@yahoo.co.in,sumangal@mtnl.net.in,sumangal.hospitals@gmail.com', 'www.sumangalhospital.com', '400067040', 'Y', '8.90008E+1', '19.20189', '72.82787', 'Secondary', 'PGI'),
('63383', 'SULOCHAN EYE HOSPITAL', '7/6, Ground Floor', 'R.R Paint, Off L.B.S Marg', 'Bhandup (West)', '400078', '400078', '22', '25969966', 'Mumbai', 'Maharashtra', '25969966', 'HOSPITAL', 'dr.ajitadsul@gmail.com', '-', '400078035', 'Y', '8.90008E+1', '19.14620', '72.93587', 'Secondary', 'PGI'),
('63572', 'HIRA MONGI NAVNEET HOSPITAL', 'Valji Ladha Road,', 'Opp Achija Hotel,', 'Near Kalidas Natya Mandir,', '400080', '400080', '22', '61595577/61595500/01/25915577', 'Mumbai', 'Maharashtra', '25601636', 'HOSPITAL', 'shreepragatifoundationyahoo.co.in; vishwanath.hmnh@gmail.com', 'www.hmnhospital.com', '400080049', 'Y', '8.90008E+1', '19.1736', '72.94896', 'Teritary', 'PGI'),
('64326', 'SHALYAK HOSPITAL', 'S.K.Apartment, Buildging No. 2, 10 Dalvi Compound,', 'Caves Road,', 'Jogeshwari (E)', '400060', '400060', '22', '28240290 / 28240291', 'Mumbai', 'Maharashtra', '28363495', 'HOSPITAL', 'shalyakhospital@gmail.com,dravinash.15@rediffmail.com', 'www.shalyakhospital.com', 'NA', 'Y', '8.90008E+1', '19.13714', '72.85418', 'Secondary', 'PGI'),
('64517', 'LAXMI HEALTH CARE CENTRE & ICCU', '210 / 3042, Near Sangli Sahakari Bank,', 'Tagor Nagar No. 1,', 'Vikhroli (E)', '400083', '400083', '22', '25748831 / 25748841', 'Mumbai', 'Maharashtra', '25748851/25748831', 'HOSPITAL', 'drbdpawar@gmail.com, dravinashpawar@gmail.com', 'www.laxmihealthcarecentre.com', '400083004', 'Y', '8.90008E+1', '19.11342', '72.93152', 'Secondary', 'PGI'),
('65406', 'SAARTHI HOSPITAL', 'Vakratunda Palace,', 'Tank Road,', 'Bhandup', '400078', '400078', '22', '25949123 / 65257885 / 65257870', 'Mumbai', 'Maharashtra', '25944131', 'HOSPITAL', 'tpa.saarthihospital@gmail.com,saarthihospital@rediffmail.com', '-', '400018006', 'Y', '8.90008E+1', '19.14676', '72.93480', 'Secondary', 'PGI'),
('66561', 'SURANA SETHIA HOSPITAL & RESEARCH CENTRE', 'Suman Nagar, Opp. Corporate Park,', 'Sion Trombay Road,', 'Chembur', '400071', '400071', '22', '33783378 / 33783322', 'Mumbai', 'Maharashtra', '25288808', 'HOSPITAL', 'suranasethiahospital@gmail.com,cashless@suranasethiahospital.in,dhiraj@suranahospital.in,cashless@suranasethiahospital.in,prince@suranahospital.in', 'www.suranahospital.org', '400071042', 'Y', '8.90008E+1', '19.05362', '72.88701', 'Secondary', 'PGI'),
('67075', 'SAARTHI HEALTH CARE', 'Jamuna Sadan, 1st Floor,', 'M G Road,', 'Mulund(W)', '400080', '400080', '22', '65257870 / 65257885', 'Mumbai', 'Maharashtra', '25681947', 'HOSPITAL', 'tpa.saarthihospital@gmail.com,singhsonal_19@indiatimes.com,minmina19@yahoo.co.in', '-', '400080042', 'Y', '8.90008E+1', '19.17659', '72.95163', 'Secondary', 'PGI');
INSERT INTO `hospital_list` (`Provider Number`, `Provider Name`, `Address 1`, `Address 2`, `Address Area`, `Pin Code`, `PIN_CODE2`, `STD Code`, `Telephone Number`, `CITY`, `STATE`, `Fax Number`, `TYPE`, `E-Mail Address`, `Web Site`, `IRDA_UNIQUE_ID`, `GIPSA_NETWORK`, `ROHINI_REGISTRY_CODE`, `LATITUDE`, `LONGITUDE`, `LEVEL_OF_CARE`, `PHM_RATING`) VALUES
('69656', 'KHANDWALA\'S EYE HOSPITAL & HEM POLYCLINIC', 'D-31, Shree Mangal Chs Ltd,', 'First Floor Above Richfeel Clinic S.V.Road,', 'Vileparle(W)', '400056', '400056', '22', '26246672', 'Mumbai', 'Maharashtra', '26713609', 'HOSPITAL', 'drmkhandwala@gmail.com', '0', 'NA', 'Y', 'NA', 'NA', 'NA', 'Secondary', 'G'),
('71414', 'APEX KIDNEY CARE PVT LTD', 'Gaurav Plaza, Annex,', 'R.R.T. Road,', 'Mulund', '400080', '400080', '22', '25678101/ 25678102', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', '-', '-', 'NA', 'Y', '8.90008E+1', '19.17371', '72.95374', 'Secondary', 'G'),
('72820', 'SHUSHRUSHA\'S SUMAN RAMESH TULSIANI', 'Plot No.356/ A/2 , 356/A/5,', 'Lt. Almaram Surve Marg', 'Kannamwar Nagar-1 Vikhroli', '400083', '400083', '22', '25786100', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'tpa@shushrushahospital.org', '-', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'GI'),
('73006', 'SURANA HOSPITAL & RESEARCH CENTER', 'Tank Road, Next To Skywalk Tower,', 'Near Orlem Church,', 'Malad (W)', '400064', '400064', '22', '28022121 /22', 'Mumbai', 'Maharashtra', '28050500 /28022124', 'HOSPITAL', 'suranahospitals@gmail.com,cashless@suranahospital.in', 'www.suranahospital.org', '400064052', 'Y', 'NA', 'NA', 'NA', 'Secondary', 'G'),
('74397', 'LIFELINE MEDICARE HOSPITAL PVT. LTD.', 'A-1, Gagan Chambers,', 'Nr. Gokuldham Medical Centre, Gokuldham,', 'Goregaon (E)', '400063', '400063', '22', '28758100,4021,1810,11,12', 'Mumbai', 'Maharashtra', '28402507', 'HOSPITAL', 'lifelinemedicarehospital@gmail.com,lifeline.gokuldham@gmail.com', 'www.lifelinemedicare.com', '400063007', 'Y', '8.90008E+1', '19.17232', '72.86844', 'Secondary', 'G'),
('75377', 'WOCKHARDT HOSPITAL (MUMBAI)', '1877,Dr.Anandrao Nair Road,', 'Mumbai Central', 'Mumbai Central', '400011', '400011', '22', '61784444 / 61784266 / 61784265', 'Mumbai', 'Maharashtra', '61784242', 'HOSPITAL', 'tpa@wockhardthospitals.com,ajit.mandhare@wockhardthospitals.com,ujwala.canve@wockhardthospital.com', 'www.wockhardthospitals.com', '47655', 'Y', '8.90008E+1', '18.97524', '72.82382', 'Teritary', 'PGI'),
('77739', 'APOLLO SPECTRA HOSPITALS TARDEO (APOLLO SPECIALITY HOSPITALS PRIVATE LTD)', '156, Pt. M. M. Malviya Road,', 'NA', 'Tardeo', '400034', '400034', '22', '43324500 / 550 / 519', 'Mumbai', 'Maharashtra', '43324555', 'HOSPITAL', 'tpa.tardeo@apollospectra.com,tpa.novatardeo@gmail.com,kushesh.sharma@novamedicalcenters.com', 'www.apollospectra.com', '400034004', 'Y', '8.90008E+1', '18.97074', '72.81496', 'Secondary', 'PGI'),
('92152', 'CRITI CARE MULTISPECIALTIY HOSPITAL AND RESEARCH CENTER', 'Plot No 516,Near Sbi Sme Branch,', 'Telli Galli,', 'Andheri(E)', '400069', '400069', '22', '30103020 / 26844000', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'criticarehospitalandheri@gmail.com', 'www.criticarehospital.in', 'NA', 'Y', '8.90008E+1', '19.11819', '72.85048', 'Secondary', 'G'),
('93919', 'SEVEN STAR MULTISPECIALITY HOSPITAL', 'Surbhi House, Behind Dimple Arcade,', 'Behind Sai Dham, Thakur Complex,', 'Kandivali', '400101', '400101', '22', '28543131 / 28543232', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'tpacellsevenstarmshospital@gmail.com, claimssevenstarhospital@gmail.com', 'www.sevenstarhospital.com', 'NA', 'Y', '8.90008E+1', '19.21198', '72.86699', 'Secondary', 'PG'),
('94689', 'EYEHEAL COMPLETE VISION CARE', 'Sangeeta Solitaire, Near Sarvodaya Nagar, Jain Temple, V K Road,', 'Mulund, Mumbai', 'Mulund, Mumbai', '400080', '400080', '22', '25918171', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'ashish.dogra@zenhospital.in', '-', 'NA', 'N', 'NA', '19.16231', '72.94591', 'Secondary', 'I'),
('95075', 'WORLD GASTROENTROLOGY INSTITUTE', 'Amboli Naka Signal,', 'Next Icici Prudential Main S.V. Raod,', 'NA', '400058', '400058', '22', '61099888', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'vishalgaikwad@endoscopyasia.com,nimishab@endoscopyasia.com, umesh.sharma@endoscopyasia.com', '-', 'NA', 'Y', '8.90008E+1', '19.12718', '72.84734', 'Secondary', 'G'),
('95584', 'SHREE GANESHA HOSPITAL', 'Bina Apt, Tps Iii,', 'Vajira Naka, L. T. Road,', 'Borivali West,', '400092', '400092', '22', '28989800', 'Mumbai', 'Maharashtra', '28989801', 'HOSPITAL', 'claimsshriganeshahospital@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.22839', '72.84614', 'Secondary', 'G'),
('95855', 'DR. BHATIA MULTISPECILAITY HOSPITAL', 'Shraddha Bhandup,', 'Village Road Bhandup (West)', 'Village Road Bhandup (West)', '400078', '400078', '22', '25665545', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'drbhatiahosp@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.15559', '72.94341', 'Secondary', 'G'),
('96321', 'AXON HOSPITAL', '5 Th Floor, \'A\' Wing, Pranik Chamber,', 'Sakinaka Junction,', 'Andheri ( East )', '400072', '400072', '22', '284,733,553,344', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'dr.maheshanand@axonhospital.co.in', 'www.axonhospital.co.in', 'NA', 'Y', '8.90008E+1', '19.10524', '72.88711', 'Secondary', 'G'),
('96561', 'ANIDEEP EYE HOSPITAL', 'Plot No 414, Next To Golden Tobacco,', 'Opp St Joseph School,', 'S. V Road,', '400056', '400056', '22', '26251111 / 26251177', 'Mumbai', 'Maharashtra', '26251177', 'HOSPITAL', 'info@anideepeyehospital.com', 'www.anideepeyehospital.com', 'NA', 'Y', '8.90008E+1', '19.10135', '72.83949', 'Secondary', 'G'),
('97369', 'ZEN MULTISPECIALITY HOSPITAL', 'Plot No. 425 & 437, 10th Road', 'Chembur', 'Chembur', '400071', '400071', '22', '25260066 / 25260077 / 25265732', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'tpazenhospital@gmail.com', 'www.zenhospital.in', '20', 'Y', '8.90008E+1', '19.05584', '72.89699', 'Teritary', 'GI'),
('97583', 'SRV HOSPITAL', '179/180, Kamala Charan Building,', 'Rd. No. 2 ,Jawahar Nagar,', 'NA', '400062', '400062', '22', '28732255 / 66 / 77 / 88', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'cashless@srvhospital.com,corporate@srvhospital.com', 'www.srvhospital.com', '484', 'Y', '8.90008E+1', '19.15919', '72.84936', 'Secondary', 'G'),
('97961', 'CLOUDNINE KIDS CLINIC INDIA PVT LTD', 'Siddhachal Blding', 'Link Rd', 'Malad West', '400064', '400064', '22', '44671139', 'Mumbai', 'Maharashtra', '44671123', 'HOSPITAL', 'insurancemum@cloudninecare.com', '-', '400004005', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'GI'),
('99263', 'BHAVSAR NURSING HOME & ICU', 'Shop No 27 To 31, Ground Floor, Skicity Retail,', 'Lake Road, Bhandup West, Mumbai', 'Opp. Bhandup Police Station', '400078', '400078', '22', '25949444/25949445', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', '0', '0', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'G'),
('99522', 'VARDANN MULTISPECIALITY HOSPITAL', 'Arch Gold Apartment,', 'Poisar,', 'Kandivali (W)', '400067', '400067', '22', '28072793', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'vardannmultispecialityhospital@gmail.com', 'www.vardannhospital.com', 'NA', 'Y', '8.90008E+1', '19.21159', '72.85186', 'Secondary', 'PG'),
('106964', 'THEJI HOSPITAL', 'B-103, 1st Floor, Aniraj Tower Chs Ltd,', 'Lbs Marg,', 'Bhandup (W)', '400078', '400078', '22', '2,594,092,825,948,720', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'thejispandanhospital@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.17605', '72.96167', 'Secondary', 'G'),
('127680', 'ANANDA HOSPITAL.', 'Krimson Park, Next To Corporation Bank,', 'Amboli Signal, S.V.Road,', 'Andheri (W)', '400058', '400058', '22', '26779911 / 26779922 / 26779933', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', '24x7ananda@gmail.com,ananadahospitalandheri@gmai.com', 'ananadahospital.in', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'PG'),
('130737', 'SUN HOSPITAL', 'Excel House, Opp Sndt College,', 'Near Libetry Garden', 'Malad (W)', '400064', '400064', '22', '28824156', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'sunhospital2017@gmail.com,sunhospital17@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.19021', '72.84180', 'Secondary', 'G'),
('134407', 'PRAGATI MULTISPECIALITY HOSPITAL', 'Sai Vaibhav Bldg, R.T. Road,', 'Dahisar East, Mumbai', '0', '400068', '400068', '22', '0', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'pragatihospitaltpa@gmail.com', '-', 'NA', 'Y', '8.90008E+1', '19.25909', '72.83382', 'Secondary', 'G'),
('141206', 'VIVANTA MULTI SPECIALITY HOSPITAL', 'Jp Residency,Chincholi Bunder Road,', 'Malad (West)', 'NA', '400064', '400064', '22', '28742038', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'vivantahospitaltpa@gmail.com, vivantahospitaltpa@gmail.com', '0', 'NA', 'Y', '8.90008E+1', '19.17925', '72.83895', 'Secondary', 'GI'),
('146144', 'HCG APEX CANCER CENTRE', 'Holy Cross Road, Ic Colony, Off Borivali - Dashisar Link Road,', 'Borivali (W)', '0', '400092', '400092', '22', '33669999', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'info@hcgapex.com,ha@apexhospitals.in,tpa@hcgapex.com', 'www.hcgapex.com', 'NA', 'Y', '8.90008E+1', '19.23062', '72.85169', 'Secondary', 'GI'),
('149390', 'MANISHA UNIVERSAL MULTISPECIALITY HOSPITAL.', '2nd Floor, Manisha Heights, Vaishali Nagar,', 'Lbs Road,', 'Mulund (W)', '400080', '400080', '22', '21647575 / 21647676 / 21647373', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'info@universalhospital.org', 'www.universalhospital.org', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'GI'),
('151748', 'SPARSH CHILDREN\'S HOSPITAL', 'Krish Royale Bulding, 1st, 2nd, 3rd Floor, Acharya Donde Marg, Next To Dutt', 'Next To Dutta Mandir, Opp. Wadia Children\'S Hospital,', 'Parel (E)', '400012', '400012', '22', '24151201', 'Mumbai', 'Maharashtra', '-', 'HOSPITAL', 'tpasparshchildrenhospital@gmail.com,info@sparshchildrenshospital.com', 'www.sparshchildrenshospital.com', 'NA', 'Y', '8.90008E+1', '19.00072', '72.84580', 'Secondary', 'G'),
('164766', 'PADMANI NURSING HOME & ICCU.', '109, 110, 1st Floor, R. R. Reality,', 'Tank Road, Off. L.B.S. Marg,', 'Bhandup (W)', '400078', '400078', '0', '25955643', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'padmaninursinghome@gmail.com', '0', 'NA', 'Y', 'NA', '19.15703', '72.93274', 'Teritary', 'G'),
('166155', 'ASHOK-ONE HOSPITAL', 'Sadguru Heights - 1, Shiv Vallabh Rd,', 'Ashok Van, Dahisar East,', 'Above Tjsb Bank ,', '400068', '400068', '22', '2848 0101/ 0102', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'ashokonehospital@gmail.com', '0', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'G'),
('167302', 'CUDDLES N CURE CHILDRENS HOSPITAL', '1st Floor, Jalaram Ashish Chsl,', 'Opp. Raj Hoapital, Off Devidayal Road,', 'Mulund (W)', '400080', '400080', '22', '25602560/2562', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'tpa@cuddlesncure.com,info@cuddlesncure.com', '0', 'NA', 'Y', '8.90008E+1', '19.17255', '72.94253', 'Secondary', 'G'),
('168049', 'APEX MULTISPECIALITY HOSPITALS', 'Off Western Express Highway, Next To Su Swagat Restaurant,', 'Dattapada Road,', 'Borivali (E)', '400066', '400066', '22', '28703377', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'cashless_amh@apexhospitals.in', '0', 'NA', 'Y', '8.90008E+1', 'NA', 'NA', 'Secondary', 'GI'),
('170476', 'SHREE GANESH NURSING HOME', 'Ff 001,Ship India, Vishwa Ganga Building ,', 'Bhagwati Hospital Lane,', 'Borivali West,', '400103', '400103', '0', '0', 'Mumbai', 'Maharashtra', '0', 'HOSPITAL', 'shreeganeshhospital@gmail.com', '0', 'NA', 'Y', 'NA', 'NA', 'NA', 'Secondary', 'G'),
('Note: As Provider Network is subject constant updation, we request you to refer to our website www.paramounttpa.com for the updated network list in your state/city.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `new_assurance`
--

CREATE TABLE `new_assurance` (
  `n_id` int(10) NOT NULL,
  `n_name` varchar(255) NOT NULL,
  `n_bank_name` varchar(255) NOT NULL,
  `n_account_no` varchar(255) NOT NULL,
  `n_ifsc` varchar(255) NOT NULL,
  `n_acc_type` varchar(255) NOT NULL,
  `n_bank_address` varchar(255) NOT NULL,
  `n_mobile` varchar(15) NOT NULL,
  `n_email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_assurance`
--

INSERT INTO `new_assurance` (`n_id`, `n_name`, `n_bank_name`, `n_account_no`, `n_ifsc`, `n_acc_type`, `n_bank_address`, `n_mobile`, `n_email`) VALUES
(1, 'Nishant Jinde', 'HDFC', '6236965', 'HDFC1000073', 'savings', 'kalina', '7021554258', 'nishant.jinde@here.com');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(255) NOT NULL,
  `e_name` varchar(255) NOT NULL,
  `e_id` varchar(255) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ido_location` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `e_name`, `e_id`, `emp_id`, `username`, `ido_location`, `password`) VALUES
(1, 'Nishant Jinde', 'nishant.jinde@here.com', 40460, 'jinde', 'IDO 5', '2c8b8a10d0423186d99cfb04526ccfed'),
(2, 'Smita Bendale', 'smita.bendale@here.com', 40474, 'bendale', 'IDO 5', 'de60c6dd0634fb42e2a707f1539201f9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD UNIQUE KEY `nish` (`p_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependents`
--
ALTER TABLE `dependents`
  ADD PRIMARY KEY (`de_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD UNIQUE KEY `nish` (`d_id`);

--
-- Indexes for table `file_upload`
--
ALTER TABLE `file_upload`
  ADD UNIQUE KEY `nish` (`f_id`);

--
-- Indexes for table `form_details`
--
ALTER TABLE `form_details`
  ADD UNIQUE KEY `nish` (`f_id`);

--
-- Indexes for table `new_assurance`
--
ALTER TABLE `new_assurance`
  ADD UNIQUE KEY `nish` (`n_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dependents`
--
ALTER TABLE `dependents`
  MODIFY `de_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `file_upload`
--
ALTER TABLE `file_upload`
  MODIFY `f_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `form_details`
--
ALTER TABLE `form_details`
  MODIFY `f_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
