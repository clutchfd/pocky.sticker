-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2015 at 06:57 PM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mypockyi_pockysticker`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE IF NOT EXISTS `tbl_applicants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `career_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `marital_status` tinyint(1) NOT NULL,
  `id_number` varchar(128) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `address` varchar(512) NOT NULL,
  `birth_date` int(11) NOT NULL,
  `birth_place` char(32) NOT NULL,
  `education_grade` varchar(128) NOT NULL,
  `education_name` varchar(128) NOT NULL,
  `education_major` varchar(128) NOT NULL,
  `education_from` varchar(11) NOT NULL,
  `education_to` varchar(11) NOT NULL,
  `employment_name` varchar(11) NOT NULL,
  `employment_position` varchar(11) NOT NULL,
  `employment_from` varchar(11) NOT NULL,
  `employment_to` varchar(11) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `cv_file` varchar(256) NOT NULL,
  `is_located` tinyint(1) NOT NULL,
  `is_related` tinyint(1) NOT NULL,
  `messages` text,
  `available_date` int(11) NOT NULL,
  `expected_salary` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_applicants`
--

INSERT INTO `tbl_applicants` (`id`, `career_id`, `user_id`, `name`, `email`, `gender`, `marital_status`, `id_number`, `phone`, `address`, `birth_date`, `birth_place`, `education_grade`, `education_name`, `education_major`, `education_from`, `education_to`, `employment_name`, `employment_position`, `employment_from`, `employment_to`, `photo`, `cv_file`, `is_located`, `is_related`, `messages`, `available_date`, `expected_salary`, `status`, `added`, `modified`) VALUES
(1, 6, 44, 'Dyarfi 20 Defrian Yarfi', 'dyarfi20@gmail.com', 1, 1, 'ASDAD12312312313', '647474747', '45745747', 4567457, '', '1', '', '', '', '', '', '', '', '', '20131013_142521a.jpg', 'AdMob Ad Specs.pdf', 0, 0, '457457457', 0, 0, 1, 0, 1425271008),
(2, 6, 45, 'Defrian Yarfi', 'defrian.yarfi@gmail.com', 1, 1, 'ASDAD12312312313', '647474747', '45745747', 4567457, '', '1', '', '', '', '', '', '', '', '', '3b394-1513781_10205610488526266_3600135193534162242_n.jpg', '976bd-export-2015-02-13_14_37_25.xls', 0, 0, '<p>\r\n	457457457</p>\r\n', 0, 0, 1, 0, 1425271011);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_captcha`
--

CREATE TABLE IF NOT EXISTS `tbl_captcha` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `word` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=338 ;

--
-- Dumping data for table `tbl_captcha`
--

INSERT INTO `tbl_captcha` (`id`, `time`, `ip_address`, `word`) VALUES
(337, 1425465106, '::1', 'NzmRf'),
(336, 1425465103, '::1', 'ecqkC');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_careers`
--

