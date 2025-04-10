-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: medicare
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `AppointmentID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `TimeSlot` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AppointmentID`),
  KEY `FK_Patient` (`PatientID`),
  KEY `FK_Doctor` (`DoctorID`),
  CONSTRAINT `FK_Doctor` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`) ON DELETE CASCADE,
  CONSTRAINT `FK_Patient` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,1,1,'2025-04-01','10:00-10:30','Scheduled'),(2,2,3,'2025-04-02','11:00-11:30','Completed'),(3,3,5,'2025-04-03','09:00-09:30','Scheduled'),(4,4,7,'2025-04-04','10:30-11:00','Cancelled'),(5,5,2,'2025-04-05','14:00-14:30','Scheduled'),(6,6,6,'2025-04-06','13:00-13:30','Completed'),(7,7,9,'2025-04-07','15:00-15:30','Scheduled'),(8,8,8,'2025-04-08','16:00-16:30','Scheduled'),(9,9,4,'2025-04-09','10:00-10:30','Cancelled'),(10,10,10,'2025-04-10','11:30-12:00','Scheduled'),(11,11,12,'2025-04-11','12:30-13:00','Scheduled'),(12,12,14,'2025-04-12','09:30-10:00','Completed'),(13,13,16,'2025-04-13','14:30-15:00','Scheduled'),(14,14,11,'2025-04-14','15:30-16:00','Completed'),(15,15,13,'2025-04-15','13:30-14:00','Scheduled'),(16,16,15,'2025-04-16','10:30-11:00','Cancelled'),(17,17,17,'2025-04-17','11:00-11:30','Scheduled'),(18,18,19,'2025-04-18','09:00-09:30','Completed'),(19,19,18,'2025-04-19','14:00-14:30','Scheduled'),(20,20,20,'2025-04-20','10:00-10:30','Scheduled'),(21,21,21,'2025-04-21','12:00-12:30','Cancelled'),(22,22,22,'2025-04-22','11:30-12:00','Scheduled'),(23,23,23,'2025-04-23','13:00-13:30','Completed'),(24,24,24,'2025-04-24','15:00-15:30','Scheduled'),(25,25,25,'2025-04-25','09:30-10:00','Scheduled'),(26,26,26,'2025-04-26','10:30-11:00','Cancelled'),(27,27,27,'2025-04-27','11:00-11:30','Scheduled'),(28,28,28,'2025-04-28','14:00-14:30','Completed'),(29,29,29,'2025-04-29','13:30-14:00','Scheduled'),(30,30,30,'2025-04-30','15:30-16:00','Scheduled');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `BillID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `DateIssued` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`BillID`),
  KEY `FK_PID` (`PatientID`),
  CONSTRAINT `FK_PID` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (1,1,2500.00,'2025-04-01','Paid'),(2,2,1800.50,'2025-04-02','Unpaid'),(3,3,3200.00,'2025-04-03','Paid'),(4,4,1500.75,'2025-04-04','Pending'),(5,5,2100.00,'2025-04-05','Paid'),(6,6,3000.00,'2025-04-06','Unpaid'),(7,7,2700.00,'2025-04-07','Paid'),(8,8,2200.50,'2025-04-08','Paid'),(9,9,1950.00,'2025-04-09','Pending'),(10,10,3100.00,'2025-04-10','Paid'),(11,11,2600.00,'2025-04-11','Paid'),(12,12,1750.00,'2025-04-12','Unpaid'),(13,13,3300.00,'2025-04-13','Paid'),(14,14,2900.75,'2025-04-14','Paid'),(15,15,1450.00,'2025-04-15','Pending'),(16,16,2050.00,'2025-04-16','Paid'),(17,17,2500.00,'2025-04-17','Unpaid'),(18,18,3100.25,'2025-04-18','Paid'),(19,19,2800.00,'2025-04-19','Pending'),(20,20,1700.00,'2025-04-20','Paid'),(21,21,1900.00,'2025-04-21','Unpaid'),(22,22,2250.00,'2025-04-22','Paid'),(23,23,2400.00,'2025-04-23','Pending'),(24,24,2650.00,'2025-04-24','Paid'),(25,25,2100.00,'2025-04-25','Unpaid'),(26,26,2900.00,'2025-04-26','Paid'),(27,27,3100.00,'2025-04-27','Paid'),(28,28,1600.00,'2025-04-28','Pending'),(29,29,2500.00,'2025-04-29','Paid'),(30,30,1950.00,'2025-04-30','Unpaid'),(31,14,6900.75,'2025-08-24','Paid');
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `DepartmentID` int NOT NULL AUTO_INCREMENT,
  `DeptName` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Cardiology','Building A - 1st Floor'),(2,'Neurology','Building A - 2nd Floor'),(3,'Orthopedics','Building B - Ground Floor'),(4,'Pediatrics','Building B - 1st Floor'),(5,'General Medicine','Building C - 1st Floor'),(6,'Radiology','Building C - Basement'),(7,'Oncology','Building D - 2nd Floor'),(8,'Dermatology','Building D - 1st Floor'),(9,'ENT','Building E - Ground Floor'),(10,'Gynecology','Building E - 2nd Floor'),(11,'Urology','Building F - 1st Floor'),(12,'Gastroenterology','Building F - 2nd Floor'),(13,'Pulmonology','Building G - 1st Floor'),(14,'Nephrology','Building G - 2nd Floor'),(15,'Endocrinology','Building H - 1st Floor'),(16,'Psychiatry','Building H - 2nd Floor'),(17,'Rheumatology','Building I - Ground Floor'),(18,'Ophthalmology','Building I - 1st Floor'),(19,'Pathology','Building J - Basement'),(20,'Anesthesiology','Building J - 1st Floor'),(21,'Emergency','Main Block - Ground Floor'),(22,'ICU','Main Block - 2nd Floor'),(23,'Surgery','Main Block - Operation Theater Complex'),(24,'Dental','Annex Block - 1st Floor'),(25,'Physiotherapy','Annex Block - Ground Floor'),(26,'Nutrition & Dietetics','Annex Block - 2nd Floor'),(27,'Forensic Medicine','Building K - Basement'),(28,'Infectious Diseases','Building L - Isolation Ward'),(29,'Hematology','Building M - 1st Floor'),(30,'Rehabilitation','Building N - Ground Floor');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `DoctorID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Specialty` varchar(100) DEFAULT NULL,
  `Contact` varchar(15) DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  PRIMARY KEY (`DoctorID`),
  KEY `FK_Dept` (`DepartmentID`),
  CONSTRAINT `FK_Dept` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Asha Mehta','Cardiologist','9123456780',1),(2,'Dr. Ramesh Rao','Neurologist','9123456781',2),(3,'Dr. Sneha Pillai','Orthopedic Surgeon','9123456782',3),(4,'Dr. Kunal Verma','Pediatrician','9123456783',4),(5,'Dr. Neha Sharma','General Physician','9123456784',5),(6,'Dr. Ajay Patel','Cardiologist','9123456785',1),(7,'Dr. Priya Iyer','Neurologist','9123456786',2),(8,'Dr. Manish Desai','Orthopedic Surgeon','9123456787',3),(9,'Dr. Divya Kapoor','Pediatrician','9123456788',4),(10,'Dr. Rahul Singh','General Physician','9123456789',5),(11,'Dr. Tanvi Joshi','Cardiologist','9123456790',1),(12,'Dr. Vikram Reddy','Neurologist','9123456791',2),(13,'Dr. Anjali Roy','Orthopedic Surgeon','9123456792',3),(14,'Dr. Rohit Malhotra','Pediatrician','9123456793',4),(15,'Dr. Sheetal Nair','General Physician','9123456794',5),(16,'Dr. Tarun Gupta','Cardiologist','9123456795',1),(17,'Dr. Kavita Menon','Neurologist','9123456796',2),(18,'Dr. Yash Tiwari','Orthopedic Surgeon','9123456797',3),(19,'Dr. Poonam Das','Pediatrician','9123456798',4),(20,'Dr. Karan Bansal','General Physician','9123456799',5),(21,'Dr. Smita Sen','Cardiologist','9123456800',1),(22,'Dr. Akash Dubey','Neurologist','9123456801',2),(23,'Dr. Ritu Saxena','Orthopedic Surgeon','9123456802',3),(24,'Dr. Abhay Khurana','Pediatrician','9123456803',4),(25,'Dr. Meenakshi Luthra','General Physician','9123456804',5),(26,'Dr. Harsh Rawat','Cardiologist','9123456805',1),(27,'Dr. Nidhi Agarwal','Neurologist','9123456806',2),(28,'Dr. Arvind Jain','Orthopedic Surgeon','9123456807',3),(29,'Dr. Sonal Chauhan','Pediatrician','9123456808',4),(30,'Dr. Gaurav Mishra','General Physician','9123456809',5);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `PatientID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Address` text,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `DateAdmitted` date DEFAULT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Aarav Mehta','Male','1990-03-14','9876543210','Delhi, India','O+','2025-03-01'),(2,'Priya Sharma','Female','1985-06-21','9876543211','Mumbai, India','A+','2025-03-02'),(3,'Rohit Verma','Male','1992-11-30','9876543212','Bangalore, India','B+','2025-03-03'),(4,'Sneha Kapoor','Female','1995-01-17','9876543213','Chennai, India','AB+','2025-03-04'),(5,'Amit Joshi','Male','1988-08-10','9876543214','Pune, India','O-','2025-03-05'),(6,'Neha Singh','Female','1991-02-25','9876543215','Kolkata, India','A-','2025-03-06'),(7,'Vikram Rao','Male','1983-05-19','9876543216','Hyderabad, India','B-','2025-03-07'),(8,'Riya Das','Female','1996-07-07','9876543217','Ahmedabad, India','O+','2025-03-08'),(9,'Siddharth Jain','Male','1987-12-01','9876543218','Jaipur, India','A+','2025-03-09'),(10,'Pooja Nair','Female','1993-09-12','9876543219','Lucknow, India','B+','2025-03-10'),(11,'Karan Malhotra','Male','1990-10-22','9876543220','Bhopal, India','AB-','2025-03-11'),(12,'Ananya Roy','Female','1989-04-18','9876543221','Patna, India','O+','2025-03-12'),(13,'Manish Agarwal','Male','1982-06-09','9876543222','Nagpur, India','A-','2025-03-13'),(14,'Divya Iyer','Female','1994-03-05','9876543223','Surat, India','B-','2025-03-14'),(15,'Arjun Khanna','Male','1997-07-28','9876543224','Thane, India','O+','2025-03-15'),(16,'Meera Pillai','Female','1990-05-23','9876543225','Agra, India','AB+','2025-03-16'),(17,'Rajat Tiwari','Male','1986-01-11','9876543226','Nashik, India','O-','2025-03-17'),(18,'Ishita Shah','Female','1992-08-14','9876543227','Kanpur, India','A+','2025-03-18'),(19,'Dev Patel','Male','1984-03-27','9876543228','Vijayawada, India','B+','2025-03-19'),(20,'Tanya Mishra','Female','1998-02-06','9876543229','Ludhiana, India','AB-','2025-03-20'),(21,'Nikhil Reddy','Male','1991-06-15','9876543230','Coimbatore, India','O+','2025-03-21'),(22,'Shweta Yadav','Female','1993-11-03','9876543231','Indore, India','A-','2025-03-22'),(23,'Harsh Vardhan','Male','1985-12-22','9876543232','Vadodara, India','B-','2025-03-23'),(24,'Kritika Sehgal','Female','1990-09-16','9876543233','Guwahati, India','O+','2025-03-24'),(25,'Saurabh Deshmukh','Male','1996-04-19','9876543234','Rajkot, India','AB+','2025-03-25'),(26,'Lavanya Rao','Female','1988-10-29','9876543235','Amritsar, India','O-','2025-03-26'),(27,'Yash Mittal','Male','1995-07-13','9876543236','Ranchi, India','A+','2025-03-27'),(28,'Pallavi Sinha','Female','1992-05-02','9876543237','Jodhpur, India','B+','2025-03-28'),(29,'Rahul Chauhan','Male','1983-08-08','9876543238','Gwalior, India','AB-','2025-03-29'),(30,'Simran Kaur','Female','1994-01-30','9876543239','Shillong, India','O+','2025-03-30'),(31,'Amith Khan','Male','1999-08-10','9876542584','Pune, India','O+','2025-05-05');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `StaffID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Role` varchar(100) DEFAULT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  PRIMARY KEY (`StaffID`),
  KEY `FK_DeptID` (`DepartmentID`),
  CONSTRAINT `FK_DeptID` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Anita Deshmukh','Nurse','9123456701',1),(2,'Ravi Shankar','Receptionist','9123456702',2),(3,'Meera Kapoor','Lab Technician','9123456703',3),(4,'Sohan Mehta','Pharmacist','9123456704',4),(5,'Lata Iyer','Billing Clerk','9123456705',5),(6,'Tarun Yadav','Security Guard','9123456706',6),(7,'Nisha Verma','Nurse','9123456707',1),(8,'Vikas Rao','Lab Assistant','9123456708',3),(9,'Anjali Sinha','Receptionist','9123456709',2),(10,'Deepak Kulkarni','IT Support','9123456710',7),(11,'Sunita Joshi','Pharmacist','9123456711',4),(12,'Pawan Tiwari','Maintenance Staff','9123456712',6),(13,'Shruti Saxena','Admin Assistant','9123456713',5),(14,'Naveen Jain','Lab Technician','9123456714',3),(15,'Reema Patil','Cashier','9123456715',5),(16,'Bhavesh Shah','Security Guard','9123456716',6),(17,'Komal Aggarwal','Nurse','9123456717',1),(18,'Yogesh Tripathi','Receptionist','9123456718',2),(19,'Aarti Menon','Pharmacist','9123456719',4),(20,'Siddharth Khanna','IT Support','9123456720',7),(21,'Preeti Nair','Nurse','9123456721',1),(22,'Rajeev Mishra','Driver','9123456722',8),(23,'Mona Chaudhary','Cleaner','9123456723',6),(24,'Aman Dutta','Lab Technician','9123456724',3),(25,'Nandini Das','Accountant','9123456725',5),(26,'Kiran Bedi','Security Supervisor','9123456726',6),(27,'Rohit Paul','Help Desk Executive','9123456727',2),(28,'Shalini Rathi','Ward Boy','9123456728',1),(29,'Harshita Rao','Medical Records Clerk','9123456729',5),(30,'Aditya Shetty','Housekeeping','9123456730',6);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_appointments_schedule`
