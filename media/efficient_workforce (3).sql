-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 07:25 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `efficient_workforce`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

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
(25, 'Can add booking', 7, 'add_booking'),
(26, 'Can change booking', 7, 'change_booking'),
(27, 'Can delete booking', 7, 'delete_booking'),
(28, 'Can view booking', 7, 'view_booking'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add payment', 9, 'add_payment'),
(34, 'Can change payment', 9, 'change_payment'),
(35, 'Can delete payment', 9, 'delete_payment'),
(36, 'Can view payment', 9, 'view_payment'),
(37, 'Can add reportss', 10, 'add_reportss'),
(38, 'Can change reportss', 10, 'change_reportss'),
(39, 'Can delete reportss', 10, 'delete_reportss'),
(40, 'Can view reportss', 10, 'view_reportss'),
(41, 'Can add subcategory', 11, 'add_subcategory'),
(42, 'Can change subcategory', 11, 'change_subcategory'),
(43, 'Can delete subcategory', 11, 'delete_subcategory'),
(44, 'Can view subcategory', 11, 'view_subcategory'),
(45, 'Can add user_feedback', 12, 'add_user_feedback'),
(46, 'Can change user_feedback', 12, 'change_user_feedback'),
(47, 'Can delete user_feedback', 12, 'delete_user_feedback'),
(48, 'Can view user_feedback', 12, 'view_user_feedback'),
(49, 'Can add userregg', 13, 'add_userregg'),
(50, 'Can change userregg', 13, 'change_userregg'),
(51, 'Can delete userregg', 13, 'delete_userregg'),
(52, 'Can view userregg', 13, 'view_userregg'),
(53, 'Can add wrkr_feedback', 14, 'add_wrkr_feedback'),
(54, 'Can change wrkr_feedback', 14, 'change_wrkr_feedback'),
(55, 'Can delete wrkr_feedback', 14, 'delete_wrkr_feedback'),
(56, 'Can view wrkr_feedback', 14, 'view_wrkr_feedback'),
(57, 'Can add wrkregg', 15, 'add_wrkregg'),
(58, 'Can change wrkregg', 15, 'change_wrkregg'),
(59, 'Can delete wrkregg', 15, 'delete_wrkregg'),
(60, 'Can view wrkregg', 15, 'view_wrkregg');

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
-- Table structure for table `city360_booking`
--

CREATE TABLE IF NOT EXISTS `city360_booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(150) NOT NULL,
  `wid` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `typee` varchar(150) NOT NULL,
  `issue` varchar(150) NOT NULL,
  `no_wrkr` varchar(150) NOT NULL,
  `rate` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `city360_booking`
--

INSERT INTO `city360_booking` (`id`, `uname`, `wid`, `date`, `place`, `phone`, `typee`, `issue`, `no_wrkr`, `rate`, `status`) VALUES
(1, 'user1', '0', '2023-04-20', 'aluva', '9632587410', 'electrical', 'wiring', '2', '150', 'confirmed'),
(2, 'user1', '0', '2023-04-26', 'aluva', '9632587410', 'electrical', 'wiring', '2', '1500', 'confirmed'),
(3, 'user2', '0', '2023-04-28', 'aluva', '9632587410', 'Skilled Work', 'housework', '2', '150', 'confirmed'),
(4, 'user22', '0', '2023-04-26', 'aluva', '9496636003', 'construction', '', '2', '150', 'confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `city360_category`
--

CREATE TABLE IF NOT EXISTS `city360_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `city360_category`
--

INSERT INTO `city360_category` (`id`, `name`) VALUES
(1, 'plumber'),
(2, 'Skilled Work'),
(3, 'electrical'),
(4, 'construction');

-- --------------------------------------------------------

--
-- Table structure for table `city360_payment`
--

CREATE TABLE IF NOT EXISTS `city360_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` varchar(150) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `typee` varchar(150) NOT NULL,
  `wid` varchar(150) NOT NULL,
  `amount` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `c_num` varchar(150) NOT NULL,
  `e_date` varchar(150) NOT NULL,
  `cvv` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `city360_payment`
--

INSERT INTO `city360_payment` (`id`, `rid`, `uname`, `typee`, `wid`, `amount`, `date`, `c_num`, `e_date`, `cvv`) VALUES
(1, '2', 'user2', 'Skilled Work', '10', '150', '2023-04-27', '78948569856945', '2023-04-28', '123'),
(2, '4', 'user22', 'construction', '11', '150', '2023-04-27', '78948569856945', '2023-04-27', '988');

-- --------------------------------------------------------

--
-- Table structure for table `city360_reportss`
--

CREATE TABLE IF NOT EXISTS `city360_reportss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bid` varchar(150) NOT NULL,
  `wid` varchar(150) NOT NULL,
  `issue` varchar(150) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `typee` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `amount` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `city360_reportss`
--

INSERT INTO `city360_reportss` (`id`, `bid`, `wid`, `issue`, `uname`, `typee`, `status`, `date`, `amount`) VALUES
(1, '1', '5', 'wiring', 'user1', 'electrical', 'Completed', '2023-04-21', '150'),
(2, '3', '10', 'housework', 'user2', 'Skilled Work', 'Completed', '2023-04-27', '150'),
(3, '3', '10', 'housework', 'user2', 'Skilled Work', 'Completed', '2023-04-27', '150'),
(4, '4', '11', '', 'user22', 'construction', 'Completed', '2023-04-27', '150');

-- --------------------------------------------------------

--
-- Table structure for table `city360_subcategory`
--

CREATE TABLE IF NOT EXISTS `city360_subcategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(150) NOT NULL,
  `sub_name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `city360_subcategory`
--

INSERT INTO `city360_subcategory` (`id`, `cname`, `sub_name`) VALUES
(1, 'plumber', 'plumber'),
(2, 'Skilled Work', 'Carpenter'),
(3, 'electrical', 'wiring');

-- --------------------------------------------------------

--
-- Table structure for table `city360_userregg`
--

CREATE TABLE IF NOT EXISTS `city360_userregg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `city360_userregg`
--

INSERT INTO `city360_userregg` (`id`, `name`, `email`, `place`, `phone`, `password`, `status`) VALUES
(5, 'user2', 'user2@gmail.com', 'CACHAR', '9632587412', 'User2@123', 'approved'),
(6, 'user3', 'user3@gmail.com', 'ANANTAPUR', '9632587410', 'User3@123', 'approved'),
(7, 'user22', 'user22@gmail.com', 'GOLAGHAT', '9496636003', 'User22@123', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `city360_user_feedback`
--

CREATE TABLE IF NOT EXISTS `city360_user_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `city360_wrkregg`
--

CREATE TABLE IF NOT EXISTS `city360_wrkregg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `centre` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `district` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `labour_category` varchar(150) NOT NULL,
  `labour_type` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `city360_wrkregg`
--

INSERT INTO `city360_wrkregg` (`id`, `name`, `email`, `centre`, `phone`, `password`, `category`, `status`, `district`, `gender`, `labour_category`, `labour_type`, `state`) VALUES
(3, 'worker3', 'worker3@gmail.com', '', '9632587410', 'Worker3@1230', 'Skilled Work', 'approved', '', '', '', '', ''),
(4, 'worker4', 'worker4@gmail.com', '', '9632587410', 'Worker4@123', 'Skilled Work', 'approved', '', '', '', '', ''),
(8, 'worker1', 'worker1@gmail.com', '', '9632587410', 'Worker1@123', 'electrical', 'approved', '', '', '', '', ''),
(9, 'worker2', 'worker2@gmail.com', '', '9632587410', 'Worker2@123', 'electrical', 'approved', '', '', '', '', ''),
(10, 'worker5', 'worker5@gmail.com', '', '9632587410', 'Worker5@123', 'Skilled Work', 'approved', '', '', '', '', ''),
(11, 'worker22', 'worker22@gmail.com', '', '9632587410', 'Worker22@123', 'construction', 'approved', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `city360_wrkr_feedback`
--

CREATE TABLE IF NOT EXISTS `city360_wrkr_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'city360', 'booking'),
(8, 'city360', 'category'),
(9, 'city360', 'payment'),
(10, 'city360', 'reportss'),
(11, 'city360', 'subcategory'),
(13, 'city360', 'userregg'),
(12, 'city360', 'user_feedback'),
(15, 'city360', 'wrkregg'),
(14, 'city360', 'wrkr_feedback'),
(5, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-18 12:09:54.368913'),
(2, 'auth', '0001_initial', '2023-04-18 12:09:55.245055'),
(3, 'admin', '0001_initial', '2023-04-18 12:09:55.420491'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-18 12:09:55.433484'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-18 12:09:55.448485'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-18 12:09:55.567536'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-18 12:09:55.629424'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-18 12:09:55.691074'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-18 12:09:55.703065'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-18 12:09:55.765583'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-18 12:09:55.770576'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-18 12:09:55.782579'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-18 12:09:55.842591'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-18 12:09:55.903070'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-18 12:09:55.968037'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-18 12:09:55.979999'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-18 12:09:56.044261'),
(18, 'city360', '0001_initial', '2023-04-18 12:09:56.465489'),
(19, 'city360', '0002_auto_20230418_1616', '2023-04-18 12:09:56.864365'),
(20, 'sessions', '0001_initial', '2023-04-18 12:09:56.939962');

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
('33d219act46e4dz6f7ugsinau2u9u7u3', '.eJyrVirNTFGyMtdRKs1LzE1VslIqLU4tMjJSAgqk5iZm5sBFHNJBXL3k_FygXHJpMVACRNYCALO1FOA:1pryWB:2Ff4Z67IfuHh-rgFaC8pVeS3IFy1rrku7tVX8c3y0M8', '2023-05-11 10:06:27.184925'),
('c8cqxhdlwfcy81hj9pvb6t1vh9dgtmvp', '.eJyrVirPTFGyMtJRKs9LzE1VslIqzy_KTi0yckjPTczM0UvOz1UCyqWCODgkkxNLUtPziyqB0gU5pblJqUVKtQD9SB2p:1pokZ6:eNSjbp7rr1jUYyX_kDtDRwPz5QXWEwugQdTEJk-fq9c', '2023-05-02 12:36:08.737756'),
('y90dak2rdqly6rf1jbaw2wksfhw6fipb', 'e30:1pzt3z:G8kwnkj1rDGAaHJ9fw0IetFEXLkzwpZwpgyhouiiapc', '2023-06-02 05:54:03.175351');

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
