/*
SQLyog Ultimate v8.55 
MySQL - 5.1.54-community : Database - onlineexam
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlineexam` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlineexam`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `uname` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`uname`,`password`) values ('admin','admin');

/*Table structure for table `answers` */

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `user` varchar(200) DEFAULT NULL,
  `attemptedquestions` int(200) DEFAULT NULL,
  `totalcount` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `answers` */

insert  into `answers`(`user`,`attemptedquestions`,`totalcount`) values ('ram',17,15),('bin',2,1),('lohith',4,2);

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `qid` varchar(300) DEFAULT NULL,
  `que` varchar(500) DEFAULT NULL,
  `op1` varchar(500) DEFAULT NULL,
  `op2` varchar(500) DEFAULT NULL,
  `op3` varchar(500) DEFAULT NULL,
  `op4` varchar(500) DEFAULT NULL,
  `ans` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `questions` */

insert  into `questions`(`qid`,`que`,`op1`,`op2`,`op3`,`op4`,`ans`) values ('q1','data is stored in computers is?','files','directories','floppies','mtter','opt1'),('q2','which of the following can store large amounts of data?','floppy disk','hard disk','CDROM','zip disk','opt2');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `username` varchar(15) DEFAULT NULL,
  `userid` varchar(10) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `contactno` varchar(10) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`username`,`userid`,`dob`,`email`,`password`,`contactno`,`city`,`address`) values ('ram','123','12-12-99','ram@gmail.com','ram123','8948756325','bang','bang'),('bin','234','13-12-98','bin@gmail.com','bin12','9901975791','mangalore','mangalore'),('bin','234','13-12-98','bin@gmail.com','bin12','9901975791','mangalore','mangalore'),('lohith','loh123','19-09-89','lohith@gmail.com','lohith123','8956235689','hassan','bangalore');

/*Table structure for table `userlogin` */

DROP TABLE IF EXISTS `userlogin`;

CREATE TABLE `userlogin` (
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userlogin` */

insert  into `userlogin`(`username`,`password`) values ('ram','ram123'),('bin','bin12'),('bin','bin12'),('lohith','lohith123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
