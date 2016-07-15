-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: entec
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1.1

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `audit_location` varchar(250) NOT NULL,
  `auditor` int(11) NOT NULL,
  `audit_date` datetime NOT NULL,
  `audit_time` datetime NOT NULL,
  `audit_status` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(250) NOT NULL,
  `client_location` text NOT NULL,
  `client_address` text NOT NULL,
  `client_contact_person` varchar(250) NOT NULL,
  `client_mobile` bigint(20) DEFAULT NULL,
  `client_landline` bigint(20) DEFAULT NULL,
  `client_email` varchar(250) DEFAULT NULL,
  `client_engagement_type` varchar(10) DEFAULT NULL,
  `client_contact_period_from` date DEFAULT NULL,
  `client_contact_period_to` date DEFAULT NULL,
  `client_area` varchar(50) DEFAULT NULL,
  `client_city` varchar(50) DEFAULT NULL,
  `client_state` varchar(50) DEFAULT NULL,
  `client_country` varchar(50) DEFAULT NULL,
  `client_pincode` int(11) DEFAULT NULL,
  `client_logo` varchar(500) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `not_id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `notification` varchar(500) NOT NULL,
  `time` datetime NOT NULL,
  `not_msg` varchar(500) NOT NULL,
  PRIMARY KEY (`not_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Table structure for table `observation`
--

CREATE TABLE `observation` (
  `observation_id` int(11) NOT NULL AUTO_INCREMENT,
  `observation_location` varchar(250) NOT NULL,
  `observation_description` text NOT NULL,
  `observation_responsibility` varchar(10) NOT NULL,
  `observation_priority` varchar(10) NOT NULL,
  `observation_status` varchar(10) NOT NULL,
  `observation_image` varchar(250) DEFAULT NULL,
  `audit_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`observation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `emergencycontact` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `picture` varchar(250) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createddate` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;