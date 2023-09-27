-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 08:21 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

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
(25, 'Can add doctor', 7, 'add_doctor'),
(26, 'Can change doctor', 7, 'change_doctor'),
(27, 'Can delete doctor', 7, 'delete_doctor'),
(28, 'Can view doctor', 7, 'view_doctor'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add drug', 9, 'add_drug'),
(34, 'Can change drug', 9, 'change_drug'),
(35, 'Can delete drug', 9, 'delete_drug'),
(36, 'Can view drug', 9, 'view_drug'),
(37, 'Can add drug_req', 10, 'add_drug_req'),
(38, 'Can change drug_req', 10, 'change_drug_req'),
(39, 'Can delete drug_req', 10, 'delete_drug_req'),
(40, 'Can view drug_req', 10, 'view_drug_req'),
(41, 'Can add consult', 11, 'add_consult'),
(42, 'Can change consult', 11, 'change_consult'),
(43, 'Can delete consult', 11, 'delete_consult'),
(44, 'Can view consult', 11, 'view_consult'),
(45, 'Can add payment', 12, 'add_payment'),
(46, 'Can change payment', 12, 'change_payment'),
(47, 'Can delete payment', 12, 'delete_payment'),
(48, 'Can view payment', 12, 'view_payment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'pharmacy', 'consult'),
(7, 'pharmacy', 'doctor'),
(9, 'pharmacy', 'drug'),
(10, 'pharmacy', 'drug_req'),
(12, 'pharmacy', 'payment'),
(8, 'pharmacy', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-29 20:15:01.265126'),
(2, 'auth', '0001_initial', '2023-04-29 20:15:03.536449'),
(3, 'admin', '0001_initial', '2023-04-29 20:15:04.149215'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-29 20:15:04.180996'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-29 20:15:04.215022'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-29 20:15:04.434428'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-29 20:15:04.562091'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-29 20:15:04.685201'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-29 20:15:04.710588'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-29 20:15:04.833024'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-29 20:15:04.847497'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-29 20:15:04.867963'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-29 20:15:05.021452'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-29 20:15:05.166796'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-29 20:15:05.292242'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-29 20:15:05.325068'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-29 20:15:05.441642'),
(18, 'sessions', '0001_initial', '2023-04-29 20:15:05.688601'),
(19, 'pharmacy', '0001_initial', '2023-04-29 20:24:02.659027');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0s8ps1tvy5445ace0rmxdjydpu1z8ulq', 'e30:1ptggw:kF73We7-MLygMDNqc63yJIajFmyoFaD7XcFpDsj5sX0', '2023-05-16 03:28:38.469150'),
('2fs6hkv49zxsy30xt8c9nolkovbc128t', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXQgIjAZpVoAy3IRew:1pzaDK:1-DymdA2SMCFIzw_PZdhdMKK9sBtlRYp2zuE0mIQhag', '2023-06-01 09:46:26.362105'),
('47u648tx0wlor3dzef2cf33uoz7011gg', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXQgIjAZpVoAy3IRew:1pus5X:q6E5zdAVfaiK7X8UVDdtli3QEFzP2gFjKwCwDftyr38', '2023-05-19 09:50:55.039773'),
('82bjxr6fcyiiytjd6zpnkknp4doai9xa', 'e30:1punQD:dkZsdMWv7INLJcBG2waBo6wqPDWcDT1bQ_Xf071fNfM', '2023-05-19 04:51:57.098516'),
('9okivqjiuaz90b4c1ft3szuxxuvgnggp', '.eJwdyjEKgDAMheGrSGZxcOzkrItXCDbYiE0hTSfx7qZO_-PjPdAwRqVaIcBKyjJsRYSHHS2hYLbEZggjNI4QZq8j-fkiVulOGfnusJx9TUfJnSup45_3AwJUIjc:1q0Eea:MWVw6xkd_Nvl2oH77AOXDcqXtDL6LimgxnS6K4fU_Eo', '2023-06-03 04:57:16.074063'),
('e41hpdjnl6dfbnh7bf6ewf7aa2b7pjyo', '.eJyrVkrJTFGyMtRRKslLzE1VslJyLM4oz8xTcM1JyS9OVQKKp-YmZuYAJRKLSvMc0kEcveT8XKBMSn5ySX4RUAbKqAUAzIUZnQ:1q0H0p:DYA8dPZbr1eMo2hsy7cO2rO7F6VePhG4dDMpyx_xvv4', '2023-06-03 07:28:23.562023'),
('jh8xf2j3watj8eyxw39h4muxg9hpook1', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXQgIjAZpVoAy3IRew:1pzZqi:2X4WO-SXgH7oWB535j3t_trVTjBRQkcCk9ZmytSnZDQ', '2023-06-01 09:23:04.532670'),
('oxj8et5qc7vrrpg7yky4z68uy8mk2dhd', '.eJyrVkrJTFGyMtRRKslLzE1VslJyLM4oz8xTcM1JyS9OVQKKp-YmZuYAJRKLSvMc0kEcveT8XKBMSn5ySX4RUAbKqAUAzIUZnQ:1q0yae:cGIykz9Buoe6qZtg6AepgFoUHkBIpfHZByJpgMw4nBs', '2023-06-05 06:00:16.400554'),
('rb2951r4cld2dcf1agjovi29y43ih65k', 'e30:1pt00P:M3War4L-WBlZmMdRP6G11WJoVtzsvutbSIC82Ip8LQg', '2023-05-14 05:53:53.703272'),
('v3gq7cu7m7a6xwoada1ja38jmedwzk61', 'e30:1q0xP2:EctVvotA0THAubC76U7F5W-YZTS7E5jfQVMr3YivSk0', '2023-06-05 04:44:12.319535'),
('yfsbg2618lquoxmjy8e69jaqbaetrwm4', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXQgIjAZpVoAy3IRew:1psrDH:uWaJnBL18f2IODMg9_3jKxhKn3ZX5gos9z7HMIf-hWw', '2023-05-13 20:30:35.022298');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_consult`
--

CREATE TABLE IF NOT EXISTS `pharmacy_consult` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `did` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `des` varchar(150) NOT NULL,
  `file` varchar(200) NOT NULL,
  `medicine` varchar(100) NOT NULL,
  `status` varchar(150) NOT NULL,
  `prescription` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pharmacy_consult`
--

INSERT INTO `pharmacy_consult` (`id`, `did`, `uid`, `date`, `des`, `file`, `medicine`, `status`, `prescription`) VALUES
(1, '1', '1', '2023-05-06', 'Fever\r\n', '0915-learning-laravel_MedEfrc.pdf', 'aspirin', 'consult', 'wmd\r\n'),
(4, '1', '2', '2023-05-20', 'fever', 'efficient_workforce (3).sql', 'paracetamol,aspirin', 'consult', 'hgxhwg,hgfwxyt'),
(5, '1', '1', '2023-05-21', 'alergy\r\n', 'efficient_workforce (3)_vP6N9iq.sql', 'paracetamol,edoxaban,dabigatran', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_doctor`
--

CREATE TABLE IF NOT EXISTS `pharmacy_doctor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `age` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `specialization` varchar(150) NOT NULL,
  `experience` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pharmacy_doctor`
--

INSERT INTO `pharmacy_doctor` (`id`, `name`, `email`, `phone`, `address`, `age`, `password`, `specialization`, `experience`) VALUES
(1, 'Ashwin Eldose', 'arun@gmail.com', '7689776622', 'Chelammattamkunnel.(H) ) Panickankudy P.O Panickankudy,idukki ', '78', '789', '9898', '8');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_drug`
--

CREATE TABLE IF NOT EXISTS `pharmacy_drug` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `genericname` varchar(150) NOT NULL,
  `dosage` varchar(150) NOT NULL,
  `form` varchar(150) NOT NULL,
  `manufature` varchar(150) NOT NULL,
  `expdate` varchar(150) NOT NULL,
  `price` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `qty` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pharmacy_drug`
--

INSERT INTO `pharmacy_drug` (`id`, `name`, `genericname`, `dosage`, `form`, `manufature`, `expdate`, `price`, `image`, `qty`) VALUES
(1, 'Paracetamol', 'jijkjd', 'iji', 'ij', 'hjji', '2023-05-20', '200', 'hero_1.jpg', '50'),
(3, 'Aspirin', 'Salicylates', '2', 'tablet', 'Drug centre', '2023-05-28', '100', 'download (1).jpeg', '30'),
(4, 'Acephen', 'Salicylates', '4', 'tablet', 'Drug centre', '2023-05-05', '300', 'images.jpeg', '50');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_drug_interaction`
--

CREATE TABLE IF NOT EXISTS `pharmacy_drug_interaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `medicine` varchar(100) NOT NULL,
  `nonmedicine` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pharmacy_drug_interaction`
--

INSERT INTO `pharmacy_drug_interaction` (`id`, `medicine`, `nonmedicine`) VALUES
(1, 'paracetamol', 'warfarin'),
(2, 'aspirin', 'clopidogrel'),
(3, 'paracetamol', 'edoxaban'),
(4, 'edoxaban', 'aspirin');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_drug_req`
--

CREATE TABLE IF NOT EXISTS `pharmacy_drug_req` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `genericname` varchar(150) NOT NULL,
  `dosage` varchar(150) NOT NULL,
  `form` varchar(150) NOT NULL,
  `manufature` varchar(150) NOT NULL,
  `did` varchar(150) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pharmacy_drug_req`
--

INSERT INTO `pharmacy_drug_req` (`id`, `name`, `genericname`, `dosage`, `form`, `manufature`, `did`, `status`) VALUES
(1, 'hj', 'hjgh', 'gfgh', 'gh', 'fgc', '1', 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment`
--

CREATE TABLE IF NOT EXISTS `pharmacy_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(150) NOT NULL,
  `pid` varchar(150) NOT NULL,
  `price` varchar(150) NOT NULL,
  `qty` varchar(150) NOT NULL,
  `cardname` varchar(150) NOT NULL,
  `cardnumber` varchar(150) NOT NULL,
  `cvv` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pharmacy_payment`
--

INSERT INTO `pharmacy_payment` (`id`, `uid`, `pid`, `price`, `qty`, `cardname`, `cardnumber`, `cvv`) VALUES
(1, '1', '1', '400', '2', 'uyeuwa', '3', '878');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_user`
--

CREATE TABLE IF NOT EXISTS `pharmacy_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `age` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pharmacy_user`
--

INSERT INTO `pharmacy_user` (`id`, `name`, `email`, `phone`, `address`, `password`, `age`) VALUES
(1, 'arun', 'arun@gmail.com', '7689776622', 'Panamukkath house, P.O alapad,Thrissur', '567', '78'),
(2, 'jeirn', 'j@gmail.com', '9865986589', 'Jerin Konni Pathanamthitta', '1234', '25');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
