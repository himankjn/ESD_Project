-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: college2
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `capacity` int NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `credits` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `term` int NOT NULL,
  `year` int NOT NULL,
  `faculty_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_pbtxfti950chth4yw1wafaf9f` (`course_code`),
  KEY `FKgre2fpr1ld8i5d30y1x3frxsd` (`faculty_id`),
  CONSTRAINT `FKgre2fpr1ld8i5d30y1x3frxsd` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,10,'SS',4,'Beginner','Software System',1,2,101),(2,20,'SPE',4,'Beginner','Software Production Engineering',2,2,101),(3,5,'AA',4,'Advance','Advance Algorithm',2,1,102),(4,15,'ML',4,'Beginner','Machine Learning',1,2,102),(5,30,'NC',4,'Beginner','Networking & Comunication',2,1,102),(6,10,'ST',4,'Advance','Software Testing',1,1,102),(7,20,'SDP',4,'Beginner','Software Design Practices',1,1,102),(8,5,'VR',4,'Advance','Visual Recognition',2,2,103),(9,10,'GT',4,'Beginner','Graph Theory',2,1,103),(10,20,'CC',4,'Beginner','Cloud Computing',2,2,103);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_schedule`
--

DROP TABLE IF EXISTS `course_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `building` varchar(255) DEFAULT NULL,
  `day` varchar(255) NOT NULL,
  `room` int NOT NULL,
  `time` time NOT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKilcp5a4r75j842fd6muq73cu2` (`course_id`),
  CONSTRAINT `FKilcp5a4r75j842fd6muq73cu2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_schedule`
--

LOCK TABLES `course_schedule` WRITE;
/*!40000 ALTER TABLE `course_schedule` DISABLE KEYS */;
INSERT INTO `course_schedule` VALUES (1,'R','MON',103,'09:00:00',7),(2,'R','WED',103,'09:00:00',7),(3,'R','FRI',103,'14:00:00',7),(4,'A','MON',106,'11:00:00',6),(5,'A','TUE',106,'09:00:00',6),(6,'R','THU',203,'09:00:00',1),(7,'R','TUE',203,'09:00:00',1),(8,'A','MON',303,'09:00:00',4),(9,'A','WED',303,'11:00:00',4),(10,'A','FRI',303,'14:00:00',4),(11,'R','TUE',104,'16:00:00',3),(12,'R','THU',104,'16:00:00',3),(13,'A','MON',206,'11:00:00',5),(14,'A','WED',206,'11:00:00',5),(15,'A','FRI',206,'11:00:00',5),(16,'R','MON',306,'14:00:00',2),(17,'R','TUE',306,'14:00:00',2),(18,'R','FRI',306,'16:00:00',2),(19,'A','MON',101,'09:00:00',8),(20,'A','THU',101,'11:00:00',8),(21,'A','FRI',101,'14:00:00',8),(22,'A','MON',101,'11:00:00',8),(23,'A','MON',101,'16:00:00',10),(24,'A','WED',101,'09:00:00',10),(25,'R','MON',201,'09:00:00',9),(26,'R','TUE',201,'11:00:00',9),(27,'R','TUE',201,'14:00:00',9),(28,'R','WED',201,'11:00:00',9),(29,'R','THU',201,'09:00:00',9),(30,'R','FRI',201,'14:00:00',9),(31,'R','FRI',201,'16:00:00',9);
/*!40000 ALTER TABLE `course_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_specialisation`
--

DROP TABLE IF EXISTS `course_specialisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_specialisation` (
  `course_id` int NOT NULL,
  `specialisation_id` int NOT NULL,
  KEY `FKfhjtsy3vn97yhjqvpttretl9m` (`specialisation_id`),
  KEY `FKeupap6r5ry49t6ocy78qt4b6b` (`course_id`),
  CONSTRAINT `FKeupap6r5ry49t6ocy78qt4b6b` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKfhjtsy3vn97yhjqvpttretl9m` FOREIGN KEY (`specialisation_id`) REFERENCES `specialisation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_specialisation`
--

LOCK TABLES `course_specialisation` WRITE;
/*!40000 ALTER TABLE `course_specialisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_specialisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photograph_path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_eivw7fxg6ss3qdh80ew3ol3u9` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (101,'Kaveri@gmail.com','kaveri','kar','password','NULL','Mrs.'),(102,'Anand@gmail.com','Anand','sharma','password','NULL','Mr.'),(103,'Harish@gmail.com','Harish','Singh','password','NULL','Mr.');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialisation`
--

DROP TABLE IF EXISTS `specialisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialisation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `credits_required` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `specialisation_code` int NOT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qa1d5o5g985jduyqjjlltmm87` (`specialisation_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialisation`
--

LOCK TABLES `specialisation` WRITE;
/*!40000 ALTER TABLE `specialisation` DISABLE KEYS */;
/*!40000 ALTER TABLE `specialisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cgpa` float DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `graduationYear` int DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `photograph_path` varchar(255) DEFAULT NULL,
  `rollnumber` int NOT NULL,
  `totalCredits` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fe0i52si7ybu0wjedj6motiim` (`email`),
  UNIQUE KEY `UK_5i8hrwitxy3in6eejtcgysoqu` (`rollnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1000,8.2,'Abhishek@gmail.com','Abhishek',2023,'Tandon','NULL',5,16),(1001,9.2,'Gaurav@gmail.com','Gaurav',2024,'Singh','NULL',12,24),(1002,7.8,'Rahul@gmail.com','Rahul',2025,'gill','NULL',25,20),(1003,8.6,'Raman@gmail.com','Raman',2023,'kapoor','NULL',30,16),(1004,9.2,'Dheer@gmail.com','Dheer',2023,'Varyani','NULL',14,20),(1005,7.4,'Ranjan@gmail.com','Ranjan',2023,'Mukherjee','NULL',28,16),(1006,8,'Gopal@gmail.com','Gopal',2025,'Agrawal','NULL',13,16),(1007,9,'shubhanshu@gmail.com','Shubhanshu',2024,'Markam','NULL',48,16);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grade` varchar(255) DEFAULT NULL,
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKejrkh4gv8iqgmspsanaji90ws` (`course_id`),
  KEY `FKq7yw2wg9wlt2cnj480hcdn6dq` (`student_id`),
  CONSTRAINT `FKejrkh4gv8iqgmspsanaji90ws` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKq7yw2wg9wlt2cnj480hcdn6dq` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course`
--

LOCK TABLES `student_course` WRITE;
/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
INSERT INTO `student_course` VALUES (500,'A+',1,1001),(501,'A',1,1002),(502,'A-',1,1003),(503,'B',1,1004),(504,'B+',2,1005),(505,'B+',2,1006),(506,'C',2,1007),(507,'A',2,1000),(508,'A+',2,1001),(509,'A-',3,1002),(510,'B+',3,1003),(511,'B-',3,1004),(512,'C',4,1005),(513,'B',4,1006),(514,'B',4,1007),(515,'A',5,1001),(516,'A+',5,1002),(517,'B',6,1003),(518,'A-',6,1004),(519,'A+',6,1005),(520,'B',6,1006),(521,'C',6,1007),(522,'C',7,1000),(523,'B+',7,1001),(524,'A-',7,1002),(525,'B+',7,1003),(526,'C',8,1004),(527,'B+',8,1005),(528,'A-',8,1006),(529,'C',8,1007),(530,'A-',9,1000),(531,'B',9,1001),(532,'C',9,1002),(533,'C',9,1003),(534,'B',10,1004),(535,'B+',10,1005),(536,'C',10,1006),(537,'C',10,1007);
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-21 13:09:16
