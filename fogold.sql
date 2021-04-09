

CREATE DATABASE `fogcomputing` ;



USE `fogcomputing`;



/*Table structure for table `admin` */



DROP TABLE IF EXISTS `admin`;



CREATE TABLE `admin` (
  `loginid` varchar(50) default NULL,
  `password` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



/*Data for the table `admin` */



insert  into `admin`(`loginid`,`password`) values ('admin','n');



/*Table structure for table `contacts` */



DROP TABLE IF EXISTS `contacts`;



CREATE TABLE `contacts` (
  `id` smallint(6) NOT NULL auto_increment,
  `first` varchar(50) default NULL,
  `mid` varchar(50) default NULL,
  `last` varchar(50) default NULL,
  `dob` varchar(50) default NULL,
  `mob` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `file_link` varchar(100) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



/*Data for the table `contacts` */



insert  into `contacts`(`id`,`first`,`mid`,`last`,`dob`,`mob`,`email`,`file_link`) values (2,'madhu','ram','chandra','17.7.2000','6778989','mahesh@yahoo.in',NULL);



/*Table structure for table `logmonitor` */



DROP TABLE IF EXISTS `logmonitor`;



CREATE TABLE `logmonitor` (
  `srno` int(11) NOT NULL auto_increment,
  `id` varchar(20) default NULL,
  `ip` varchar(50) default NULL,
  `logintime` varchar(50) default NULL,
  `logouttime` varchar(50) default NULL,
  `sessiontime` varchar(50) default NULL,
  `VisitedLinks` varchar(5000) default NULL,
  PRIMARY KEY  (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;



/*Data for the table `logmonitor` */



insert  into `logmonitor`(`srno`,`id`,`ip`,`logintime`,`logouttime`,`sessiontime`,`VisitedLinks`) values (1,'123','0:0:0:0:0:0:0:1','Saturday, May 25, 2013 6:34:10 PM','Saturday, May 25, 2013 6:34:13 PM',NULL,NULL);


/*Table structure for table `news` */



DROP TABLE IF EXISTS `news`;



CREATE TABLE `news` (
  `sr_no` smallint(6) NOT NULL auto_increment,
  `news1` tinytext,
  `news2` tinytext,
  `news3` tinytext,
  `news4` tinytext,
  `news5` tinytext,
  `news6` tinytext,
  UNIQUE KEY `sr_no` (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



/*Data for the table `news` */



insert  into `news`(`sr_no`,`news1`,`news2`,`news3`,`news4`,`news5`,`news6`) values (1,'There is a large number of Intrusion Detection Software / Systems (IDS) out there for various operating platforms, all ranging in price and complexity. ','I have spent countless hours looking at hardware and software solutions for a Windows platform and found one product that stands out from the rest, SNORT.','SNORT is an open source Intrusion Detection Software / IDS that is now available for the Windows operating system.',' Listed in the table below is the information you’ll need to get your Intrusion Detection Software up and running for next to nothing.','There are costs associated with relinquishing control of intrusion detection and prevention services Even to a well established, professional,and efficient Managed Security Service Provider.','Non-repudiation: Neither the sender nor the receiver of data is able to deny the fact of data transmission. A system that meets the above criteria can be considered as a secure computer network system.');



/*Table structure for table `psychotest` */



DROP TABLE IF EXISTS `psychotest`;



CREATE TABLE `psychotest` (
  `srno` smallint(6) NOT NULL auto_increment,
  `queid` varchar(20) default NULL,
  `questions` tinytext,
  UNIQUE KEY `srno` (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;



/*Data for the table `psychotest` */



insert  into `psychotest`(`srno`,`queid`,`questions`) values (1,'que1','What is first bike number?'),(2,'que2','What is your primary school name?'),(3,'que3','What is your wife name?'),(4,'que4','Who is your first teacher?'),(5,'que5','What is your office number?'),(6,'que6','Number of scar at your body?'),(7,'que7','What is your birth place?'),(8,'que8','What is first mobile number?'),(9,'que9','What is your first salary?'),(10,'que10','What is your grand Father name?'),(11,'que11','Did you remember your birth time,tell us?');



/*Table structure for table `psychotestans` */



DROP TABLE IF EXISTS `psychotestans`;



CREATE TABLE `psychotestans` (
  `srno` smallint(6) NOT NULL auto_increment,
  `id` varchar(50) default NULL,
  `que1` varchar(50) default NULL,
  `que2` varchar(50) default NULL,
  `que3` varchar(50) default NULL,
  `que4` varchar(50) default NULL,
  `que5` varchar(50) default NULL,
  `que6` varchar(50) default NULL,
  `que7` varchar(50) default NULL,
  `que8` varchar(50) default NULL,
  `que9` varchar(50) default NULL,
  `que10` varchar(50) default NULL,
  `que11` varchar(50) default NULL,
  PRIMARY KEY  (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;



/*Data for the table `psychotestans` */



insert  into `psychotestans`(`srno`,`id`,`que1`,`que2`,`que3`,`que4`,`que5`,`que6`,`que7`,`que8`,`que9`,`que10`,`que11`) values (1,'123','jhg','jhg','jhg','jh','gjh','gjhg','jhg','jhg','jhg','jhg','jh'),(2,'sf','fsd','sdd','kjhghj','ghj','ghjgjh','ghjg','hjg','hjg','jh','hhj','jhhg'),(3,'jhkk','lkjlk','jlkj','l','lkjlk','l','lklk','lk','ll','kjlk','lk','lllk'),(4,'lklkjlklk','lkjll','lj','lkjl','klj','lkl','kjlk','llk','kl','ll','lkjlk','lkljl'),(5,'lkljlkj','lkljl','klkjlkjlk','lkkjlklkj','klllklk','jljlkjl','llkl','lkl','ljkljl','ljlk','knkkkkkkk','popo'),(6,'jhkjj','kjhkj','jk','jkkj','kjk','kjk','kjkj','jkhk','jkjj','khk','kkj','jkkjh'),(7,'jhjjh','kjlkjk','jlkjlkj','ljlk','jlkjlk','jlkklj','kljkljlk','jklj','lkjlkj','kljkljlk','lkjlkl','jlk'),(8,'lkjlkjl','jlkjk','ljlkjkl','jkl','jlkjkl','klj','klkl','jljlk','kljkl','jkl','jklj','ljkl'),(9,'tushar@gmail.com','12','','','','','','','','','',''),(10,'rama','','','','','','','','','','',''),(11,'rama','zvx','cvvcc','xvc','yfgh','65y','vhgrbg','cvbth','bvcb','ghrnn','afsf','bfgb'),(12,'gana.ga@gmail.com','1111','SFS','Rani','Rani','1111','Hand','Pune','1111111111','1111111','Gana','No');



/*Table structure for table `tbl_file` */



DROP TABLE IF EXISTS `tbl_file`;



CREATE TABLE `tbl_file` (
  `id` int(11) NOT NULL auto_increment,
  `fnm` varchar(50) default NULL,
  `userid` varchar(50) default NULL,
  `attachfile` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



/*Data for the table `tbl_file` */



insert  into `tbl_file`(`id`,`fnm`,`userid`,`attachfile`) values (1,'Mr. q qq q','q','project related basics.doc'),(2,'Ms. chetana gorakf Gorakh','chetana','Tulips.jpg'),(3,NULL,NULL,'New Synopsis.docx'),(4,NULL,NULL,'New Synopsis.docx'),(5,NULL,NULL,'viewonline espn star cricket......................docx');



/*Table structure for table `tbl_file1` */



DROP TABLE IF EXISTS `tbl_file1`;



CREATE TABLE `tbl_file1` (
  `SRNO` int(11) NOT NULL auto_increment,
  `EMAIL` varchar(50) default NULL,
  `CONTACTEMAIL` varchar(50) default NULL,
  `SUBJECT` varchar(20) default NULL,
  `ATTACHFILE` varchar(100) default NULL,
  `MAILTIME` varchar(30) default NULL,
  `IPADDRESS` varchar(30) default NULL,
  `EXTENSION` varchar(20) default NULL,
  `MESSAGE` text,
  PRIMARY KEY  (`SRNO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;



/*Data for the table `tbl_file1` */



insert  into `tbl_file1`(`SRNO`,`EMAIL`,`CONTACTEMAIL`,`SUBJECT`,`ATTACHFILE`,`MAILTIME`,`IPADDRESS`,`EXTENSION`,`MESSAGE`) values (8,'umesh@gmail.com','mona@gmail.com','test','11.txt.enc','Sat May 18 09:24:04 PDT 2013','127.0.0.1','txt','test'),(9,'umesh@gmail.com','umesh@gmail.com','test','11.txt.enc','Sat May 18 09:24:04 PDT 2013','127.0.0.1','txt','test'),(10,'umesh@gmail.com','umesh@gmail.com','test2','ed.txt.enc','Sat May 18 09:26:17 PDT 2013','127.0.0.1','txt','test2');



/*Table structure for table `tbl_inbox` */



DROP TABLE IF EXISTS `tbl_inbox`;



CREATE TABLE `tbl_inbox` (
  `id` int(4) NOT NULL auto_increment,
  `too` varchar(50) default NULL,
  `frm` varchar(50) default NULL,
  `sub` text,
  `msg` tinytext,
  `pdt` varchar(50) default NULL,
  `upf` tinytext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;



/*Data for the table `tbl_inbox` */



insert  into `tbl_inbox`(`id`,`too`,`frm`,`sub`,`msg`,`pdt`,`upf`) values (1,'shilpaanand','q','hiiiii','bbbbb','1/23/10 3:46 PM',NULL),(2,'shilpaanand','q','hp','hp','1/26/10 3:34 PM',NULL),(3,'shilpaanand','q','me sp1','me sp1','2/1/10 12:23 PM',NULL),(4,'shilpaanand','q','g','g','2/1/10 12:38 PM',NULL),(5,'q','shilpaanand','a me sp1','a me sp1','2/1/10 12:41 PM',NULL),(6,'q','shilpaanand','a me sp2','a me sp2','2/1/10 12:47 PM',NULL),(7,'q','shilpaanand','a me sp3','a me sp3','2/1/10 12:47 PM',NULL),(8,'q','shilpaanand','a me sp4','a me sp4','2/1/10 12:48 PM',NULL),(9,'q','shilpaanand','a me sp5','a me sp5','2/1/10 12:48 PM',NULL),(10,'q','shilpaanand','a me sp6','a me sp6','2/1/10 12:48 PM',NULL),(11,'q','shilpaanand','a me sp7','a me sp7','2/1/10 1:17 PM',NULL),(12,'q','shilpaanand','ssssss','sssssssss','8/26/10 5:33 PM','no attachment'),(13,'q','shilpaanand','fff1','fff1','8/26/10 5:34 PM','Copy of feedback.doc'),(14,'q','shilpaanand','hjhjh','jjkjkkjk','8/26/10 5:54 PM','no attachment'),(15,'q','shilpaanand','d','d','8/26/10 6:04 PM','no attachment'),(16,'q','shilpaanand','qqq','qqq','8/26/10 6:05 PM','feedback.doc'),(17,'shilpaanand','q','a','a','11/9/10 1:10 PM',NULL),(18,'shilpaanand','q','dd','dd','11/9/10 4:22 PM',NULL),(19,'shilpaanand','q','dfd','ddd','11/9/10 4:45 PM','Copy (2) of imp html.doc'),(20,'shilpaanand','q','d','d','11/9/10 4:52 PM','multiple_file_upload.zip'),(21,'shilpaanand','q','vbvb','bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb','2/22/11 11:27 AM',NULL),(22,'shilpaanand','q','gg','ggg','2/22/11 12:03 PM',NULL),(23,'shilpaanand','q','hi(too,frm,sub,msg,pdt,upf)','hi(too,frm,sub,msg,pdt,upf)','7/18/11 6:43 PM','null'),(24,'shilpaanand','q','r4','r4','7/18/11 6:48 PM','null'),(25,'q','shilpaanand','SDSDSD','SsXDDSD','2/6/12 5:26 PM','null'),(26,'q','shilpaanand','FDFDF','DFDFDFDF','2/6/12 5:26 PM','null'),(27,'chetana','rinki','hi','gfbh','4/6/13 1:37 PM','null');



/*Table structure for table `tbl_sent` */



DROP TABLE IF EXISTS `tbl_sent`;



CREATE TABLE `tbl_sent` (
  `id` int(4) NOT NULL auto_increment,
  `too` varchar(50) default NULL,
  `sub` text,
  `msg` text,
  `pdt` varchar(50) default NULL,
  `frm` varchar(50) default NULL,
  `upf` tinytext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



/*Data for the table `tbl_sent` */



/*Table structure for table `transection` */



DROP TABLE IF EXISTS `transection`;



CREATE TABLE `transection` (
  `transectionno` int(11) NOT NULL auto_increment,
  `id` varchar(10) default NULL,
  `usertransection` varchar(50) default NULL,
  `trantype` varchar(50) default NULL,
  `amount` varchar(50) default NULL,
  `datetime` varchar(100) default NULL,
  PRIMARY KEY  (`transectionno`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;



/*Data for the table `transection` */



insert  into `transection`(`transectionno`,`id`,`usertransection`,`trantype`,`amount`,`datetime`) values (1,'sbi123','sbi12332','Withdrawal','10000','Tuesday, June 18, 2013 1:16:47 PM'),(2,'sbi123','sbi12333','Withdrawal','2500','Tuesday, June 18, 2013 1:17:9 PM'),(3,'sbi123','sbi12334','Deposite','50000','Tuesday, June 18, 2013 1:17:37 PM'),(4,'sbitus27','sbitus271','Deposite','500000','Saturday, September 6, 2014 4:2:1 PM'),(5,'sbitus27','sbitus272','Deposite','1000000','Saturday, September 6, 2014 4:2:31 PM'),(6,'sbitus27','sbitus273','Withdrawal','5000','Saturday, September 6, 2014 4:2:51 PM'),(7,'sbitus27','sbitus274','Deposite','2500000','Saturday, September 6, 2014 4:4:7 PM'),(8,'sbitus27','sbitus275','Withdrawal','50000','Saturday, September 6, 2014 4:4:49 PM'),(9,'sbitus27','sbitus276','Deposite','200','Saturday, September 6, 2014 4:7:18 PM'),(10,'sbiram29','sbiram291','Deposite','100','Monday, March 9, 2015 4:43:11 PM'),(11,'sbiram29','sbiram292','Deposite','10000','Monday, March 9, 2015 4:44:51 PM'),(12,'sbiram29','sbiram293','Withdrawal','100','Monday, March 9, 2015 4:49:17 PM'),(13,'sbigan33','sbigan331','Deposite','300','Thursday, March 19, 2015 2:26:57 AM');



/*Table structure for table `users` */



DROP TABLE IF EXISTS `users`;



CREATE TABLE `users` (
  `srno` smallint(6) NOT NULL auto_increment,
  `title` varchar(10) default NULL,
  `fname` varchar(50) default NULL,
  `midname` varchar(50) default NULL,
  `lastname` varchar(50) default NULL,
  `moname` varchar(50) default NULL,
  `dob` varchar(50) default NULL,
  `gender` varchar(20) default NULL,
  `married` varchar(20) default NULL,
  `pan` varchar(50) default NULL,
  `aadhar` varchar(50) default NULL,
  `address` varchar(200) default NULL,
  `mono` varchar(20) default NULL,
  `phno` varchar(20) default NULL,
  `email` varchar(30) default NULL,
  `country` varchar(20) default NULL,
  `state` varchar(20) default NULL,
  `district` varchar(20) default NULL,
  `taluka` varchar(20) default NULL,
  `pincode` varchar(10) default NULL,
  `loginname` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `userid` varchar(20) default NULL,
  `authentication` varchar(10) default NULL,
  `photo` blob,
  `id` varchar(20) default NULL,
  `accountno` varchar(20) default NULL,
  `bal` varchar(20) default NULL,
  `count` varchar(20) default NULL,
  `testquestion` varchar(20) default NULL,
  `test1` varchar(10) default NULL,
  `test2` varchar(10) default NULL,
  PRIMARY KEY  (`srno`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;



/*Data for the table `users` */



insert  into `users`(`srno`,`title`,`fname`,`midname`,`lastname`,`moname`,`dob`,`gender`,`married`,`pan`,`aadhar`,`address`,`mono`,`phno`,`email`,`country`,`state`,`district`,`taluka`,`pincode`,`loginname`,`password`,`userid`,`authentication`,`photo`,`id`,`accountno`,`bal`,`count`,`testquestion`,`test1`,`test2`) values (1,'Mr.','Ram','V','Deshamukha','Pooja','10.7.1964','male','no','KKOIU9965K','12547469854758','Nagpur','6654725487','0712666248','ram.bharo@ymail.com','India','Maharashtra','Nagpur','Nagpur','441258','ram','678','0000000000','old',NULL,NULL,NULL,NULL,NULL,NULL,'fail',NULL),(2,'Ms.','Komal','R','Varma','Sona','3.3.1990','female','no','PDYTE5598D','54712546985712','Gokulpeth Nagpur.','7754869574','0712266354','komal.komal@gmail.com','India','Maharashtra','Nagpur','Nagpur','442685','12300','678','0000000000','block',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Mr.','Roshan','L','Rana','Sonu','12.8.1991','male','yes','PJSHD326541V','12547854695874','Nagpur','5478412458','07122669854','Roshan.rane@gmail.com','India','Maharashtra','Nagpur','Nagpur','441256','roshan','678','0000000000','block',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Mr.','Roshan','L','Rana','Sonu','12.8.1991','male','yes','PJSHD326541V','12547854695874','Nagpur','5478412458','07122669854','Roshan.rane@gmail.com','India','Maharashtra','Nagpur','Nagpur','441256','Roshan.rane@gmail.com','678','0000000000','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Mr.','Shayam','F','Gore','Rani','4.4.1996','male','yes','GHRID3652N','332211446548','Nagpur','5214789658','07124589654','sumit@gmail.com','India','Maharashtra','Nagpur','Nagpur','441523','sumit@gmail.com','678','0000000000','new',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Mr.','Ram','V','Rana','Sonu','8.12.1998','male','yes','PDYTE5598D','12547469854758','Nagpur','7709964064','07122669854','ram.bharo@ymail.com','India','Maharashtra','Nagpur','Nagpur','441258','ram.bharo@ymail.com','678','0000000000','block','O:IntruderVersion0.2uildwebDSC_0479.JPG',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','ch','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123gh','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123df','678','0000000000','block','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123ty','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123uy','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123ui','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123rt','678','0000000000','block','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123se','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123io','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123mn','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123hy','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123kl','678','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123as','67','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123','678','0000000000','old','O:IntruderVersion0.2uildwebssd.jpg','sbi123','sbi20','50500','34','yes','fail','fail'),(21,'Mrs.','yfvtf','fgg','ggffd','hhhh','2.1.2012','male','yes','kkjk55h','544','yty','5456','64654','hy','India','Andhra Pradesh','ygy','khgj','3216','123fr','6','0000000000','new','O:IntruderVersion0.2uildwebssd.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Mr.','abc','abc','abc','abc','2.2.2012','male','yes','123asd123asd','123123123123','abc','1231231231','123123213','abc.abc@abc.abc','India','Maharashtra','abc','abc','123123','abc123','678','9255032370','new','O:IDSIntruderVersion0.2uildwebxp2009.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Mr.','qwe','qwe','qwe','qwe','18.2.1997','male','yes','qweqwe','3213132','qweqwewqe','32132132132','31312313213','asd.asd@as.asd','India','Jharkhand','qweqwe','qweqweqw','32123','asdasdasd','djr','3310070244','new','O:IDSIntruderVersion0.2uildwebxp2009.png','sbi22','sbi22','000','000','no',NULL,NULL),(24,'Mr.','qwe','qwe','qwee','qwe','1.3.2012','male','yes','qwqweqwe','2132132','qweqwe','12323','231232','asd.asd@as.asd','India','Chandigarh','qweqwe','qweqwe','231213','qweqwe','djr','1696638523','new','O:IDSIntruderVersion0.2uildwebxp2009.png','sbi231','sbi231','000','000','no',NULL,NULL),(25,'Mr.','qwe','qwe','qwe','qwe','17.4.1999','male','yes','qwewqe','2132123','qweqwe','32132','21321312','asd.asd@as.asd','India','Karnataka','qwewqe','qweqw','32132','qweqweq','djr','1038178335','new','O:IDSIntruderVersion0.2uildwebxp2009.png','sbiqwe25','sbi25','000','000','no',NULL,NULL),(26,'Mr.','qwe','qwe','qwe','qwe','18.2.1997','male','yes','qwe123','12132132','qwew','32132132','321323232','kjh.g@tg.y','India','Andaman and Nicobar','qweqwe','qqweqwe','1231123','qweqweqq','djr','9195108717','new','O:IDSIntruderVersion0.2uildwebxp2009.png','sbiqwe26','sbi26','000','000','no','fail','fail'),(27,'Mr.','Shyam','S','rao','leela','4.3.1999','male','no','45697796','124654','sxsachgjuyg','7894561433','0712253288','tushar@gmail.com','India','Maharashtra','nagpur','nagpur','440030','tushar@gmail.com','gh678','7499299977','old','C:UsersPRAFULDesktopIntruderVersion0.2uildwebWhyNIR_is_needed.jpg','sbitus27','sbi27','3945200','6','yes','fail','fail'),(28,'Mr.','somil','Ram','Deshmukh','fhdhh','4.2.2013','male','yes','366363','58','eyreyyyer','47478','45474','somildeshmukh@gmail.com','India','Karnataka','sg','shhsdhh','47377','somil','gif678','8963142455','old','C:UsersPRAFULDesktopMonitoringuildweb','sbisom28','sbi28','000','000','no','fail','fail'),(29,'Mr.','Shyam','S','rao','leela','17.3.1996','female','yes','45697796','124654','sadfsadfcasz','24343423','0712253288','rama@gmail.com','India','Assam','nagpur','nagpur','440030','rama','enzn','0000000000','old','C:UsersPRAFULDesktopMonitoringuildweb','sbiram29','sbi29','10000','3','yes','fail','fail'),(30,'Mr.','qqqq','qqqq','qqqq','qqqq','4.7.2010','male','no','asdasdsd','43443323343','wefasdvcasdvc','243434343','3444323','gdf.sdf@df.dfg','India','Daman and Diu','sdf','sdfsdf','243433','gdf.sdf@df.dfg','dddd','3613589847','old','C:PrafulDesktopFogComputinguildweb','sbigdf30','sbi30','000','000','no','fail','fail'),(31,'Mr.','Amit','Ashok','Kukde','Vandana','18.6.1989','male','no','123456789','9422834327','Tumsar','9422834327','07183232344','a.kukde01@gmail.com','India','Maharashtra','bhandara','Tumsar','441912','a.kukde01@gmail.com','4977389872','7801424355','old','C:PrafulDesktopFogComputinguildweb','sbia.k31','sbi31','000','000','no','fail','fail'),(32,'Mr.','Satish','Dipak','Sahare','Kavita','13.3.1992','male','no','1234','5678','sindewahi','8600314487','8600314487','satishshahare00@gmail.com','India','Maharashtra','chandrapur','sindewahi','441221','satishshahare00@gmail.com','678901','2051733446','old','C:PrafulDesktopFogComputinguildweb','sbisat32','sbi32','000','000','no','fail','fail'),(33,'Mr.','Gana','Gana','Gao','Sing','3.6.2009','male','no','rfg454rf4r','345435434453','Nagpur','2321548592','07125446985','gana.ga@gmail.com','India','Maharashtra','Nagpur','nagpur','440111','gana.ga@gmail.com','enzn','7927295843','block','C:PrafulDesktopFogComputinguildweb','sbigan33','sbi33','300','1','yes','fail','fail');




use fogcomputing;
show tables;

