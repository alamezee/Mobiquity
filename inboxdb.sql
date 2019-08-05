/*
SQLyog - Free MySQL GUI v5.02
Host - 5.0.19-nt : Database - mobiquity
*********************************************************************
Server version : 5.0.19-nt
*/


create database if not exists `mobiquity`;

USE `mobiquity`;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `adminid` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(500) default NULL,
  `adminLevel` varchar(10) default NULL,
  PRIMARY KEY  (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admins` */

insert into `admins` values 
(1,'srikar','bc9a73e5a88c1d71ffd36ec4de9877ecfbecd5749a35c4c9bec9faaae2984f7a','sa'),
(2,'vivek','bc9a73e5a88c1d71ffd36ec4de9877ecfbecd5749a35c4c9bec9faaae2984f7a','sa'),
(7,'Zeeshan','157b8ac707ffbbfb865435a6d1780171ec96cd3f8ff45a5d37ad18ed4ee4935','na'),
(8,'Joel','bfc604896bdb04dc7fa7968b273d8085d2f8e1e2a9d06b65a9c9bece5ba387dd','na'),
(9,'vinayak','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','na');

/*Table structure for table `mobiquityuserreg` */

DROP TABLE IF EXISTS `mobiquityuserreg`;

CREATE TABLE `mobiquityuserreg` (
  `name` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `newpassword` varchar(500) default NULL,
  `adminlevel` varchar(2) default NULL,
  `approval` tinyint(1) default '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mobiquityuserreg` */

insert into `mobiquityuserreg` values 
('Zeeshan','8376996769','zalam52@gmail.com','157b8ac707ffbbfb865435a6d1780171ec96cd3f8ff45a5d37ad18ed4ee4935','na',1),
('Joel','789456123','joel.justin@comviva.com','bfc604896bdb04dc7fa7968b273d8085d2f8e1e2a9d06b65a9c9bece5ba387dd','na',1),
('vinayak','123456789','vinayal@comviva.com','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','na',1),
('Mahabir','456123741','mahabir@comviva.com','840815f39c15d7ccbe3b5a2a3392eb92294f629cdad004d8354a5e7eb658f356','na',0),
('anand','456789321','anand@comviva.com','b343255455c904579a8fbe635fc80c786e673c74a01b1d0a3dd64e366d4914f3','na',0),
('asdasd','asdfsad','adsdas@dfd.com','264e35fd69ad440704239117a001e335b7b17bc9c0bad3b35bb895ef538097eb','na',0),
('babin','8527410963','zsdfd@segdfg.com','5fd924625f6ab16a19cc9807c7c506ae1813490e4ba675f843d5a10e0baacdb8','ca',0),
('wertyy','2345','sdfgh@asd.com','e02a682c0386827b966cf90b8662d147ba1539afea97ff1859d941ab2ba21dcf','ca',0),
('qwerttttt','1234124','asdeer@sad.com','a8e92c7c669ec4bab3dfbbcffc0980b45b186150b3d8a0ce1cfb16a4ca91c882','ca',0),
('wertyuuu','234235','sgfa@rew.com','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','na',0),
('joel','','','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','ca',0),
('','','','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','ca',0),
('w','','','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855','ca',0);

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `serial` int(11) NOT NULL auto_increment,
  `sender` varchar(50) default NULL,
  `subject` varchar(100) default 'Please Approve',
  `content` varchar(300) default NULL,
  `date` varchar(50) default NULL,
  `time` varchar(50) default NULL,
  `read` tinyint(1) default '0',
  `delete` tinyint(1) default '0',
  `archive` tinyint(4) default '0',
  `checker_id` int(11) default NULL,
  PRIMARY KEY  (`serial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notifications` */

insert into `notifications` values 
(46,'null','You have raised the following request ',' Zeeshan zalam52@gmail.com 8376996769 ','05/08/19','10:13:15',0,0,0,0),
(47,'null','Please Approve',' Zeeshan zalam52@gmail.com 8376996769 ','05/08/19','10:13:16',1,0,1,1),
(48,'null','Please Approve',' Zeeshan zalam52@gmail.com 8376996769 ','05/08/19','10:13:16',1,0,0,2),
(49,'vivek','You have raised the following request ',' Joel joel.justin@comviva.com 789456123 ','05/08/19','10:15:12',1,0,0,2),
(50,'vivek','Please Approve',' Joel joel.justin@comviva.com 789456123 ','05/08/19','10:15:12',1,0,1,1),
(51,'srikar','You have raised the following request ',' vinayak vinayal@comviva.com 123456789 ','05/08/19','10:16:47',1,0,0,1),
(52,'srikar','Please Approve',' vinayak vinayal@comviva.com 123456789 ','05/08/19','10:16:47',0,0,0,2),
(53,'srikar','Please Approve',' vinayak vinayal@comviva.com 123456789 ','05/08/19','10:16:47',1,0,0,7),
(54,'srikar','Please Approve',' vinayak vinayal@comviva.com 123456789 ','05/08/19','10:16:48',1,0,0,8),
(55,'srikar','You have raised the following request ',' Mahabir mahabir@comviva.com 456123741 ','05/08/19','12:04:26',1,0,0,1),
(56,'srikar','Please Approve',' Mahabir mahabir@comviva.com 456123741 ','05/08/19','12:04:26',0,0,0,2),
(57,'srikar','Please Approve',' Mahabir mahabir@comviva.com 456123741 ','05/08/19','12:04:26',0,0,0,7),
(58,'srikar','Please Approve',' Mahabir mahabir@comviva.com 456123741 ','05/08/19','12:04:26',0,0,0,8),
(59,'srikar','Please Approve',' Mahabir mahabir@comviva.com 456123741 ','05/08/19','12:04:26',0,0,0,9),
(60,'null','You have raised the following request ',' anand anand@comviva.com 456789321 ','05/08/19','12:08:46',0,0,0,0),
(61,'null','Please Approve',' anand anand@comviva.com 456789321 ','05/08/19','12:08:46',0,1,0,1),
(62,'null','Please Approve',' anand anand@comviva.com 456789321 ','05/08/19','12:08:46',0,0,0,2),
(63,'null','Please Approve',' anand anand@comviva.com 456789321 ','05/08/19','12:08:46',0,0,0,7),
(64,'null','Please Approve',' anand anand@comviva.com 456789321 ','05/08/19','12:08:46',0,0,0,8),
(65,'null','Please Approve',' anand anand@comviva.com 456789321 ','05/08/19','12:08:46',0,0,0,9),
(66,'srikar','You have raised the following request ',' asdasd adsdas@dfd.com asdfsad ','05/08/19','12:15:02',0,1,0,1),
(67,'srikar','Please Approve',' asdasd adsdas@dfd.com asdfsad ','05/08/19','12:15:02',0,0,0,2),
(68,'srikar','Please Approve',' asdasd adsdas@dfd.com asdfsad ','05/08/19','12:15:02',0,0,0,7),
(69,'srikar','Please Approve',' asdasd adsdas@dfd.com asdfsad ','05/08/19','12:15:02',0,0,0,8),
(70,'srikar','Please Approve',' asdasd adsdas@dfd.com asdfsad ','05/08/19','12:15:02',0,0,0,9),
(71,'vivek','You have raised the following request ',' Puru zsfdxdg@sxgfd.com 741852 ','05/08/19','12:30:15',0,0,0,2),
(72,'vivek','You have raised the following request ',' babin zsdfd@segdfg.com 8527410963 ','05/08/19','12:44:17',0,0,0,2),
(73,'vivek','Please Approve',' babin zsdfd@segdfg.com 8527410963 ','05/08/19','12:44:17',1,0,0,1),
(74,'null','You have raised the following request ',' asddd sdf@dfg.com 213412 ','05/08/19','15:23:35',0,0,0,0),
(75,'null','You have raised the following request ',' asddd sdf@dfg.com 213412 ','05/08/19','15:24:08',0,0,0,0),
(76,'null','You have raised the following request ',' asddd sdf@dfg.com 213412 ','05/08/19','15:24:12',0,0,0,0),
(77,'srikar','You have raised the following request ',' wertyy sdfgh@asd.com 2345 ','05/08/19','15:28:13',0,0,0,1),
(78,'srikar','Please Approve',' wertyy sdfgh@asd.com 2345 ','05/08/19','15:28:13',0,0,0,2),
(79,'srikar','You have raised the following request ',' qwerttttt asdeer@sad.com 1234124 ','05/08/19','15:29:02',0,0,0,1),
(80,'srikar','Please Approve',' qwerttttt asdeer@sad.com 1234124 ','05/08/19','15:29:02',0,0,0,2),
(81,'srikar','You have raised the following request ',' wertyuuu sgfa@rew.com 234235 ','05/08/19','15:31:34',0,0,0,1),
(82,'srikar','Please Approve',' wertyuuu sgfa@rew.com 234235 ','05/08/19','15:31:34',0,0,0,2),
(83,'vivek','You have raised the following request ',' joel   ','05/08/19','15:35:59',0,0,0,2),
(84,'vivek','Please Approve',' joel   ','05/08/19','15:35:59',0,0,0,1),
(85,'vivek','You have raised the following request ','    ','05/08/19','15:36:48',0,0,0,2),
(86,'vivek','Please Approve','    ','05/08/19','15:36:48',0,0,0,1),
(87,'vivek','You have raised the following request ',' w   ','05/08/19','15:57:14',0,0,0,2),
(88,'vivek','Please Approve',' w   ','05/08/19','15:57:14',0,0,0,1);
