# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: db_stuman
# ------------------------------------------------------
# Server version 5.0.67-community-nt

#
# Table structure for table course
#

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `course` VALUES ('402881e625a9b5300125a9bcf8820005','�ߵȴ���');
INSERT INTO `course` VALUES ('402881e625a9cca50125a9daf58d0001','��ѧӢ��');
INSERT INTO `course` VALUES ('402881e625a9cca50125a9db0dcc0002','��ѧ����');
INSERT INTO `course` VALUES ('402881e625a9cca50125a9db2a060003','���������');
INSERT INTO `course` VALUES ('402881e625a9cca50125a9db59f10004','��ѧ����');

#
# Table structure for table courseschedule
#

DROP TABLE IF EXISTS `courseschedule`;
CREATE TABLE `courseschedule` (
  `id` varchar(255) NOT NULL,
  `semester` varchar(255) default NULL,
  `score` float default NULL,
  `teamId` varchar(255) default NULL,
  `courseId` varchar(255) default NULL,
  `teacherId` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK702257F2A3B93E2E` (`courseId`),
  KEY `FK702257F249E8BD72` (`teamId`),
  KEY `FK702257F2D2169C62` (`teacherId`),
  KEY `FK702257F288FF255F` (`courseId`),
  KEY `FK702257F2E130BCE3` (`teamId`),
  KEY `FK702257F2958D9B51` (`teacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `courseschedule` VALUES ('402881e625a9c1a40125a9c225170001','1',6,'402881e625a9b5300125a9b824170001','402881e625a9b5300125a9bcf8820005','402881e625a9b5300125a9bdeffd0006');
INSERT INTO `courseschedule` VALUES ('402881e625a9cca50125a9dd042a0008','1',4,'402881e625a9b5300125a9b824170001','402881e625a9cca50125a9daf58d0001','402881e625a9cca50125a9dbb4180005');
INSERT INTO `courseschedule` VALUES ('402881e625a9cca50125a9dd25b70009','1',6,'402881e625a9b5300125a9b824170001','402881e625a9cca50125a9db0dcc0002','402881e625a9cca50125a9dbf80f0006');
INSERT INTO `courseschedule` VALUES ('402881e625a9cca50125a9dd4ea4000a','1',2,'402881e625a9b5300125a9b824170001','402881e625a9cca50125a9db2a060003','402881e625a9cca50125a9dc213b0007');
INSERT INTO `courseschedule` VALUES ('402881e625a9cca50125a9ddf9a0000c','1',2,'402881e625a9b5300125a9b824170001','402881e625a9cca50125a9db59f10004','402881e625a9cca50125a9dda259000b');
INSERT INTO `courseschedule` VALUES ('402881e625a9cca50125a9e4b263000d','1',5,'402881e625a9b5300125a9b87b490002','402881e625a9b5300125a9bcf8820005','402881e625a9b5300125a9bdeffd0006');
INSERT INTO `courseschedule` VALUES ('402881e625a9cca50125a9e4e30b000e','2',6,'402881e625a9b5300125a9bc70c50003','402881e625a9b5300125a9bcf8820005','402881e625a9b5300125a9bdeffd0006');

#
# Table structure for table mark
#

DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark` (
  `id` varchar(255) NOT NULL,
  `score` float default NULL,
  `studentId` varchar(255) default NULL,
  `courseId` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK247AEDA3B93E2E` (`courseId`),
  KEY `FK247AED5D5BD6D4` (`studentId`),
  KEY `FK247AED88FF255F` (`courseId`),
  KEY `FK247AED20D2D5C3` (`studentId`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `mark` VALUES ('1',99,'402881e625a9cca50125a9ed31fe000f','402881e625a9b5300125a9bcf8820005');
INSERT INTO `mark` VALUES ('2',85,'402881e625a9cca50125a9ed31fe000f','402881e625a9cca50125a9daf58d0001');
INSERT INTO `mark` VALUES ('3',65,'402881e625a9cca50125a9ed31fe000f','402881e625a9cca50125a9db0dcc0002');
INSERT INTO `mark` VALUES ('4',78,'402881e625a9cca50125a9ed31fe000f','402881e625a9cca50125a9db2a060003');
INSERT INTO `mark` VALUES ('5',68,'402881e625a9cca50125a9ed31fe000f','402881e625a9cca50125a9db59f10004');
INSERT INTO `mark` VALUES ('6',74,'402881e625a9cca50125a9edda1e0010','402881e625a9b5300125a9bcf8820005');
INSERT INTO `mark` VALUES ('7',75,'402881e625a9cca50125a9edda1e0010','402881e625a9cca50125a9daf58d0001');
INSERT INTO `mark` VALUES ('8',76,'402881e625a9cca50125a9edda1e0010','402881e625a9cca50125a9db0dcc0002');

#
# Table structure for table student
#

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `enrollDate` varchar(255) default NULL,
  `birthday` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `teamId` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKF3371A1B49E8BD72` (`teamId`),
  KEY `FKF3371A1BE130BCE3` (`teamId`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `student` VALUES ('402881e625a9cca50125a9ed31fe000f','0509302-01','��С��','2005��9��','1985��5��12��','��','402881e625a9b5300125a9b824170001');
INSERT INTO `student` VALUES ('402881e625a9cca50125a9edda1e0010','0509302-02','��ϼ','2005��9��','1986��1��2��','Ů','402881e625a9b5300125a9b824170001');
INSERT INTO `student` VALUES ('402881e625a9cca50125a9ee962d0011','0509302-03','���','2005��9��','1988��1��1��','��','402881e625a9b5300125a9b824170001');

#
# Table structure for table teacher
#

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `teacher` VALUES ('402881e625a9b5300125a9bdeffd0006','����');
INSERT INTO `teacher` VALUES ('402881e625a9cca50125a9dbb4180005','��ʱ��');
INSERT INTO `teacher` VALUES ('402881e625a9cca50125a9dbf80f0006','���¿�');
INSERT INTO `teacher` VALUES ('402881e625a9cca50125a9dc213b0007','��ר��');
INSERT INTO `teacher` VALUES ('402881e625a9cca50125a9dda259000b','�Ի�');

#
# Table structure for table teacher_course
#

DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course` (
  `courseId` varchar(255) NOT NULL,
  `teacherId` varchar(255) NOT NULL,
  PRIMARY KEY  (`teacherId`,`courseId`),
  KEY `FK40C04F18A3B93E2E` (`courseId`),
  KEY `FK40C04F18D2169C62` (`teacherId`),
  KEY `FK40C04F1888FF255F` (`courseId`),
  KEY `FK40C04F18958D9B51` (`teacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `teacher_course` VALUES ('402881e625a9b5300125a9bcf8820005','402881e625a9b5300125a9bdeffd0006');
INSERT INTO `teacher_course` VALUES ('402881e625a9cca50125a9db2a060003','402881e625a9b5300125a9bdeffd0006');
INSERT INTO `teacher_course` VALUES ('402881e625a9cca50125a9db59f10004','402881e625a9b5300125a9bdeffd0006');
INSERT INTO `teacher_course` VALUES ('402881e625a9cca50125a9daf58d0001','402881e625a9cca50125a9dbb4180005');
INSERT INTO `teacher_course` VALUES ('402881e625a9cca50125a9db0dcc0002','402881e625a9cca50125a9dbf80f0006');
INSERT INTO `teacher_course` VALUES ('402881e625a9cca50125a9db2a060003','402881e625a9cca50125a9dc213b0007');
INSERT INTO `teacher_course` VALUES ('402881e625a9cca50125a9db59f10004','402881e625a9cca50125a9dda259000b');

#
# Table structure for table team
#

DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `team` VALUES ('402881e625a9b5300125a9b824170001','0509302');
INSERT INTO `team` VALUES ('402881e625a9b5300125a9b87b490002','0509301');
INSERT INTO `team` VALUES ('402881e625a9b5300125a9bc70c50003','0509303');
INSERT INTO `team` VALUES ('402881e625a9b5300125a9bc880b0004','0509304');

#
# Table structure for table user
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
INSERT INTO `user` VALUES ('1','admin','admin');
INSERT INTO `user` VALUES ('402881e625a9b5300125a9bdeffd0006','abc','12345');

#
#  Foreign keys for table courseschedule
#

ALTER TABLE `courseschedule`
ADD CONSTRAINT `FK702257F249E8BD72` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FK702257F288FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK702257F2958D9B51` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `FK702257F2A3B93E2E` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK702257F2D2169C62` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `FK702257F2E130BCE3` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`);

#
#  Foreign keys for table mark
#

ALTER TABLE `mark`
ADD CONSTRAINT `FK247AED20D2D5C3` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `FK247AED5D5BD6D4` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `FK247AED88FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK247AEDA3B93E2E` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`);

#
#  Foreign keys for table student
#

ALTER TABLE `student`
ADD CONSTRAINT `FKF3371A1B49E8BD72` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FKF3371A1BE130BCE3` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`);

#
#  Foreign keys for table teacher_course
#

ALTER TABLE `teacher_course`
ADD CONSTRAINT `FK40C04F1888FF255F` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK40C04F18958D9B51` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `FK40C04F18A3B93E2E` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK40C04F18D2169C62` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