CREATE TABLE IF NOT EXISTS `tbl_careers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `division_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `sent_to` varchar(32) DEFAULT NULL,
  `ref_no` varchar(12) DEFAULT NULL,
  `start_date` date DEFAULT '0000-00-00',
  `end_date` date DEFAULT '0000-00-00',
  `report_to` tinytext,
  `job_purpose` text,
  `responsibilities` text,
  `requirements` text,
  `location` varchar(128) DEFAULT NULL,
  `company` varchar(128) DEFAULT NULL,
  `ext_link1` varchar(324) DEFAULT NULL,
  `ext_link2` varchar(324) DEFAULT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) unsigned DEFAULT NULL,
  `modified` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`ref_no`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_careers`
--

INSERT INTO `tbl_careers` (`id`, `division_id`, `name`, `subject`, `sent_to`, `ref_no`, `start_date`, `end_date`, `report_to`, `job_purpose`, `responsibilities`, `requirements`, `location`, `company`, `ext_link1`, `ext_link2`, `allow_comment`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(6, 12, 'backend-web-developer', 'Backend Web Developer', 'defrian.yarfi@gmail.com', 'wp002', '2013-07-23', '2013-07-23', 'Project Manager', '<p>\r\n	Senior Backend Web Developer</p>\r\n', '<p>\r\n	Senior Backend Web Developer</p>\r\n', '<p>\r\n	Senior Backend Web Developer</p>\r\n', 'Indonesia', 'Default', 'jobstreet.com', 'jobsdb.com', 0, 0, 0, 1, 1374560244, 1374561582),
(5, 12, 'frontend-web-developer', 'Frontend Web Developer', 'defrian.yarfi@gmail.com', 'wd001df', '2013-07-23', '2013-07-23', 'Project Manager', '<p>\r\n	Frontend Web Developer</p>\r\n', '<p>\r\n	Frontend Web Developer</p>\r\n', '<p>\r\n	Frontend Web Developer</p>\r\n', 'Jakarta', 'Default', 'jobstreet.com', 'jobstreet.com', 0, 0, 0, 1, 1374517350, 1374561700),
(4, 17, 'art-director', 'Art Director', 'defrian.yarfi@gmail.com', 'wd001df', '2013-07-23', '2013-07-23', 'Project Manager', '<p>\r\n	Art Director</p>\r\n', '<p>\r\n	Art Director</p>\r\n', '<p>\r\n	Art Director</p>\r\n', 'Jakarta', 'Default', 'jobstreet.com', 'jobstreet.com', 0, 0, 0, 1, 1374517303, 1374561707),
(7, 17, 'creative-director', 'Creative Director', 'defrian.yarfi@gmail.com', NULL, NULL, NULL, 'Project manager', '<p>\r\n	Creative Director</p>\r\n', '<p>\r\n	Creative Director</p>\r\n', '<p>\r\n	Creative Director</p>\r\n', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL),
(8, 17, 'social-media-executive', 'Social Media Executive', 'defrian.yarfi@gmail.com', NULL, NULL, NULL, 'Project Manager', '<p>\r\n	Social Media Executive</p>\r\n', '<p>\r\n	Social Media Executive</p>\r\n', '<p>\r\n	Social Media Executive</p>\r\n', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL),
(9, 17, 'digital-media-implementer', 'Digital Media Implementer', 'defrian.yarfi@gmail.com', NULL, NULL, NULL, 'Project Manager', '<p>\r\n	Digital Media Implementer</p>\r\n', '<p>\r\n	Digital Media Implementer</p>\r\n', '<p>\r\n	Digital Media Implementer</p>\r\n', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL),
(10, 17, 'copywriter', 'Copywriter', 'defrian.yarfi@gmail.com', NULL, NULL, NULL, 'Project Manager', '<p>\r\n	Copywriter</p>\r\n', '<p>\r\n	Copywriter</p>\r\n', '<p>\r\n	Copywriter</p>\r\n', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `tbl_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ci_sessions`
--

INSERT INTO `tbl_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('0044ae5739dcf03055aa34a03ee6d93a', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1425468880, ''),
('133a34d9da0630c2f6b0e4ca2d7a0d61', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425464810, 'a:6:{s:9:"user_data";s:0:"";s:8:"curr_url";s:24:"admin/authenticate/login";s:11:"module_list";s:530:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"}}";s:20:"module_function_list";s:4215:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees","career{{slash}}/index{{slash}}/add":"Add Career","career{{slash}}/index{{slash}}/view":"View Career","career{{slash}}/index{{slash}}/edit":"Edit Career","career{{slash}}/index{{slash}}/delete":"Delete Career","career{{slash}}/index{{slash}}/change":"Change Career Status","career{{slash}}/index{{slash}}/export":"Export Career","career{{slash}}/index{{slash}}/print":"Print Career","division{{slash}}/index{{slash}}/add":"Add Division","division{{slash}}/index{{slash}}/view":"View Division","division{{slash}}/index{{slash}}/edit":"Edit Division","division{{slash}}/index{{slash}}/delete":"Delete Division","division{{slash}}/index{{slash}}/change":"Change Division Status","division{{slash}}/index{{slash}}/export":"Export Division","division{{slash}}/index{{slash}}/print":"Print Division","applicant{{slash}}/index{{slash}}/add":"Add Applicant","applicant{{slash}}/index{{slash}}/view":"View Applicant","applicant{{slash}}/index{{slash}}/edit":"Edit Applicant","applicant{{slash}}/index{{slash}}/delete":"Delete Applicant","applicant{{slash}}/index{{slash}}/change":"Change Applicant","applicant{{slash}}/index{{slash}}/export":"Export Applicant","applicant{{slash}}/index{{slash}}/print":"Print Applicant","employee{{slash}}/index{{slash}}/add":"Add Employee","employee{{slash}}/index{{slash}}/view":"View Employee","employee{{slash}}/index{{slash}}/edit":"Edit Employee","employee{{slash}}/index{{slash}}/delete":"Delete Employee","employee{{slash}}/set":"Set to Employee","employee{{slash}}/index{{slash}}/change":"Change Employee","employee{{slash}}/index{{slash}}/export":"Export Employee","employee{{slash}}/index{{slash}}/print":"Print Employee"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"}}";s:12:"user_session";O:8:"stdClass":9:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"password";s:8:"********";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1425377399";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}s:8:"prev_url";s:23:"admin-panel/user/view/1";}'),
('6af8e8e65d1473f39c63d2ea9cfab384', '69.171.231.193', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1425468581, ''),
('9b5cc648cf4342a591e6f6b527aa85f5', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1425464275, 'a:6:{s:9:"user_data";s:0:"";s:8:"curr_url";s:11:"admin-panel";s:8:"prev_url";s:22:"admin-panel/user/index";s:11:"module_list";s:530:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"}}";s:20:"module_function_list";s:4215:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees","career{{slash}}/index{{slash}}/add":"Add Career","career{{slash}}/index{{slash}}/view":"View Career","career{{slash}}/index{{slash}}/edit":"Edit Career","career{{slash}}/index{{slash}}/delete":"Delete Career","career{{slash}}/index{{slash}}/change":"Change Career Status","career{{slash}}/index{{slash}}/export":"Export Career","career{{slash}}/index{{slash}}/print":"Print Career","division{{slash}}/index{{slash}}/add":"Add Division","division{{slash}}/index{{slash}}/view":"View Division","division{{slash}}/index{{slash}}/edit":"Edit Division","division{{slash}}/index{{slash}}/delete":"Delete Division","division{{slash}}/index{{slash}}/change":"Change Division Status","division{{slash}}/index{{slash}}/export":"Export Division","division{{slash}}/index{{slash}}/print":"Print Division","applicant{{slash}}/index{{slash}}/add":"Add Applicant","applicant{{slash}}/index{{slash}}/view":"View Applicant","applicant{{slash}}/index{{slash}}/edit":"Edit Applicant","applicant{{slash}}/index{{slash}}/delete":"Delete Applicant","applicant{{slash}}/index{{slash}}/change":"Change Applicant","applicant{{slash}}/index{{slash}}/export":"Export Applicant","applicant{{slash}}/index{{slash}}/print":"Print Applicant","employee{{slash}}/index{{slash}}/add":"Add Employee","employee{{slash}}/index{{slash}}/view":"View Employee","employee{{slash}}/index{{slash}}/edit":"Edit Employee","employee{{slash}}/index{{slash}}/delete":"Delete Employee","employee{{slash}}/set":"Set to Employee","employee{{slash}}/index{{slash}}/change":"Change Employee","employee{{slash}}/index{{slash}}/export":"Export Employee","employee{{slash}}/index{{slash}}/print":"Print Employee"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"}}";s:12:"user_session";O:8:"stdClass":9:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"password";s:8:"********";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1425377399";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}}'),
('d9c8dd2ab1132023e6b599a112e136d0', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1425469434, ''),
('e6cead4f9fbd3d06baad83f7a757b996', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425467772, ''),
('eab6675bcc7c68903f053cb0eeca1302', '139.0.26.20', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1425470029, ''),
('fe6c598c126d9654932c72e439902bf0', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1425466026, 'a:6:{s:9:"user_data";s:0:"";s:8:"curr_url";s:11:"admin-panel";s:8:"prev_url";s:22:"admin-panel/user/index";s:11:"module_list";s:530:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"}}";s:20:"module_function_list";s:4215:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees","career{{slash}}/index{{slash}}/add":"Add Career","career{{slash}}/index{{slash}}/view":"View Career","career{{slash}}/index{{slash}}/edit":"Edit Career","career{{slash}}/index{{slash}}/delete":"Delete Career","career{{slash}}/index{{slash}}/change":"Change Career Status","career{{slash}}/index{{slash}}/export":"Export Career","career{{slash}}/index{{slash}}/print":"Print Career","division{{slash}}/index{{slash}}/add":"Add Division","division{{slash}}/index{{slash}}/view":"View Division","division{{slash}}/index{{slash}}/edit":"Edit Division","division{{slash}}/index{{slash}}/delete":"Delete Division","division{{slash}}/index{{slash}}/change":"Change Division Status","division{{slash}}/index{{slash}}/export":"Export Division","division{{slash}}/index{{slash}}/print":"Print Division","applicant{{slash}}/index{{slash}}/add":"Add Applicant","applicant{{slash}}/index{{slash}}/view":"View Applicant","applicant{{slash}}/index{{slash}}/edit":"Edit Applicant","applicant{{slash}}/index{{slash}}/delete":"Delete Applicant","applicant{{slash}}/index{{slash}}/change":"Change Applicant","applicant{{slash}}/index{{slash}}/export":"Export Applicant","applicant{{slash}}/index{{slash}}/print":"Print Applicant","employee{{slash}}/index{{slash}}/add":"Add Employee","employee{{slash}}/index{{slash}}/view":"View Employee","employee{{slash}}/index{{slash}}/edit":"Edit Employee","employee{{slash}}/index{{slash}}/delete":"Delete Employee","employee{{slash}}/set":"Set to Employee","employee{{slash}}/index{{slash}}/change":"Change Employee","employee{{slash}}/index{{slash}}/export":"Export Employee","employee{{slash}}/index{{slash}}/print":"Print Employee"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"}}";s:12:"user_session";O:8:"stdClass":9:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"password";s:8:"********";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1425377399";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configurations`
--

CREATE TABLE IF NOT EXISTS `tbl_configurations` (
  `parameter` varchar(150) NOT NULL DEFAULT '',
  `value` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`parameter`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configurations`
--

INSERT INTO `tbl_configurations` (`parameter`, `value`) VALUES
('environment', '0'),
('install', '0'),
('maintenance', '0'),
('theme', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_divisions`
--

CREATE TABLE IF NOT EXISTS `tbl_divisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_divisions`
--

INSERT INTO `tbl_divisions` (`id`, `name`, `subject`, `description`, `is_system`, `status`, `added`, `modified`) VALUES
(12, 'developer', 'Developer', '<p>\r\n	Web Developer Division</p>\r\n', 1, 1, 1364610224, 1364610224),
(13, 'director', 'Director', '<p>\r\n	Director</p>\r\n', 1, 1, 1364610224, 1368369595),
(14, 'account', 'Account', '<p>\r\n	Account</p>\r\n', 1, 1, 0, 0),
(15, 'manager', 'Manager', '<p>\r\n	Manager</p>\r\n', 1, 1, 0, 0),
(16, 'strategist', 'Strategist', '<p>\r\n	Strategist</p>\r\n', 1, 1, 0, 0),
(17, 'creative', 'Creative', '<p>\r\n	Creative</p>\r\n', 1, 1, 0, 0),
(18, 'finance', 'Finance', '<p>\r\n	Finance</p>\r\n', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_division_files`
--

CREATE TABLE IF NOT EXISTS `tbl_division_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `division_id` int(11) unsigned DEFAULT NULL,
  `field_name` varchar(96) DEFAULT NULL,
  `file_name` varchar(64) DEFAULT NULL,
  `file_type` varchar(16) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `article_id` (`division_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_division_files`
--

INSERT INTO `tbl_division_files` (`id`, `division_id`, `field_name`, `file_name`, `file_type`, `caption`) VALUES
(1, 13, 'image_1', 'd0020c5505cc68f55446c109c352930d.jpg', 'image/jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fb_temp`
--

CREATE TABLE IF NOT EXISTS `tbl_fb_temp` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fb_id` bigint(20) NOT NULL,
  `fb_name` varchar(255) NOT NULL,
  `fb_email` varchar(255) NOT NULL,
  `fb_pic` varchar(255) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fb_temp`
--

INSERT INTO `tbl_fb_temp` (`id`, `user_id`, `fb_id`, `fb_name`, `fb_email`, `fb_pic`, `added`, `modified`) VALUES
(0, 0, 1551021518510158, 'Nairfed Ifray', 'dyarfi20@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p50x50/10258601_1527531144192529_2406647537038847347_n.jpg?oh=cb9ce688eec208209eef18bbf83b25a9&oe=557CBDD4&__gda__=1434756174_277c07cf54358f7d070710f544b2415f', 1425470030, 1425470030);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_group_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value` smallint(1) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=757 ;

--
-- Dumping data for table `tbl_group_permissions`
--

INSERT INTO `tbl_group_permissions` (`id`, `permission_id`, `group_id`, `value`, `added`, `modified`) VALUES
(1, 1, 1, 1, 1425357274, 0),
(2, 2, 1, 1, 1425357274, 0),
(3, 3, 1, 1, 1425357274, 0),
(4, 4, 1, 1, 1425357274, 0),
(5, 5, 1, 1, 1425357274, 0),
(6, 6, 1, 1, 1425357274, 0),
(7, 36, 1, 1, 1425357274, 0),
(8, 37, 1, 1, 1425357274, 0),
(9, 38, 1, 1, 1425357274, 0),
(10, 39, 1, 1, 1425357274, 0),
(11, 69, 1, 1, 1425357274, 0),
(12, 70, 1, 1, 1425357274, 0),
(13, 7, 1, 1, 1425357274, 0),
(14, 8, 1, 1, 1425357274, 0),
(15, 9, 1, 1, 1425357274, 0),
(16, 10, 1, 1, 1425357274, 0),
(17, 11, 1, 1, 1425357274, 0),
(18, 12, 1, 1, 1425357274, 0),
(19, 13, 1, 1, 1425357274, 0),
(20, 14, 1, 1, 1425357274, 0),
(21, 15, 1, 1, 1425357274, 0),
(22, 16, 1, 1, 1425357274, 0),
(23, 17, 1, 1, 1425357274, 0),
(24, 18, 1, 1, 1425357274, 0),
(25, 19, 1, 1, 1425357274, 0),
(26, 20, 1, 1, 1425357274, 0),
(27, 21, 1, 1, 1425357274, 0),
(28, 22, 1, 1, 1425357274, 0),
(29, 23, 1, 1, 1425357274, 0),
(30, 24, 1, 1, 1425357274, 0),
(31, 25, 1, 1, 1425357274, 0),
(32, 26, 1, 1, 1425357274, 0),
(33, 27, 1, 1, 1425357274, 0),
(34, 28, 1, 1, 1425357274, 0),
(35, 29, 1, 1, 1425357274, 0),
(36, 30, 1, 1, 1425357274, 0),
(37, 31, 1, 1, 1425357274, 0),
(38, 32, 1, 1, 1425357274, 0),
(39, 33, 1, 1, 1425357274, 0),
(40, 34, 1, 1, 1425357274, 0),
(41, 35, 1, 1, 1425357274, 0),
(42, 40, 1, 1, 1425357274, 0),
(43, 41, 1, 1, 1425357274, 0),
(44, 42, 1, 1, 1425357274, 0),
(45, 43, 1, 1, 1425357274, 0),
(46, 44, 1, 1, 1425357274, 0),
(47, 45, 1, 1, 1425357274, 0),
(48, 46, 1, 1, 1425357274, 0),
(49, 47, 1, 1, 1425357274, 0),
(50, 48, 1, 1, 1425357274, 0),
(51, 49, 1, 1, 1425357274, 0),
(52, 50, 1, 1, 1425357274, 0),
(53, 51, 1, 1, 1425357274, 0),
(54, 52, 1, 1, 1425357274, 0),
(55, 53, 1, 1, 1425357274, 0),
(56, 54, 1, 1, 1425357274, 0),
(57, 55, 1, 1, 1425357274, 0),
(58, 56, 1, 1, 1425357274, 0),
(59, 57, 1, 1, 1425357274, 0),
(60, 58, 1, 1, 1425357274, 0),
(61, 59, 1, 1, 1425357274, 0),
(62, 60, 1, 1, 1425357274, 0),
(63, 61, 1, 1, 1425357274, 0),
(64, 62, 1, 1, 1425357274, 0),
(65, 63, 1, 1, 1425357274, 0),
(66, 64, 1, 1, 1425357274, 0),
(67, 65, 1, 1, 1425357274, 0),
(68, 66, 1, 1, 1425357274, 0),
(69, 67, 1, 1, 1425357274, 0),
(70, 68, 1, 1, 1425357274, 0),
(71, 71, 1, 1, 1425357274, 0),
(72, 72, 1, 1, 1425357274, 0),
(73, 73, 1, 1, 1425357274, 0),
(74, 74, 1, 1, 1425357274, 0),
(75, 75, 1, 1, 1425357274, 0),
(76, 76, 1, 1, 1425357274, 0),
(77, 77, 1, 1, 1425357274, 0),
(78, 78, 1, 1, 1425357274, 0),
(79, 79, 1, 1, 1425357274, 0),
(80, 80, 1, 1, 1425357274, 0),
(81, 81, 1, 1, 1425357274, 0),
(82, 82, 1, 1, 1425357274, 0),
(83, 83, 1, 1, 1425357274, 0),
(84, 84, 1, 1, 1425357274, 0),
(85, 1, 2, 1, 1425357274, 0),
(86, 2, 2, 1, 1425357274, 0),
(87, 3, 2, 1, 1425357274, 0),
(88, 4, 2, 1, 1425357274, 0),
(89, 5, 2, 1, 1425357274, 0),
(90, 6, 2, 1, 1425357274, 0),
(91, 36, 2, 1, 1425357274, 0),
(92, 37, 2, 1, 1425357274, 0),
(93, 38, 2, 1, 1425357274, 0),
(94, 39, 2, 1, 1425357274, 0),
(95, 69, 2, 1, 1425357274, 0),
(96, 70, 2, 1, 1425357274, 0),
(97, 7, 2, 1, 1425357274, 0),
(98, 8, 2, 1, 1425357274, 0),
(99, 9, 2, 1, 1425357274, 0),
(100, 10, 2, 1, 1425357274, 0),
(101, 11, 2, 1, 1425357274, 0),
(102, 12, 2, 1, 1425357274, 0),
(103, 13, 2, 1, 1425357274, 0),
(104, 14, 2, 1, 1425357274, 0),
(105, 15, 2, 1, 1425357274, 0),
(106, 16, 2, 1, 1425357274, 0),
(107, 17, 2, 1, 1425357274, 0),
(108, 18, 2, 1, 1425357274, 0),
(109, 19, 2, 1, 1425357274, 0),
(110, 20, 2, 1, 1425357274, 0),
(111, 21, 2, 1, 1425357274, 0),
(112, 22, 2, 1, 1425357274, 0),
(113, 23, 2, 1, 1425357274, 0),
(114, 24, 2, 1, 1425357274, 0),
(115, 25, 2, 1, 1425357274, 0),
(116, 26, 2, 1, 1425357274, 0),
(117, 27, 2, 1, 1425357274, 0),
(118, 28, 2, 1, 1425357274, 0),
(119, 29, 2, 1, 1425357274, 0),
(120, 30, 2, 1, 1425357274, 0),
(121, 31, 2, 1, 1425357274, 0),
(122, 32, 2, 1, 1425357274, 0),
(123, 33, 2, 1, 1425357274, 0),
(124, 34, 2, 1, 1425357274, 0),
(125, 35, 2, 1, 1425357274, 0),
(126, 40, 2, 1, 1425357274, 0),
(127, 41, 2, 1, 1425357274, 0),
(128, 42, 2, 1, 1425357274, 0),
(129, 43, 2, 1, 1425357274, 0),
(130, 44, 2, 1, 1425357274, 0),
(131, 45, 2, 1, 1425357274, 0),
(132, 46, 2, 1, 1425357274, 0),
(133, 47, 2, 1, 1425357274, 0),
(134, 48, 2, 1, 1425357274, 0),
(135, 49, 2, 1, 1425357274, 0),
(136, 50, 2, 1, 1425357274, 0),
(137, 51, 2, 1, 1425357274, 0),
(138, 52, 2, 1, 1425357274, 0),
(139, 53, 2, 1, 1425357274, 0),
(140, 54, 2, 1, 1425357274, 0),
(141, 55, 2, 1, 1425357274, 0),
(142, 56, 2, 1, 1425357274, 0),
(143, 57, 2, 1, 1425357274, 0),
(144, 58, 2, 1, 1425357274, 0),
(145, 59, 2, 1, 1425357274, 0),
(146, 60, 2, 1, 1425357274, 0),
(147, 61, 2, 1, 1425357274, 0),
(148, 62, 2, 1, 1425357274, 0),
(149, 63, 2, 1, 1425357274, 0),
(150, 64, 2, 1, 1425357274, 0),
(151, 65, 2, 1, 1425357274, 0),
(152, 66, 2, 1, 1425357274, 0),
(153, 67, 2, 1, 1425357274, 0),
(154, 68, 2, 1, 1425357274, 0),
(155, 71, 2, 1, 1425357274, 0),
(156, 72, 2, 1, 1425357274, 0),
(157, 73, 2, 1, 1425357274, 0),
(158, 74, 2, 1, 1425357274, 0),
(159, 75, 2, 1, 1425357274, 0),
(160, 76, 2, 1, 1425357274, 0),
(161, 77, 2, 1, 1425357274, 0),
(162, 78, 2, 1, 1425357274, 0),
(163, 79, 2, 1, 1425357274, 0),
(164, 80, 2, 1, 1425357274, 0),
(165, 81, 2, 1, 1425357274, 0),
(166, 82, 2, 1, 1425357274, 0),
(167, 83, 2, 1, 1425357274, 0),
(168, 84, 2, 1, 1425357274, 0),
(169, 1, 99, 0, 1425357274, 0),
(170, 2, 99, 0, 1425357274, 0),
(171, 3, 99, 0, 1425357274, 0),
(172, 4, 99, 0, 1425357274, 0),
(173, 5, 99, 0, 1425357274, 0),
(174, 6, 99, 0, 1425357274, 0),
(175, 36, 99, 0, 1425357274, 0),
(176, 37, 99, 0, 1425357274, 0),
(177, 38, 99, 0, 1425357274, 0),
(178, 39, 99, 0, 1425357274, 0),
(179, 69, 99, 0, 1425357274, 0),
(180, 70, 99, 0, 1425357274, 0),
(181, 7, 99, 0, 1425357274, 0),
(182, 8, 99, 0, 1425357274, 0),
(183, 9, 99, 0, 1425357274, 0),
(184, 10, 99, 0, 1425357274, 0),
(185, 11, 99, 0, 1425357274, 0),
(186, 12, 99, 0, 1425357274, 0),
(187, 13, 99, 0, 1425357274, 0),
(188, 14, 99, 0, 1425357274, 0),
(189, 15, 99, 0, 1425357274, 0),
(190, 16, 99, 0, 1425357274, 0),
(191, 17, 99, 0, 1425357274, 0),
(192, 18, 99, 0, 1425357274, 0),
(193, 19, 99, 0, 1425357274, 0),
(194, 20, 99, 0, 1425357274, 0),
(195, 21, 99, 0, 1425357274, 0),
(196, 22, 99, 0, 1425357274, 0),
(197, 23, 99, 0, 1425357274, 0),
(198, 24, 99, 0, 1425357274, 0),
(199, 25, 99, 0, 1425357274, 0),
(200, 26, 99, 0, 1425357274, 0),
(201, 27, 99, 0, 1425357274, 0),
(202, 28, 99, 0, 1425357274, 0),
(203, 29, 99, 0, 1425357274, 0),
(204, 30, 99, 0, 1425357274, 0),
(205, 31, 99, 0, 1425357274, 0),
(206, 32, 99, 0, 1425357274, 0),
(207, 33, 99, 0, 1425357274, 0),
(208, 34, 99, 0, 1425357274, 0),
(209, 35, 99, 0, 1425357274, 0),
(210, 40, 99, 0, 1425357274, 0),
(211, 41, 99, 0, 1425357274, 0),
(212, 42, 99, 0, 1425357274, 0),
(213, 43, 99, 0, 1425357274, 0),
(214, 44, 99, 0, 1425357274, 0),
(215, 45, 99, 0, 1425357274, 0),
(216, 46, 99, 0, 1425357274, 0),
(217, 47, 99, 0, 1425357274, 0),
(218, 48, 99, 0, 1425357274, 0),
(219, 49, 99, 0, 1425357274, 0),
(220, 50, 99, 0, 1425357274, 0),
(221, 51, 99, 0, 1425357274, 0),
(222, 52, 99, 0, 1425357274, 0),
(223, 53, 99, 0, 1425357274, 0),
(224, 54, 99, 0, 1425357274, 0),
(225, 55, 99, 0, 1425357274, 0),
(226, 56, 99, 0, 1425357274, 0),
(227, 57, 99, 0, 1425357274, 0),
(228, 58, 99, 0, 1425357274, 0),
(229, 59, 99, 0, 1425357274, 0),
(230, 60, 99, 0, 1425357274, 0),
(231, 61, 99, 0, 1425357274, 0),
(232, 62, 99, 0, 1425357274, 0),
(233, 63, 99, 0, 1425357274, 0),
(234, 64, 99, 0, 1425357274, 0),
(235, 65, 99, 0, 1425357274, 0),
(236, 66, 99, 0, 1425357274, 0),
(237, 67, 99, 0, 1425357274, 0),
(238, 68, 99, 0, 1425357274, 0),
(239, 71, 99, 0, 1425357274, 0),
(240, 72, 99, 0, 1425357274, 0),
(241, 73, 99, 0, 1425357274, 0),
(242, 74, 99, 0, 1425357274, 0),
(243, 75, 99, 0, 1425357274, 0),
(244, 76, 99, 0, 1425357274, 0),
(245, 77, 99, 0, 1425357274, 0),
(246, 78, 99, 0, 1425357274, 0),
(247, 79, 99, 0, 1425357274, 0),
(248, 80, 99, 0, 1425357274, 0),
(249, 81, 99, 0, 1425357274, 0),
(250, 82, 99, 0, 1425357274, 0),
(251, 83, 99, 0, 1425357274, 0),
(252, 84, 99, 0, 1425357274, 0),
(253, 1, 111, 0, 1425357274, 0),
(254, 2, 111, 0, 1425357274, 0),
(255, 3, 111, 0, 1425357274, 0),
(256, 4, 111, 0, 1425357274, 0),
(257, 5, 111, 0, 1425357274, 0),
(258, 6, 111, 0, 1425357274, 0),
(259, 36, 111, 0, 1425357274, 0),
(260, 37, 111, 0, 1425357274, 0),
(261, 38, 111, 0, 1425357274, 0),
(262, 39, 111, 0, 1425357274, 0),
(263, 69, 111, 0, 1425357274, 0),
(264, 70, 111, 0, 1425357274, 0),
(265, 7, 111, 0, 1425357274, 0),
(266, 8, 111, 0, 1425357274, 0),
(267, 9, 111, 0, 1425357274, 0),
(268, 10, 111, 0, 1425357274, 0),
(269, 11, 111, 0, 1425357274, 0),
(270, 12, 111, 0, 1425357274, 0),
(271, 13, 111, 0, 1425357274, 0),
(272, 14, 111, 0, 1425357274, 0),
(273, 15, 111, 0, 1425357274, 0),
(274, 16, 111, 0, 1425357274, 0),
(275, 17, 111, 0, 1425357274, 0),
(276, 18, 111, 0, 1425357274, 0),
(277, 19, 111, 0, 1425357274, 0),
(278, 20, 111, 0, 1425357274, 0),
(279, 21, 111, 0, 1425357274, 0),
(280, 22, 111, 0, 1425357274, 0),
(281, 23, 111, 0, 1425357274, 0),
(282, 24, 111, 0, 1425357274, 0),
(283, 25, 111, 0, 1425357274, 0),
(284, 26, 111, 0, 1425357274, 0),
(285, 27, 111, 0, 1425357274, 0),
(286, 28, 111, 0, 1425357274, 0),
(287, 29, 111, 0, 1425357274, 0),
(288, 30, 111, 0, 1425357274, 0),
(289, 31, 111, 0, 1425357274, 0),
(290, 32, 111, 0, 1425357274, 0),
(291, 33, 111, 0, 1425357274, 0),
(292, 34, 111, 0, 1425357274, 0),
(293, 35, 111, 0, 1425357274, 0),
(294, 40, 111, 0, 1425357274, 0),
(295, 41, 111, 0, 1425357274, 0),
(296, 42, 111, 0, 1425357274, 0),
(297, 43, 111, 0, 1425357274, 0),
(298, 44, 111, 0, 1425357274, 0),
(299, 45, 111, 0, 1425357274, 0),
(300, 46, 111, 0, 1425357274, 0),
(301, 47, 111, 0, 1425357274, 0),
(302, 48, 111, 0, 1425357274, 0),
(303, 49, 111, 0, 1425357274, 0),
(304, 50, 111, 0, 1425357274, 0),
(305, 51, 111, 0, 1425357274, 0),
(306, 52, 111, 0, 1425357274, 0),
(307, 53, 111, 0, 1425357274, 0),
(308, 54, 111, 0, 1425357274, 0),
(309, 55, 111, 0, 1425357274, 0),
(310, 56, 111, 0, 1425357274, 0),
(311, 57, 111, 0, 1425357274, 0),
(312, 58, 111, 0, 1425357274, 0),
(313, 59, 111, 0, 1425357274, 0),
(314, 60, 111, 0, 1425357274, 0),
(315, 61, 111, 0, 1425357274, 0),
(316, 62, 111, 0, 1425357274, 0),
(317, 63, 111, 0, 1425357274, 0),
(318, 64, 111, 0, 1425357274, 0),
(319, 65, 111, 0, 1425357274, 0),
(320, 66, 111, 0, 1425357274, 0),
(321, 67, 111, 0, 1425357274, 0),
(322, 68, 111, 0, 1425357274, 0),
(323, 71, 111, 0, 1425357274, 0),
(324, 72, 111, 0, 1425357274, 0),
(325, 73, 111, 0, 1425357274, 0),
(326, 74, 111, 0, 1425357274, 0),
(327, 75, 111, 0, 1425357274, 0),
(328, 76, 111, 0, 1425357274, 0),
(329, 77, 111, 0, 1425357274, 0),
(330, 78, 111, 0, 1425357274, 0),
(331, 79, 111, 0, 1425357274, 0),
(332, 80, 111, 0, 1425357274, 0),
(333, 81, 111, 0, 1425357274, 0),
(334, 82, 111, 0, 1425357274, 0),
(335, 83, 111, 0, 1425357274, 0),
(336, 84, 111, 0, 1425357274, 0),
(337, 1, 112, 0, 1425357274, 0),
(338, 2, 112, 0, 1425357274, 0),
(339, 3, 112, 0, 1425357274, 0),
(340, 4, 112, 0, 1425357274, 0),
(341, 5, 112, 0, 1425357274, 0),
(342, 6, 112, 0, 1425357274, 0),
(343, 36, 112, 0, 1425357274, 0),
(344, 37, 112, 0, 1425357274, 0),
(345, 38, 112, 0, 1425357274, 0),
(346, 39, 112, 0, 1425357274, 0),
(347, 69, 112, 0, 1425357274, 0),
(348, 70, 112, 0, 1425357274, 0),
(349, 7, 112, 0, 1425357274, 0),
(350, 8, 112, 0, 1425357274, 0),
(351, 9, 112, 0, 1425357274, 0),
(352, 10, 112, 0, 1425357274, 0),
(353, 11, 112, 0, 1425357274, 0),
(354, 12, 112, 0, 1425357274, 0),
(355, 13, 112, 0, 1425357274, 0),
(356, 14, 112, 0, 1425357274, 0),
(357, 15, 112, 0, 1425357274, 0),
(358, 16, 112, 0, 1425357274, 0),
(359, 17, 112, 0, 1425357274, 0),
(360, 18, 112, 0, 1425357274, 0),
(361, 19, 112, 0, 1425357274, 0),
(362, 20, 112, 0, 1425357274, 0),
(363, 21, 112, 0, 1425357274, 0),
(364, 22, 112, 0, 1425357274, 0),
(365, 23, 112, 0, 1425357274, 0),
(366, 24, 112, 0, 1425357274, 0),
(367, 25, 112, 0, 1425357274, 0),
(368, 26, 112, 0, 1425357274, 0),
(369, 27, 112, 0, 1425357274, 0),
(370, 28, 112, 0, 1425357274, 0),
(371, 29, 112, 0, 1425357274, 0),
(372, 30, 112, 0, 1425357274, 0),
(373, 31, 112, 0, 1425357274, 0),
(374, 32, 112, 0, 1425357274, 0),
(375, 33, 112, 0, 1425357274, 0),
(376, 34, 112, 0, 1425357274, 0),
(377, 35, 112, 0, 1425357274, 0),
(378, 40, 112, 0, 1425357274, 0),
(379, 41, 112, 0, 1425357274, 0),
(380, 42, 112, 0, 1425357274, 0),
(381, 43, 112, 0, 1425357274, 0),
(382, 44, 112, 0, 1425357274, 0),
(383, 45, 112, 0, 1425357274, 0),
(384, 46, 112, 0, 1425357274, 0),
(385, 47, 112, 0, 1425357274, 0),
(386, 48, 112, 0, 1425357274, 0),
(387, 49, 112, 0, 1425357274, 0),
(388, 50, 112, 0, 1425357274, 0),
(389, 51, 112, 0, 1425357274, 0),
(390, 52, 112, 0, 1425357274, 0),
(391, 53, 112, 0, 1425357274, 0),
(392, 54, 112, 0, 1425357274, 0),
(393, 55, 112, 0, 1425357274, 0),
(394, 56, 112, 0, 1425357274, 0),
(395, 57, 112, 0, 1425357274, 0),
(396, 58, 112, 0, 1425357274, 0),
(397, 59, 112, 0, 1425357274, 0),
(398, 60, 112, 0, 1425357274, 0),
(399, 61, 112, 0, 1425357274, 0),
(400, 62, 112, 0, 1425357274, 0),
(401, 63, 112, 0, 1425357274, 0),
(402, 64, 112, 0, 1425357274, 0),
(403, 65, 112, 0, 1425357274, 0),
(404, 66, 112, 0, 1425357274, 0),
(405, 67, 112, 0, 1425357274, 0),
(406, 68, 112, 0, 1425357274, 0),
(407, 71, 112, 0, 1425357274, 0),
(408, 72, 112, 0, 1425357274, 0),
(409, 73, 112, 0, 1425357274, 0),
(410, 74, 112, 0, 1425357274, 0),
(411, 75, 112, 0, 1425357274, 0),
(412, 76, 112, 0, 1425357274, 0),
(413, 77, 112, 0, 1425357274, 0),
(414, 78, 112, 0, 1425357274, 0),
(415, 79, 112, 0, 1425357274, 0),
(416, 80, 112, 0, 1425357274, 0),
(417, 81, 112, 0, 1425357274, 0),
(418, 82, 112, 0, 1425357274, 0),
(419, 83, 112, 0, 1425357274, 0),
(420, 84, 112, 0, 1425357274, 0),
(421, 1, 113, 0, 1425357274, 0),
(422, 2, 113, 0, 1425357274, 0),
(423, 3, 113, 0, 1425357274, 0),
(424, 4, 113, 0, 1425357274, 0),
(425, 5, 113, 0, 1425357274, 0),
(426, 6, 113, 0, 1425357274, 0),
(427, 36, 113, 0, 1425357274, 0),
(428, 37, 113, 0, 1425357274, 0),
(429, 38, 113, 0, 1425357274, 0),
(430, 39, 113, 0, 1425357274, 0),
(431, 69, 113, 0, 1425357274, 0),
(432, 70, 113, 0, 1425357274, 0),
(433, 7, 113, 0, 1425357274, 0),
(434, 8, 113, 0, 1425357274, 0),
(435, 9, 113, 0, 1425357274, 0),
(436, 10, 113, 0, 1425357274, 0),
(437, 11, 113, 0, 1425357274, 0),
(438, 12, 113, 0, 1425357274, 0),
(439, 13, 113, 0, 1425357274, 0),
(440, 14, 113, 0, 1425357274, 0),
(441, 15, 113, 0, 1425357274, 0),
(442, 16, 113, 0, 1425357274, 0),
(443, 17, 113, 0, 1425357274, 0),
(444, 18, 113, 0, 1425357274, 0),
(445, 19, 113, 0, 1425357274, 0),
(446, 20, 113, 0, 1425357274, 0),
(447, 21, 113, 0, 1425357274, 0),
(448, 22, 113, 0, 1425357274, 0),
(449, 23, 113, 0, 1425357274, 0),
(450, 24, 113, 0, 1425357274, 0),
(451, 25, 113, 0, 1425357274, 0),
(452, 26, 113, 0, 1425357274, 0),
(453, 27, 113, 0, 1425357274, 0),
(454, 28, 113, 0, 1425357274, 0),
(455, 29, 113, 0, 1425357274, 0),
(456, 30, 113, 0, 1425357274, 0),
(457, 31, 113, 0, 1425357274, 0),
(458, 32, 113, 0, 1425357274, 0),
(459, 33, 113, 0, 1425357274, 0),
(460, 34, 113, 0, 1425357274, 0),
(461, 35, 113, 0, 1425357274, 0),
(462, 40, 113, 0, 1425357274, 0),
(463, 41, 113, 0, 1425357274, 0),
(464, 42, 113, 0, 1425357274, 0),
(465, 43, 113, 0, 1425357274, 0),
(466, 44, 113, 0, 1425357274, 0),
(467, 45, 113, 0, 1425357274, 0),
(468, 46, 113, 0, 1425357274, 0),
(469, 47, 113, 0, 1425357274, 0),
(470, 48, 113, 0, 1425357274, 0),
(471, 49, 113, 0, 1425357274, 0),
(472, 50, 113, 0, 1425357274, 0),
(473, 51, 113, 0, 1425357274, 0),
(474, 52, 113, 0, 1425357274, 0),
(475, 53, 113, 0, 1425357274, 0),
(476, 54, 113, 0, 1425357274, 0),
(477, 55, 113, 0, 1425357274, 0),
(478, 56, 113, 0, 1425357274, 0),
(479, 57, 113, 0, 1425357274, 0),
(480, 58, 113, 0, 1425357274, 0),
(481, 59, 113, 0, 1425357274, 0),
(482, 60, 113, 0, 1425357274, 0),
(483, 61, 113, 0, 1425357274, 0),
(484, 62, 113, 0, 1425357274, 0),
(485, 63, 113, 0, 1425357274, 0),
(486, 64, 113, 0, 1425357274, 0),
(487, 65, 113, 0, 1425357274, 0),
(488, 66, 113, 0, 1425357274, 0),
(489, 67, 113, 0, 1425357274, 0),
(490, 68, 113, 0, 1425357274, 0),
(491, 71, 113, 0, 1425357274, 0),
(492, 72, 113, 0, 1425357274, 0),
(493, 73, 113, 0, 1425357274, 0),
(494, 74, 113, 0, 1425357274, 0),
(495, 75, 113, 0, 1425357274, 0),
(496, 76, 113, 0, 1425357274, 0),
(497, 77, 113, 0, 1425357274, 0),
(498, 78, 113, 0, 1425357274, 0),
(499, 79, 113, 0, 1425357274, 0),
(500, 80, 113, 0, 1425357274, 0),
(501, 81, 113, 0, 1425357274, 0),
(502, 82, 113, 0, 1425357274, 0),
(503, 83, 113, 0, 1425357274, 0),
(504, 84, 113, 0, 1425357274, 0),
(505, 1, 114, 0, 1425357274, 0),
(506, 2, 114, 0, 1425357274, 0),
(507, 3, 114, 0, 1425357274, 0),
(508, 4, 114, 0, 1425357274, 0),
(509, 5, 114, 0, 1425357274, 0),
(510, 6, 114, 0, 1425357274, 0),
(511, 36, 114, 0, 1425357274, 0),
(512, 37, 114, 0, 1425357274, 0),
(513, 38, 114, 0, 1425357274, 0),
(514, 39, 114, 0, 1425357274, 0),
(515, 69, 114, 0, 1425357274, 0),
(516, 70, 114, 0, 1425357274, 0),
(517, 7, 114, 0, 1425357274, 0),
(518, 8, 114, 0, 1425357274, 0),
(519, 9, 114, 0, 1425357274, 0),
(520, 10, 114, 0, 1425357274, 0),
(521, 11, 114, 0, 1425357274, 0),
(522, 12, 114, 0, 1425357274, 0),
(523, 13, 114, 0, 1425357274, 0),
(524, 14, 114, 0, 1425357274, 0),
(525, 15, 114, 0, 1425357274, 0),
(526, 16, 114, 0, 1425357274, 0),
(527, 17, 114, 0, 1425357274, 0),
(528, 18, 114, 0, 1425357274, 0),
(529, 19, 114, 0, 1425357274, 0),
(530, 20, 114, 0, 1425357274, 0),
(531, 21, 114, 0, 1425357274, 0),
(532, 22, 114, 0, 1425357274, 0),
(533, 23, 114, 0, 1425357274, 0),
(534, 24, 114, 0, 1425357274, 0),
(535, 25, 114, 0, 1425357274, 0),
(536, 26, 114, 0, 1425357274, 0),
(537, 27, 114, 0, 1425357274, 0),
(538, 28, 114, 0, 1425357274, 0),
(539, 29, 114, 0, 1425357274, 0),
(540, 30, 114, 0, 1425357274, 0),
(541, 31, 114, 0, 1425357274, 0),
(542, 32, 114, 0, 1425357274, 0),
(543, 33, 114, 0, 1425357274, 0),
(544, 34, 114, 0, 1425357274, 0),
(545, 35, 114, 0, 1425357274, 0),
(546, 40, 114, 0, 1425357274, 0),
(547, 41, 114, 0, 1425357274, 0),
(548, 42, 114, 0, 1425357274, 0),
(549, 43, 114, 0, 1425357274, 0),
(550, 44, 114, 0, 1425357274, 0),
(551, 45, 114, 0, 1425357274, 0),
(552, 46, 114, 0, 1425357274, 0),
(553, 47, 114, 0, 1425357274, 0),
(554, 48, 114, 0, 1425357274, 0),
(555, 49, 114, 0, 1425357274, 0),
(556, 50, 114, 0, 1425357274, 0),
(557, 51, 114, 0, 1425357274, 0),
(558, 52, 114, 0, 1425357274, 0),
(559, 53, 114, 0, 1425357274, 0),
(560, 54, 114, 0, 1425357274, 0),
(561, 55, 114, 0, 1425357274, 0),
(562, 56, 114, 0, 1425357274, 0),
(563, 57, 114, 0, 1425357274, 0),
(564, 58, 114, 0, 1425357274, 0),
(565, 59, 114, 0, 1425357274, 0),
(566, 60, 114, 0, 1425357274, 0),
(567, 61, 114, 0, 1425357274, 0),
(568, 62, 114, 0, 1425357274, 0),
(569, 63, 114, 0, 1425357274, 0),
(570, 64, 114, 0, 1425357274, 0),
(571, 65, 114, 0, 1425357274, 0),
(572, 66, 114, 0, 1425357274, 0),
(573, 67, 114, 0, 1425357274, 0),
(574, 68, 114, 0, 1425357274, 0),
(575, 71, 114, 0, 1425357274, 0),
(576, 72, 114, 0, 1425357274, 0),
(577, 73, 114, 0, 1425357274, 0),
(578, 74, 114, 0, 1425357274, 0),
(579, 75, 114, 0, 1425357274, 0),
(580, 76, 114, 0, 1425357274, 0),
(581, 77, 114, 0, 1425357274, 0),
(582, 78, 114, 0, 1425357274, 0),
(583, 79, 114, 0, 1425357274, 0),
(584, 80, 114, 0, 1425357274, 0),
(585, 81, 114, 0, 1425357274, 0),
(586, 82, 114, 0, 1425357274, 0),
(587, 83, 114, 0, 1425357274, 0),
(588, 84, 114, 0, 1425357274, 0),
(589, 1, 116, 0, 1425357274, 0),
(590, 2, 116, 0, 1425357274, 0),
(591, 3, 116, 0, 1425357274, 0),
(592, 4, 116, 0, 1425357274, 0),
(593, 5, 116, 0, 1425357274, 0),
(594, 6, 116, 0, 1425357274, 0),
(595, 36, 116, 0, 1425357274, 0),
(596, 37, 116, 0, 1425357274, 0),
(597, 38, 116, 0, 1425357274, 0),
(598, 39, 116, 0, 1425357274, 0),
(599, 69, 116, 0, 1425357274, 0),
(600, 70, 116, 0, 1425357274, 0),
(601, 7, 116, 0, 1425357274, 0),
(602, 8, 116, 0, 1425357274, 0),
(603, 9, 116, 0, 1425357274, 0),
(604, 10, 116, 0, 1425357274, 0),
(605, 11, 116, 0, 1425357274, 0),
(606, 12, 116, 0, 1425357274, 0),
(607, 13, 116, 0, 1425357274, 0),
(608, 14, 116, 0, 1425357274, 0),
(609, 15, 116, 0, 1425357274, 0),
(610, 16, 116, 0, 1425357274, 0),
(611, 17, 116, 0, 1425357274, 0),
(612, 18, 116, 0, 1425357274, 0),
(613, 19, 116, 0, 1425357274, 0),
(614, 20, 116, 0, 1425357274, 0),
(615, 21, 116, 0, 1425357274, 0),
(616, 22, 116, 0, 1425357274, 0),
(617, 23, 116, 0, 1425357274, 0),
(618, 24, 116, 0, 1425357274, 0),
(619, 25, 116, 0, 1425357274, 0),
(620, 26, 116, 0, 1425357274, 0),
(621, 27, 116, 0, 1425357274, 0),
(622, 28, 116, 0, 1425357274, 0),
(623, 29, 116, 0, 1425357274, 0),
(624, 30, 116, 0, 1425357274, 0),
(625, 31, 116, 0, 1425357274, 0),
(626, 32, 116, 0, 1425357274, 0),
(627, 33, 116, 0, 1425357274, 0),
(628, 34, 116, 0, 1425357274, 0),
(629, 35, 116, 0, 1425357274, 0),
(630, 40, 116, 0, 1425357274, 0),
(631, 41, 116, 0, 1425357274, 0),
(632, 42, 116, 0, 1425357274, 0),
(633, 43, 116, 0, 1425357274, 0),
(634, 44, 116, 0, 1425357274, 0),
(635, 45, 116, 0, 1425357274, 0),
(636, 46, 116, 0, 1425357274, 0),
(637, 47, 116, 0, 1425357274, 0),
(638, 48, 116, 0, 1425357274, 0),
(639, 49, 116, 0, 1425357274, 0),
(640, 50, 116, 0, 1425357274, 0),
(641, 51, 116, 0, 1425357274, 0),
(642, 52, 116, 0, 1425357274, 0),
(643, 53, 116, 0, 1425357274, 0),
(644, 54, 116, 0, 1425357274, 0),
(645, 55, 116, 0, 1425357274, 0),
(646, 56, 116, 0, 1425357274, 0),
(647, 57, 116, 0, 1425357274, 0),
(648, 58, 116, 0, 1425357274, 0),
(649, 59, 116, 0, 1425357274, 0),
(650, 60, 116, 0, 1425357274, 0),
(651, 61, 116, 0, 1425357274, 0),
(652, 62, 116, 0, 1425357274, 0),
(653, 63, 116, 0, 1425357274, 0),
(654, 64, 116, 0, 1425357274, 0),
(655, 65, 116, 0, 1425357274, 0),
(656, 66, 116, 0, 1425357274, 0),
(657, 67, 116, 0, 1425357274, 0),
(658, 68, 116, 0, 1425357274, 0),
(659, 71, 116, 0, 1425357274, 0),
(660, 72, 116, 0, 1425357274, 0),
(661, 73, 116, 0, 1425357274, 0),
(662, 74, 116, 0, 1425357274, 0),
(663, 75, 116, 0, 1425357274, 0),
(664, 76, 116, 0, 1425357274, 0),
(665, 77, 116, 0, 1425357274, 0),
(666, 78, 116, 0, 1425357274, 0),
(667, 79, 116, 0, 1425357274, 0),
(668, 80, 116, 0, 1425357274, 0),
(669, 81, 116, 0, 1425357274, 0),
(670, 82, 116, 0, 1425357274, 0),
(671, 83, 116, 0, 1425357274, 0),
(672, 84, 116, 0, 1425357274, 0),
(673, 1, 100, 0, 1425357274, 0),
(674, 2, 100, 0, 1425357274, 0),
(675, 3, 100, 0, 1425357274, 0),
(676, 4, 100, 0, 1425357274, 0),
(677, 5, 100, 0, 1425357274, 0),
(678, 6, 100, 0, 1425357274, 0),
(679, 36, 100, 0, 1425357274, 0),
(680, 37, 100, 0, 1425357274, 0),
(681, 38, 100, 0, 1425357274, 0),
(682, 39, 100, 0, 1425357274, 0),
(683, 69, 100, 0, 1425357274, 0),
(684, 70, 100, 0, 1425357274, 0),
(685, 7, 100, 0, 1425357274, 0),
(686, 8, 100, 0, 1425357274, 0),
(687, 9, 100, 0, 1425357274, 0),
(688, 10, 100, 0, 1425357274, 0),
(689, 11, 100, 0, 1425357274, 0),
(690, 12, 100, 0, 1425357274, 0),
(691, 13, 100, 0, 1425357274, 0),
(692, 14, 100, 0, 1425357274, 0),
(693, 15, 100, 0, 1425357274, 0),
(694, 16, 100, 0, 1425357274, 0),
(695, 17, 100, 0, 1425357274, 0),
(696, 18, 100, 0, 1425357274, 0),
(697, 19, 100, 0, 1425357274, 0),
(698, 20, 100, 0, 1425357274, 0),
(699, 21, 100, 0, 1425357274, 0),
(700, 22, 100, 0, 1425357274, 0),
(701, 23, 100, 0, 1425357274, 0),
(702, 24, 100, 0, 1425357274, 0),
(703, 25, 100, 0, 1425357274, 0),
(704, 26, 100, 0, 1425357274, 0),
(705, 27, 100, 0, 1425357274, 0),
(706, 28, 100, 0, 1425357274, 0),
(707, 29, 100, 0, 1425357274, 0),
(708, 30, 100, 0, 1425357274, 0),
(709, 31, 100, 0, 1425357274, 0),
(710, 32, 100, 0, 1425357274, 0),
(711, 33, 100, 0, 1425357274, 0),
(712, 34, 100, 0, 1425357274, 0),
(713, 35, 100, 0, 1425357274, 0),
(714, 40, 100, 0, 1425357274, 0),
(715, 41, 100, 0, 1425357274, 0),
(716, 42, 100, 0, 1425357274, 0),
(717, 43, 100, 0, 1425357274, 0),
(718, 44, 100, 0, 1425357274, 0),
(719, 45, 100, 0, 1425357274, 0),
(720, 46, 100, 0, 1425357274, 0),
(721, 47, 100, 0, 1425357274, 0),
(722, 48, 100, 0, 1425357274, 0),
(723, 49, 100, 0, 1425357274, 0),
(724, 50, 100, 0, 1425357274, 0),
(725, 51, 100, 0, 1425357274, 0),
(726, 52, 100, 0, 1425357274, 0),
(727, 53, 100, 0, 1425357274, 0),
(728, 54, 100, 0, 1425357274, 0),
(729, 55, 100, 0, 1425357274, 0),
(730, 56, 100, 0, 1425357274, 0),
(731, 57, 100, 0, 1425357274, 0),
(732, 58, 100, 0, 1425357274, 0),
(733, 59, 100, 0, 1425357274, 0),
(734, 60, 100, 0, 1425357274, 0),
(735, 61, 100, 0, 1425357274, 0),
(736, 62, 100, 0, 1425357274, 0),
(737, 63, 100, 0, 1425357274, 0),
(738, 64, 100, 0, 1425357274, 0),
(739, 65, 100, 0, 1425357274, 0),
(740, 66, 100, 0, 1425357274, 0),
(741, 67, 100, 0, 1425357274, 0),
(742, 68, 100, 0, 1425357274, 0),
(743, 71, 100, 0, 1425357274, 0),
(744, 72, 100, 0, 1425357274, 0),
(745, 73, 100, 0, 1425357274, 0),
(746, 74, 100, 0, 1425357274, 0),
(747, 75, 100, 0, 1425357274, 0),
(748, 76, 100, 0, 1425357274, 0),
(749, 77, 100, 0, 1425357274, 0),
(750, 78, 100, 0, 1425357274, 0),
(751, 79, 100, 0, 1425357274, 0),
(752, 80, 100, 0, 1425357274, 0),
(753, 81, 100, 0, 1425357274, 0),
(754, 82, 100, 0, 1425357274, 0),
(755, 83, 100, 0, 1425357274, 0),
(756, 84, 100, 0, 1425357274, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE IF NOT EXISTS `tbl_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `prefix` varchar(6) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`id`, `name`, `prefix`, `default`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Indonesia', 'id', 0, 1, 0, 1425357221, 0),
(2, 'English', 'en', 1, 1, 0, 1425357221, 0),
(3, 'Arab', 'ar', 0, 0, 0, 1425357221, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_model_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_model_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_module_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_module_lists`
--

INSERT INTO `tbl_module_lists` (`id`, `parent_id`, `module_name`, `module_link`, `order`) VALUES
(1, 0, 'admin', '#', 0),
(2, 1, 'Dashboard Panel', 'dashboard/index', 0),
(3, 1, 'Users', 'user/index', 1),
(4, 1, 'User Groups', 'usergroup/index', 2),
(5, 1, 'Languages', 'language/index', 3),
(6, 1, 'Settings', 'setting/index', 4),
(7, 1, 'Server Logs', 'serverlog/index', 5),
(8, 0, 'career', '#', 1),
(9, 8, 'Careers', 'career/index', 0),
(10, 8, 'Divisions', 'division/index', 1),
(11, 8, 'Applicants', 'applicant/index', 2),
(12, 8, 'Employees', 'employee/index', 3),
(13, 0, 'page', '#', 2),
(14, 13, 'Pages', 'page/index', 0),
(15, 13, 'Page Menus', 'pagemenu/index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_module_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `tbl_module_permissions`
--

INSERT INTO `tbl_module_permissions` (`id`, `module_id`, `module_name`, `module_link`, `order`) VALUES
(1, 1, 'Dashboard Panel', 'dashboard/index', 0),
(2, 1, 'Users', 'user/index', 1),
(3, 1, 'User Groups', 'usergroup/index', 2),
(4, 1, 'Languages', 'language/index', 3),
(5, 1, 'Settings', 'setting/index', 4),
(6, 1, 'Server Logs', 'serverlog/index', 5),
(7, 1, 'Add New Dashboard', 'dashboard/add', 6),
(8, 1, 'View Dashboard', 'dashboard/view', 7),
(9, 1, 'Edit Dashboard', 'dashboard/edit', 8),
(10, 1, 'Delete Dashboard', 'dashboard/delete', 9),
(11, 1, 'Change Dashboard Status', 'dashboard/change', 10),
(12, 1, 'Add User', 'user/add', 11),
(13, 1, 'View User', 'user/view', 12),
(14, 1, 'Edit User', 'user/edit', 13),
(15, 1, 'Delete User', 'user/delete', 14),
(16, 1, 'Change User Status', 'user/change', 15),
(17, 1, 'Add User Group', 'usergroup/add', 16),
(18, 1, 'View User Group', 'usergroup/view', 17),
(19, 1, 'Edit User Group', 'usergroup/edit', 18),
(20, 1, 'Delete User Group', 'usergroup/delete', 19),
(21, 1, 'Change User Group Status', 'usergroup/change', 20),
(22, 1, 'Add Language', 'language/add', 21),
(23, 1, 'View Language', 'language/view', 22),
(24, 1, 'Edit Language', 'language/edit', 23),
(25, 1, 'Delete Language', 'language/delete', 24),
(26, 1, 'Change Language Status', 'language/change', 25),
(27, 1, 'Add Setting', 'setting/add', 26),
(28, 1, 'View Setting', 'setting/view', 27),
(29, 1, 'Edit Setting', 'setting/edit', 28),
(30, 1, 'Delete Setting', 'setting/delete', 29),
(31, 1, 'Change Setting Status', 'setting/change', 30),
(32, 1, 'View Server Log', 'serverlog/view', 31),
(33, 1, 'Edit Server Log', 'serverlog/edit', 32),
(34, 1, 'Delete Server Log', 'serverlog/delete', 33),
(35, 1, 'Trash Server Log', 'serverlog/trash', 34),
(36, 8, 'Careers', 'career/index', 0),
(37, 8, 'Divisions', 'division/index', 1),
(38, 8, 'Applicants', 'applicant/index', 2),
(39, 8, 'Employees', 'employee/index', 3),
(40, 8, 'Add Career', 'career/index/add', 4),
(41, 8, 'View Career', 'career/index/view', 5),
(42, 8, 'Edit Career', 'career/index/edit', 6),
(43, 8, 'Delete Career', 'career/index/delete', 7),
(44, 8, 'Change Career Status', 'career/index/change', 8),
(45, 8, 'Export Career', 'career/index/export', 9),
(46, 8, 'Print Career', 'career/index/print', 10),
(47, 8, 'Add Division', 'division/index/add', 11),
(48, 8, 'View Division', 'division/index/view', 12),
(49, 8, 'Edit Division', 'division/index/edit', 13),
(50, 8, 'Delete Division', 'division/index/delete', 14),
(51, 8, 'Change Division Status', 'division/index/change', 15),
(52, 8, 'Export Division', 'division/index/export', 16),
(53, 8, 'Print Division', 'division/index/print', 17),
(54, 8, 'Add Applicant', 'applicant/index/add', 18),
(55, 8, 'View Applicant', 'applicant/index/view', 19),
(56, 8, 'Edit Applicant', 'applicant/index/edit', 20),
(57, 8, 'Delete Applicant', 'applicant/index/delete', 21),
(58, 8, 'Change Applicant', 'applicant/index/change', 22),
(59, 8, 'Export Applicant', 'applicant/index/export', 23),
(60, 8, 'Print Applicant', 'applicant/index/print', 24),
(61, 8, 'Add Employee', 'employee/index/add', 25),
(62, 8, 'View Employee', 'employee/index/view', 26),
(63, 8, 'Edit Employee', 'employee/index/edit', 27),
(64, 8, 'Delete Employee', 'employee/index/delete', 28),
(65, 8, 'Set to Employee', 'employee/set', 29),
(66, 8, 'Change Employee', 'employee/index/change', 30),
(67, 8, 'Export Employee', 'employee/index/export', 31),
(68, 8, 'Print Employee', 'employee/index/print', 32),
(69, 13, 'Pages', 'page/index', 0),
(70, 13, 'Page Menus', 'pagemenu/index', 1),
(71, 13, 'Add Page', 'page/index/add', 2),
(72, 13, 'View Page', 'page/index/view', 3),
(73, 13, 'Edit Page', 'page/index/edit', 4),
(74, 13, 'Delete Page', 'page/index/delete', 5),
(75, 13, 'Change Page Status', 'page/index/change', 6),
(76, 13, 'Export Page', 'page/index/export', 7),
(77, 13, 'Print Page', 'page/index/print', 8),
(78, 13, 'Add Page Menu', 'pagemenu/index/add', 9),
(79, 13, 'View Page Menu', 'pagemenu/index/view', 10),
(80, 13, 'Edit Page Menu', 'pagemenu/index/edit', 11),
(81, 13, 'Delete Page Menu', 'pagemenu/index/delete', 12),
(82, 13, 'Change Page Menu Status', 'pagemenu/index/change', 13),
(83, 13, 'Export Page Menu', 'pagemenu/index/export', 14),
(84, 13, 'Print Page Menu', 'pagemenu/index/print', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `attribute` text,
  `publish_date` date DEFAULT NULL,
  `unpublish_date` date DEFAULT NULL,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `tags` text,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`menu_id`,`name`,`publish_date`,`unpublish_date`,`allow_comment`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `menu_id`, `name`, `subject`, `synopsis`, `text`, `attribute`, `publish_date`, `unpublish_date`, `allow_comment`, `tags`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, 'test-page-one', 'Test page one sdfsf', '<p>\r\n	Test page one Test page one Test page one Test page one Test page one Test page one sdfsdf asdasd</p>\r\n', '<p>\r\n	Test page one Test page one Test page one Test page one sdfsdfsf cbxfx</p>\r\n', NULL, '2015-02-13', '2015-02-28', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1424073158),
(2, 1, 'test-page-two', 'Test Page Two', '<p>\r\n	Test Page Two Synopsis</p>\r\n', '<p>\r\n	Test Page Two Text sefsfdfsdf</p>\r\n', NULL, '2015-02-28', '2015-02-28', 1, NULL, NULL, NULL, NULL, 'publish', NULL, NULL),
(3, 2, 'test-three-page', 'Test three', '<p>\r\n	Test three</p>\r\n', '<p>\r\n	Test three</p>\r\n', NULL, '2015-02-28', '2015-03-31', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087137),
(4, 2, 'test-four-test', 'Test Four TEst', '<p>\r\n	Test Four TEst</p>\r\n', '<p>\r\n	Test Four TEst</p>\r\n', NULL, '2015-02-01', '2015-03-28', NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087155),
(5, 2, 'test-five-page-miss', 'Test Five Page', '<p>\r\n	Test Five Page</p>\r\n', '<p>\r\n	Test Five</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087170),
(6, 1, 'test-one-two-three-four-five-six-seven', 'Test one two three four five six seven', '<p>\r\n	Test one two three four five six seven</p>\r\n', '<p>\r\n	Test one two three four five six seven</p>\r\n', NULL, '2015-02-28', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', 1424071240, 1424087187),
(7, 2, 'Test Page with Added', 'Test Page with Added', '<p>\r\n	Test Page with Added</p>\r\n', '<p>\r\n	Test Page with Added</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', 1424087227, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_menus`
--

CREATE TABLE IF NOT EXISTS `tbl_page_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sub_level` tinyint(3) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `is_system` tinyint(3) DEFAULT NULL,
  `has_child` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`name`,`sub_level`,`order`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_page_menus`
--

INSERT INTO `tbl_page_menus` (`id`, `parent_id`, `name`, `title`, `description`, `url`, `media`, `position`, `sub_level`, `order`, `is_system`, `has_child`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, NULL, 'Menu One', 'menu-one', '<p>\r\n	Menu One Description</p>\r\n', 'menu-one', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL),
(2, NULL, 'Menu Two', 'menu-two', '<p>\r\n	Menu Two Description</p>\r\n', 'menu-two', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participant`
--

CREATE TABLE IF NOT EXISTS `tbl_participant` (
  `part_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `fb_id` varchar(255) DEFAULT NULL,
  `fb_pic_url` varchar(255) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_server_logs`
--

CREATE TABLE IF NOT EXISTS `tbl_server_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `status_code` varchar(160) DEFAULT NULL,
  `bytes_served` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) DEFAULT '0',
  `http_code` int(11) unsigned NOT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL,
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_server_logs`
--

INSERT INTO `tbl_server_logs` (`id`, `url`, `user_id`, `status_code`, `bytes_served`, `ip_address`, `http_code`, `referrer`, `user_agent`, `status`, `added`, `modified`) VALUES
(1, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(2, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(3, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(4, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(5, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parameter` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`parameter`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `parameter`, `alias`, `value`, `is_system`, `status`, `added`, `modified`) VALUES
(1, 'email_marketing', 'Email Marketing', 'marketing@', 1, 1, 1334835773, NULL),
(2, 'email_administrator', 'Email Administrator', 'administrator@', 1, 1, 1334835773, 1336122482),
(3, 'email_hrd', 'Email HRD', 'hrd@', 1, 1, 1334835773, NULL),
(4, 'email_info', 'Email Info', 'info@d3.dentsu.co.id', 1, 1, 1334835773, NULL),
(5, 'email_template', 'Email Template', '&dash;', 1, 1, 1334835773, NULL),
(6, 'maintenance_template', 'Maintenance Mode Template', '<h2>The site is off for <span><h1>MAINTENANCE</h1></span></h2>', 1, 1, 1334835773, NULL),
(7, 'contactus_address', 'Contact Address', '22nd Floor, Mandiri Tower Plaza Bapindo <br/>\nJl. Jend. Sudirman Kav. 54-55 <br/>\nJakarta 12190, Indonesia', 1, 1, 1334835773, NULL),
(8, 'contactus_gmap', 'GMaps Location', 'http://maps.google.com/maps?q=-6.217668,106.812992&num=1&t=m&z=18', 1, 1, 1334835773, NULL),
(9, 'no_phone', 'Number Phone', '(021) 299-501-10 / (021) 526-0286', 1, 1, 1334835773, NULL),
(10, 'no_fax', 'Number Fax', '(021) 522.3718', 1, 1, 1334835773, NULL),
(11, 'title_default', 'Website Title Default', 'Connecting you to your consumer', 1, 1, NULL, NULL),
(12, 'title_name', 'Company Title Name', 'PT. Default (Web Agency in Jakarta)', 1, 1, NULL, 1336118568),
(13, 'language', 'Default Language', 'en', 1, 1, NULL, 1336118568),
(14, 'counter', 'Site Counter', '123', 1, 1, NULL, 1336118568),
(15, 'copyright', 'Copyright', '© 2012 COMPANY NAME COPYRIGHT. All Rights Reserved.', 1, 1, NULL, 1336118568),
(16, 'site_name', 'Site Name', ' Default <br/> PT. Default (Web Agency in Jakarta).', 1, 1, NULL, 1336118568),
(17, 'site_quote', 'Quote', 'We provide solution for your Websites', 1, 1, NULL, 1336118568),
(18, 'site_description', 'Website Description', 'We provide solution for your Company Website ', 1, 1, NULL, 1336118568),
(19, 'socmed_facebook', 'Facebook', 'http://facebook.com', 1, 1, NULL, 1336118568),
(20, 'socmed_twitter', 'Twitter', 'http://twitter.com', 1, 1, NULL, 1336118568),
(21, 'socmed_gplus', 'Google Plus', 'http://plus.google.com', 1, 1, NULL, 1336118568),
(22, 'socmed_linkedin', 'LinkedIn', 'http://linkedin.com', 1, 1, NULL, 1424754067),
(23, 'socmed_pinterest', 'Pinterest', 'http://pinterest.com', 1, 1, NULL, 1336118568),
(24, 'registered_mark', 'Registered', 'We provide solution for your Websites', 1, 1, NULL, 1336118568),
(25, 'google_analytics', 'Analytics', 'Code Snippet', 1, 1, NULL, 1336118568),
(26, 'ext_link', 'Ext Link', 'http://www.apb-career.net', 1, 1, NULL, 1423732944);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` char(64) CHARACTER SET latin1 NOT NULL,
  `email` varchar(64) CHARACTER SET latin1 NOT NULL,
  `password` char(124) CHARACTER SET latin1 NOT NULL,
  `group_id` tinyint(1) unsigned NOT NULL,
  `last_login` int(11) NOT NULL,
  `logged_in` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `session` varchar(160) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`, `group_id`, `last_login`, `logged_in`, `status`, `session`, `added`, `modified`) VALUES
(1, 'admin', 'admin@admin.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 1, 1425377399, 1, 1, '', 0, 0),
(2, 'joni', 'admin1@admin.com', '9003d1df22eb4d3820015070385194c8', 2, 1417003004, 0, 1, '', 0, 1424687676),
(3, 'qc9080', 'asdf@asdf.com', 'fb00378895cf135de3b135f385c0012f3823e4fb', 116, 1417001008, 0, 1, '', 1425031512, 1424689343),
(29, 'dyarfi', 'dyarfi20@gmail.com', '647dc5d75f6ce3c6a859eb3b91fa6ccaab05b245', 116, 0, 0, 1, '', 1417065898, 0),
(7, 'gmp1234', 'defrian.yarfi@gmail.com', '4d60cf3ac1381a533090412a84466000437eee1f', 116, 1417003001, 0, 1, '', 1425031542, 0),
(42, 'dyarfi20@gmail.com', 'dyarfi20@gmail.com', '8f956a5c8346e1909dce9a2aea8839d6f05e8ce1', 100, 0, 0, 1, '', 1425270772, 0),
(43, 'defrian.yarfi@gmail.com', 'defrian.yarfi@gmail.com', 'a49c1b8e9e2b8d49e78194b07fcaa045204647d3', 100, 0, 0, 1, '', 1425270783, 0),
(45, 'defrian.yarfi@gmail.com', 'defrian.yarfi@gmail.com', 'a49c1b8e9e2b8d49e78194b07fcaa045204647d3', 100, 0, 0, 1, '', 1425271011, 0),
(44, 'dyarfi20@gmail.com', 'dyarfi20@gmail.com', '8f956a5c8346e1909dce9a2aea8839d6f05e8ce1', 100, 0, 0, 1, '', 1425271008, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_user_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `backend_access` tinyint(1) DEFAULT NULL,
  `full_backend_access` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `tbl_user_groups`
--

INSERT INTO `tbl_user_groups` (`id`, `name`, `backend_access`, `full_backend_access`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Super Administrator', 1, 1, 1, 1, 1416499923, 0),
(2, 'Administrator', 1, 1, 1, 1, 1416499923, 0),
(99, 'User', 0, 0, 1, 1, 1416499923, 0),
(111, 'Manager', 1, 1, 0, 0, 0, 1425371383),
(112, 'Executive', 0, 0, 1, 0, 0, 0),
(113, 'Director', 0, 0, 1, 0, 0, 0),
(114, 'General', 0, 0, 1, 0, 0, 1424689329),
(116, 'Publisher', 1, 1, 1, 0, 0, 0),
(100, 'Employee', 1, NULL, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_histories`
--

CREATE TABLE IF NOT EXISTS `tbl_user_histories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(24) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `controller` varchar(160) NOT NULL,
  `action` char(20) DEFAULT NULL,
  `time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`module`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user_histories`
--

INSERT INTO `tbl_user_histories` (`id`, `module`, `user_id`, `controller`, `action`, `time`) VALUES
(1, 'user', 1, 'history', 'index', 1416281220),
(2, 'user', 1, 'history', 'index', 1416281220);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profiles`
--

CREATE TABLE IF NOT EXISTS `tbl_user_profiles` (
  `user_id` int(11) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `about` text,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `division` varchar(64) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `address` text,
  `postal_code` varchar(8) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `mobile_phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `file_type` varchar(64) DEFAULT NULL,
  `file_name` varchar(48) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_profiles`
--

INSERT INTO `tbl_user_profiles` (`user_id`, `gender`, `about`, `first_name`, `last_name`, `division`, `country`, `state`, `city`, `address`, `postal_code`, `birthday`, `phone`, `mobile_phone`, `fax`, `website`, `file_type`, `file_name`, `status`, `added`, `modified`) VALUES
(1, 1, 'Top Administrator of this website and portal', 'Administrator', 'Website', 'Web Programmer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '081807244697', '0', 'http://google.com', 'image/jpeg', 'users_default.png', 1, 1283760138, 1283831030),
(2, 1, 'Administrator of this Website', '', '', 'Web Designer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '081807244697', '0', '', 'image/jpeg', '78d57b4b5a0c6048b75bb0c9d91a8392.jpg', 1, 1283760138, 1424687676),
(3, 1, 'User of this Website', 'Administrator', 'Viewers', 'Jakarta', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '2012-02-12', '1234', NULL, NULL, NULL, 'image/jpeg', 'a8a484572c007e1e17648ae2c7ad629c.jpg', 1, 1425031512, 1424689343),
(28, 1, 'Test', 'Public', 'Viewers', 'Web Programmer', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '909090090', '909090090', NULL, NULL, NULL, NULL, 1, 1424854403, 1424689343),
(29, 1, 'Web Programmer not a full stack', 'Defrian', 'Yarfi', 'Web Programmer', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '081807244697', '081807244697', NULL, NULL, NULL, NULL, 1, 1417065898, 0),
(44, 1, NULL, 'Dyarfi 20 Defrian Yarfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '647474747', NULL, NULL, NULL, NULL, '20131013_142521a.jpg', 1, 1425271008, 0),
(45, 1, NULL, 'Defrian Yarfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '647474747', NULL, NULL, NULL, NULL, '3b394-1513781_10205610488526266_3600135193534162', 1, 1425271011, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;