--

DROP TABLE IF EXISTS `view_appointments_schedule`;
/*!50001 DROP VIEW IF EXISTS `view_appointments_schedule`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_appointments_schedule` AS SELECT 
 1 AS `AppointmentID`,
 1 AS `AppointmentDate`,
 1 AS `TimeSlot`,
 1 AS `Status`,
 1 AS `PatientName`,
 1 AS `DoctorName`,
 1 AS `Specialty`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_billing_status`
--

DROP TABLE IF EXISTS `view_billing_status`;
/*!50001 DROP VIEW IF EXISTS `view_billing_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_status` AS SELECT 
 1 AS `BillID`,
 1 AS `PatientName`,
 1 AS `Amount`,
 1 AS `DateIssued`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_doctor_info`
--

DROP TABLE IF EXISTS `view_doctor_info`;
/*!50001 DROP VIEW IF EXISTS `view_doctor_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_doctor_info` AS SELECT 
 1 AS `DoctorID`,
 1 AS `DoctorName`,
 1 AS `Specialty`,
 1 AS `DeptName`,
 1 AS `Location`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_patient_details`
--

DROP TABLE IF EXISTS `view_patient_details`;
/*!50001 DROP VIEW IF EXISTS `view_patient_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_patient_details` AS SELECT 
 1 AS `PatientID`,
 1 AS `PatientName`,
 1 AS `Gender`,
 1 AS `DOB`,
 1 AS `BloodGroup`,
 1 AS `AppointmentDate`,
 1 AS `TimeSlot`,
 1 AS `AppointmentStatus`,
 1 AS `DoctorName`,
 1 AS `Specialty`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_staff_directory`
--

DROP TABLE IF EXISTS `view_staff_directory`;
/*!50001 DROP VIEW IF EXISTS `view_staff_directory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_staff_directory` AS SELECT 
 1 AS `StaffID`,
 1 AS `StaffName`,
 1 AS `Role`,
 1 AS `Contact`,
 1 AS `DeptName`,
 1 AS `Location`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'medicare'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddNewPatient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddNewPatient`(
    in p_Name varchar(100),
    in p_Gender varchar(50),
    in p_DOB date,
    in p_Contact varchar(20),
    in p_Address text,
    in p_BloodGroup varchar(20),
    in p_DateAdmitted date
)
begin
    insert into Patients (Name, Gender, DOB, Contact, Address, BloodGroup, DateAdmitted)
    values (p_Name, p_Gender, p_DOB, p_Contact, p_Address, p_BloodGroup, p_DateAdmitted);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenerateBill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenerateBill`(
    in p_PatientID int,
    in p_Amount decimal(10,2),
    in p_DateIssued date,
    in p_Status varchar(20)
)
begin
    insert into Billing (PatientID, Amount, DateIssued, Status)
    values (p_PatientID, p_Amount, p_DateIssued, p_Status);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShowStaffDirectory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowStaffDirectory`()
begin
    select 
        s.StaffID,
        s.Name,
        s.Role,
        s.Contact,
        d.DeptName
    from Staff s
    join Departments d on s.DepartmentID = d.DepartmentID;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShowUnpaidBills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowUnpaidBills`()
begin
    select 
        b.BillID,
        p.Name as PatientName,
        b.Amount,
        b.DateIssued,
        b.Status
    from Billing b
    join Patients p on b.PatientID = p.PatientID
    where b.Status = 'Unpaid';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShowUpcomingAppointments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowUpcomingAppointments`()
begin
    select 
        a.AppointmentID,
        p.Name as PatientName,
        d.Name as DoctorName,
        a.AppointmentDate,
        a.TimeSlot,
        a.Status
    from Appointments a
	join Patients p on a.PatientID = p.PatientID
    join Doctors d on a.DoctorID = d.DoctorID
    where a.AppointmentDate > CURDATE();
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_appointments_schedule`
--

/*!50001 DROP VIEW IF EXISTS `view_appointments_schedule`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_appointments_schedule` AS select `a`.`AppointmentID` AS `AppointmentID`,`a`.`AppointmentDate` AS `AppointmentDate`,`a`.`TimeSlot` AS `TimeSlot`,`a`.`Status` AS `Status`,`p`.`Name` AS `PatientName`,`d`.`Name` AS `DoctorName`,`d`.`Specialty` AS `Specialty` from ((`appointments` `a` join `patients` `p` on((`a`.`PatientID` = `p`.`PatientID`))) join `doctors` `d` on((`a`.`DoctorID` = `d`.`DoctorID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_billing_status`
--

/*!50001 DROP VIEW IF EXISTS `view_billing_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_status` AS select `b`.`BillID` AS `BillID`,`p`.`Name` AS `PatientName`,`b`.`Amount` AS `Amount`,`b`.`DateIssued` AS `DateIssued`,`b`.`Status` AS `Status` from (`billing` `b` join `patients` `p` on((`b`.`PatientID` = `p`.`PatientID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_doctor_info`
--

/*!50001 DROP VIEW IF EXISTS `view_doctor_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_doctor_info` AS select `d`.`DoctorID` AS `DoctorID`,`d`.`Name` AS `DoctorName`,`d`.`Specialty` AS `Specialty`,`dp`.`DeptName` AS `DeptName`,`dp`.`Location` AS `Location` from (`doctors` `d` join `departments` `dp` on((`d`.`DepartmentID` = `dp`.`DepartmentID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_patient_details`
--

/*!50001 DROP VIEW IF EXISTS `view_patient_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_patient_details` AS select `p`.`PatientID` AS `PatientID`,`p`.`Name` AS `PatientName`,`p`.`Gender` AS `Gender`,`p`.`DOB` AS `DOB`,`p`.`BloodGroup` AS `BloodGroup`,`a`.`AppointmentDate` AS `AppointmentDate`,`a`.`TimeSlot` AS `TimeSlot`,`a`.`Status` AS `AppointmentStatus`,`d`.`Name` AS `DoctorName`,`d`.`Specialty` AS `Specialty` from ((`patients` `p` left join `appointments` `a` on((`p`.`PatientID` = `a`.`PatientID`))) left join `doctors` `d` on((`a`.`DoctorID` = `d`.`DoctorID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_staff_directory`
--

/*!50001 DROP VIEW IF EXISTS `view_staff_directory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_staff_directory` AS select `s`.`StaffID` AS `StaffID`,`s`.`Name` AS `StaffName`,`s`.`Role` AS `Role`,`s`.`Contact` AS `Contact`,`d`.`DeptName` AS `DeptName`,`d`.`Location` AS `Location` from (`staff` `s` join `departments` `d` on((`s`.`DepartmentID` = `d`.`DepartmentID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-10 16:44:39
