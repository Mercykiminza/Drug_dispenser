-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mercy
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `administratorId` int NOT NULL AUTO_INCREMENT,
  `emailAddress` varchar(128) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  PRIMARY KEY (`administratorId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'administrator@admin.com','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultation`
--

DROP TABLE IF EXISTS `consultation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultation` (
  `consultationID` int NOT NULL AUTO_INCREMENT,
  `dateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dateScheduled` timestamp NOT NULL,
  `startTime` timestamp NOT NULL,
  `endTime` timestamp NOT NULL,
  `status` varchar(32) DEFAULT NULL,
  `patientDoctorId` int DEFAULT NULL,
  PRIMARY KEY (`consultationID`),
  KEY `patientDoctorId` (`patientDoctorId`),
  CONSTRAINT `consultation_ibfk_1` FOREIGN KEY (`patientDoctorId`) REFERENCES `patient_doctor` (`patientDoctorId`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultation`
--

LOCK TABLES `consultation` WRITE;
/*!40000 ALTER TABLE `consultation` DISABLE KEYS */;
INSERT INTO `consultation` VALUES (31,'2023-06-20 16:53:56','2023-06-22 21:00:00','2023-06-19 22:02:27','2023-06-19 22:59:32','approved',49),(32,'2023-06-20 16:53:56','2023-06-25 21:00:00','2023-06-20 01:22:02','2023-06-19 22:24:51','approved',50),(33,'2023-06-20 16:53:56','2023-06-23 21:00:00','2023-06-20 06:17:01','2023-06-19 22:21:22','approved',51),(34,'2023-06-20 16:53:56','2023-06-23 21:00:00','2023-06-19 21:46:23','2023-06-19 22:18:02','approved',52),(35,'2023-06-20 16:53:56','2023-06-22 21:00:00','2023-06-20 00:11:10','2023-06-19 22:26:34','approved',53),(36,'2023-06-20 16:53:56','2023-06-25 21:00:00','2023-06-20 15:01:57','2023-06-19 22:18:31','approved',54),(37,'2023-06-20 16:53:56','2023-06-21 21:00:00','2023-06-20 09:34:16','2023-06-19 22:44:55','approved',56),(38,'2023-06-20 16:53:56','2023-06-20 21:00:00','2023-06-20 11:49:04','2023-06-19 22:34:07','approved',57),(39,'2023-06-20 16:53:56','2023-06-26 21:00:00','2023-06-20 03:00:27','2023-06-19 22:16:39','approved',58),(40,'2023-06-20 16:53:56','2023-06-24 21:00:00','2023-06-20 05:31:06','2023-06-19 22:51:42','approved',59),(46,'2023-06-20 16:53:57','2023-06-20 21:00:00','2023-06-20 12:16:07','2023-06-19 22:26:52','approved',49),(47,'2023-06-20 16:53:57','2023-06-21 21:00:00','2023-06-20 04:30:04','2023-06-19 22:34:07','approved',50),(48,'2023-06-20 16:53:57','2023-06-26 21:00:00','2023-06-20 16:50:45','2023-06-19 22:24:52','approved',51),(49,'2023-06-20 16:53:57','2023-06-23 21:00:00','2023-06-20 14:08:32','2023-06-19 22:47:48','approved',52),(50,'2023-06-20 16:53:57','2023-06-25 21:00:00','2023-06-20 16:32:28','2023-06-19 22:32:54','approved',53),(51,'2023-06-20 16:53:57','2023-06-21 21:00:00','2023-06-20 17:27:04','2023-06-19 22:21:44','approved',54),(52,'2023-06-20 16:53:57','2023-06-21 21:00:00','2023-06-20 01:29:30','2023-06-19 22:10:17','approved',56),(53,'2023-06-20 16:53:57','2023-06-21 21:00:00','2023-06-20 20:09:34','2023-06-19 22:56:14','approved',57),(54,'2023-06-20 16:53:57','2023-06-25 21:00:00','2023-06-20 00:29:49','2023-06-19 22:21:14','approved',58),(55,'2023-06-20 16:53:57','2023-06-21 21:00:00','2023-06-20 11:27:29','2023-06-19 22:00:48','approved',59),(61,'2023-06-20 18:09:32','2023-06-24 21:00:00','2023-06-25 07:00:00','2023-06-25 08:00:00',NULL,51),(62,'2023-06-20 18:11:17','2023-06-22 21:00:00','2023-06-23 08:00:00','2023-06-22 21:00:00','pending',61),(63,'2023-06-21 16:36:24','2023-06-21 21:00:00','2023-06-22 08:30:00','2023-06-22 09:30:00','pending',62);
/*!40000 ALTER TABLE `consultation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultation_payment`
--

DROP TABLE IF EXISTS `consultation_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultation_payment` (
  `consultationPaymentId` int NOT NULL AUTO_INCREMENT,
  `consultationId` int DEFAULT NULL,
  `amountCashed` decimal(10,2) NOT NULL,
  `dateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `method` varchar(32) NOT NULL,
  PRIMARY KEY (`consultationPaymentId`),
  KEY `consultationId` (`consultationId`),
  CONSTRAINT `consultation_payment_ibfk_1` FOREIGN KEY (`consultationId`) REFERENCES `consultation` (`consultationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultation_payment`
--

LOCK TABLES `consultation_payment` WRITE;
/*!40000 ALTER TABLE `consultation_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultation_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `contractId` int NOT NULL AUTO_INCREMENT,
  `startDate` timestamp NOT NULL,
  `endDate` timestamp NOT NULL,
  `description` text,
  `pharmacyId` int DEFAULT NULL,
  `pharmaceuticalId` int DEFAULT NULL,
  PRIMARY KEY (`contractId`),
  KEY `pharmacyId` (`pharmacyId`),
  KEY `pharmaceuticalId` (`pharmaceuticalId`),
  CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`pharmacyId`) REFERENCES `pharmacy` (`pharmacyId`),
  CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`pharmaceuticalId`) REFERENCES `pharmaceutical` (`pharmaceuticalId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',7,2),(2,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',8,3),(3,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',8,5),(4,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',6,3),(5,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',4,3),(6,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',6,2),(7,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',9,5),(8,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',6,3),(9,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',2,3),(10,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',4,1),(11,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',2,3),(12,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',5,4),(13,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',7,5),(14,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',3,3),(15,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',7,1),(16,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',9,5),(17,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',3,1),(18,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',3,1),(19,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',1,4),(20,'2023-06-20 16:16:11','2024-06-20 16:16:11','Contract description',5,3);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosis` (
  `diagnosisId` int NOT NULL AUTO_INCREMENT,
  `consultationId` int DEFAULT NULL,
  `symptom` varchar(128) NOT NULL,
  `description` text,
  PRIMARY KEY (`diagnosisId`),
  KEY `consultationId` (`consultationId`),
  CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`consultationId`) REFERENCES `consultation` (`consultationID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis`
--

LOCK TABLES `diagnosis` WRITE;
/*!40000 ALTER TABLE `diagnosis` DISABLE KEYS */;
INSERT INTO `diagnosis` VALUES (1,48,'Fever','The patient is experiencing an elevated body temperature above the normal range.'),(2,31,'Headache','The patient is experiencing pain or discomfort in the head, ranging from mild to severe intensity. It can be a dull ache, a throbbing sensation, or a feeling of pressure.'),(3,31,'Sore throat','The patient has irritation, pain, or a scratchy sensation in the throat. Swallowing, speaking, or eating may worsen the discomfort.\r\n'),(4,31,'Shortness of breath','The patient is experiencing difficulty breathing or a sensation of breathlessness. It may feel like the individual is not getting enough air or cannot take deep breaths.'),(5,63,'Nausea','The patient feels an unsettled stomach and the urge to vomit, although actual vomiting may or may not occur.'),(6,63,'Diarrhea','The patient is passing loose, watery stools more frequently than usual.'),(7,63,'Chest pain','The patient experiences discomfort or aching in the chest area, which may be sharp, stabbing, or a pressure-like sensation.'),(8,46,'Dizziness','The patient feels lightheaded, unsteady, or off-balance, as if the surrounding environment is spinning or moving.'),(9,46,'Muscle aches','The patient experiences generalized or localized muscle pain, which can range from a dull ache to sharp, cramping sensations.'),(10,46,'Swollen glands','The patient notices enlarged or tender lymph nodes, typically in the neck, armpits, or groin area.'),(11,46,'Abdominal pain','The patient experiences discomfort or pain in the stomach or abdominal area. It can range from mild cramping to severe, sharp pain.'),(12,61,'Severe Headache','Patient feels severe headache and protracted thumping leading to extreme wriggling.');
/*!40000 ALTER TABLE `diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctorId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(128) NOT NULL,
  `lastName` varchar(128) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `specialization` varchar(128) NOT NULL,
  `healthCenterId` int NOT NULL,
  `SSN` int NOT NULL,
  `startYear` int NOT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  `passwordHash` varchar(255) NOT NULL,
  PRIMARY KEY (`doctorId`),
  UNIQUE KEY `emailAddress` (`emailAddress`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`),
  KEY `healthCenterId` (`healthCenterId`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`healthCenterId`) REFERENCES `health_center` (`healthCenterId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Waiharo Martin','Njogu','Male','martin.njogu@gmail.com','+254 373 266 543','Cardiology',1,827334423,2001,1,'$2y$10$uMO1kCoqb/YWveiDrq9xxuHSTzUdohNiYvRNfulcP/5G9b9zosKPK'),(2,'Ombogo','Miriam','Female','ombogo.miriam@gmail.com','+254 783 343 234','Dermatology',2,367433672,1998,1,'$2y$10$VMjnx6Srpqb9KldJRwTxn.3.HBqi442l1ZaN7q6jV3yljfYiDVgq2'),(3,'Trevis Onyango','Opiyo','Male','trevis.opiyo@gmail.com','+254 464 323 234','Gastroenterology',3,735643233,2003,1,'$2y$10$B3aiJIYsl5mJMwc0R504leS.P6ydEWKkzl2SD02VovD136r8T5Q2u'),(4,'Kiplagat','Tanui','Female','kiplagat.tanui@gmail.com','+254 864 345 654','Gastroenterology',4,235754323,1996,1,'$2y$10$0Z9/lHZoxQ5eBC//dXlKRuo55vCQyF5cQ/mnCQUe3GoSHsaD0eqt.'),(5,'Owen','Philip','Male','owen.philip@yahoo.com','+254 467 335 975','Obstetrics and Gynecology',5,927344223,2007,1,'$2y$10$nlUWw1esx.GHr7VPimzsLua3Qf0pPKGGLPkYyV6ESYBXOiTfVZebC'),(6,'Kinyua','Janet','Female','kinyua.janet@knh.co.ke','+254 367 533 223','Orthopedics',1,735455221,1997,1,'$2y$10$6sDdPvmJgSXMwpBaCVwgWe1tPwoHNIHRF1C6y1OIhgGoNJLhwfHCi'),(7,'Caleb','Kiprotich','Male','caleb.kiprotich737@gmail.com','+255 464 653 932','Ophthalmology',3,983672446,2008,1,'$2y$10$2sNZRGwRonczWmh7eXguBOVAaiw84bNApGyEdcyylX2r49zljC7Y6'),(8,'Farhan','Khalif Yussuf','Male','farhan.yussuf@gmail.com','+254 464 323 433','Radiology',4,857465345,2004,1,'$2y$10$BCF5I9.z0IVEqrhIefq9euQYXetqhQ0MoUquJC0DAFuQVEpCHN6H.'),(9,'Abdimalik','Adan Edin','Male','abdi37malik@yahoo.co.ke','+255 463 334 234','Pediatrics',3,366234334,2003,1,'$2y$10$kja8NwPNNmsnLm/RURSUJ./x9JusWGwdkW4ijbWnAK2HdiZDrlF1K'),(10,'Vince','Kaleli Muthama','Male','vince.kaleli@gmail.com','+254 335 324 326','Neurology',1,634984001,2005,1,'$2y$10$3GHsRNJdju.57XQoXhBZO.oVpV42.JOk8c9YiLQwbGToqczM4u2Qm');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug`
--

DROP TABLE IF EXISTS `drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug` (
  `drugId` int NOT NULL AUTO_INCREMENT,
  `tradeName` varchar(128) NOT NULL,
  `scientificName` varchar(255) NOT NULL,
  `formula` varchar(255) NOT NULL,
  `form` varchar(128) NOT NULL,
  `dateManufactured` timestamp NULL DEFAULT NULL,
  `expiryDate` timestamp NULL DEFAULT NULL,
  `supplyId` int DEFAULT NULL,
  PRIMARY KEY (`drugId`),
  KEY `supplyId` (`supplyId`),
  CONSTRAINT `drug_ibfk_1` FOREIGN KEY (`supplyId`) REFERENCES `supply` (`supplyId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug`
--

LOCK TABLES `drug` WRITE;
/*!40000 ALTER TABLE `drug` DISABLE KEYS */;
INSERT INTO `drug` VALUES (1,'Piriton','Chlorphenamine','C16H19ClN2','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',1),(2,'Benadryl','Diphenhydramine','C17H21NO','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',1),(3,'Paracetamol','Acetaminophen','C8H9NO2','Syrup','2023-06-19 21:00:00','2024-06-19 21:00:00',2),(4,'Ibuprofen','2-(4-isobutylphenyl)propanoic acid','C13H18O2','Injection','2023-06-19 21:00:00','2024-06-19 21:00:00',2),(5,'Amoxicillin','Amoxicillin','C16H19N3O5S','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',3),(6,'Ciprofloxacin','Ciprofloxacin','C17H18FN3O3','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',3),(7,'Ventolin','Salbutamol','C13H21NO3','Syrup','2023-06-19 21:00:00','2024-06-19 21:00:00',4),(8,'Atrovent','Ipratropium bromide','C20H30BrNO3','Injection','2023-06-19 21:00:00','2024-06-19 21:00:00',4),(9,'Lisinopril','Lisinopril','C21H31N3O5','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',5),(10,'Amlodipine','Amlodipine','C20H25ClN2O5','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',5),(11,'Aspirin','Acetylsalicylic acid','C9H8O4','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',6),(12,'Tylenol','Paracetamol','C8H9NO2','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',6),(13,'Metformin','Metformin','C4H11N5','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',7),(14,'Gliclazide','Gliclazide','C15H21N3O3S','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',7),(15,'Simvastatin','Simvastatin','C25H38O5','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',8),(16,'Atorvastatin','Atorvastatin','C33H35FN2O5','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',8),(17,'Omeprazole','Omeprazole','C17H19N3O3S','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',9),(18,'Pantoprazole','Pantoprazole','C16H15F2N3NaO4S','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',9),(19,'Metoprolol','Metoprolol','C15H25NO3','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',10),(20,'Atenolol','Atenolol','C14H22N2O3','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',10),(21,'Metronidazole','Metronidazole','C6H9N3O3','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',12),(22,'Clindamycin','Clindamycin','C18H33ClN2O5S','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',12),(23,'Fluoxetine','Fluoxetine','C17H18F3NO','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',13),(24,'Sertraline','Sertraline','C17H17Cl2N','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',13),(25,'Amitriptyline','Amitriptyline','C20H23N','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',14),(26,'Venlafaxine','Venlafaxine','C17H27NO2','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',14),(27,'Warfarin','Warfarin','C19H16O4','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',15),(28,'Rivaroxaban','Rivaroxaban','C19H18ClN3O5S','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',15),(29,'Ibuprofen','Ibuprofen','C13H18O2','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',16),(30,'Naproxen','Naproxen','C14H14O3','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',16),(31,'Amoxicillin','Amoxicillin','C16H19N3O5S','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',17),(32,'Cephalexin','Cephalexin','C16H17N3O4S','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',17),(33,'Lisinopril','Lisinopril','C21H31N3O5','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',18),(34,'Losartan','Losartan','C22H23ClN6O','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',18),(35,'Metformin','Metformin','C4H11N5','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',19),(36,'Gliclazide','Gliclazide','C15H21N3O3S','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',19),(37,'Simvastatin','Simvastatin','C25H38O5','Tablet','2023-06-19 21:00:00','2024-06-19 21:00:00',20),(38,'Atorvastatin','Atorvastatin','C33H35FN2O5','Capsule','2023-06-19 21:00:00','2024-06-19 21:00:00',20);
/*!40000 ALTER TABLE `drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_center`
--

DROP TABLE IF EXISTS `health_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health_center` (
  `healthCenterId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`healthCenterId`),
  UNIQUE KEY `emailAddress` (`emailAddress`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_center`
--

LOCK TABLES `health_center` WRITE;
/*!40000 ALTER TABLE `health_center` DISABLE KEYS */;
INSERT INTO `health_center` VALUES (1,'Kenyatta National Hospital (Nairobi)','Hospital Road, Upper Hill, Nairobi','info@knh.co.ke','+254 763 253 243'),(2,'Aga Khan University Hospital','Limuru Road, Parklands, Nairobi','info@akuh.co.ke','+254 756 256 234'),(3,'Nairobi Hospital (Nairobi)','Argwings Kodhek Road, Hurlingham, Nairobi','info@nairobihospital.co.ke','+254 372 363 836'),(4,'Moi Teaching and Referral Hospital (Eldoret)','Nandi Road, Eldoret','info@mtrh.co.ke','+254 367 343 247'),(5,'Coast General Hospital (Mombasa)','Moi Avenue, Ganjoni, Mombasa','info@cgh.co.ke','+254 377 234 213');
/*!40000 ALTER TABLE `health_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patientId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(128) NOT NULL,
  `lastName` varchar(128) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `dateOfBirth` timestamp NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `SSN` int NOT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`patientId`),
  UNIQUE KEY `emailAddress` (`emailAddress`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`),
  UNIQUE KEY `phoneNumber_2` (`phoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Barasa','Michael','Male','michael.barasa@strathmore.edu','0114742349','Nairobi, Kenya','2000-10-09 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',2535336,1),(2,'John','Doe','Male','johndoe@gmail.com','+254123456789','Nairobi','1990-05-14 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',1234567890,1),(3,'Sarah','Wangari Maathai','Female','sarahmkuu@yahoo.com','+254222222222','Kisumu','2001-10-09 21:00:00','$2y$10$amfUhaoJCnjhUfABpMXsiudfbByZdgCG6nQPCTbJ0fkA0rOnvPlmy',1357924680,1),(4,'Alice','Korir','Female','alicekorir@gmail.com','+254444444444','Nyeri','1991-09-04 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',1234567890,1),(5,'Mary','Wambui','Female','marywambui@gmail.com','+254666666666','Machakos','1997-02-17 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',1357924680,1),(6,'Grace','Njoroge','Female','gracenjoroge@gmail.com','+254888888888','Nanyuki','1987-04-29 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',1234567890,1),(8,'Jane','Smith','Female','janesmith@gmail.com','+254987654321','Mombasa','1985-08-19 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',123456789,1),(9,'David','Ngugi','Male','davidngugi@yahoo.com','+254111111111','Nakuru','1992-11-30 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',246813579,1),(11,'Michael','Omondi','Male','michaelomondi@gmail.com','+254333333333','Eldoret','1995-03-24 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',987654321,1),(13,'Peter','Muthoni','Male','petermuthoni@gmail.com','+254555555555','Thika','1993-07-11 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',246813579,1),(15,'Daniel','Oduor','Male','danielodour@gmail.com','+254777777777','Kisii','1994-11-07 21:00:00','$2y$10$FLhJ2uoXLMt.pn/sVB7.surJOLTAOKnWrVAujf7ADuWpoCAAyun02',987654321,1);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_doctor`
--

DROP TABLE IF EXISTS `patient_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_doctor` (
  `patientDoctorId` int NOT NULL AUTO_INCREMENT,
  `patientId` int NOT NULL,
  `doctorId` int NOT NULL,
  `dateAssigned` timestamp NULL DEFAULT NULL,
  `isPrimary` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`patientDoctorId`),
  KEY `patientId` (`patientId`),
  KEY `doctorId` (`doctorId`),
  CONSTRAINT `patient_doctor_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient` (`patientId`),
  CONSTRAINT `patient_doctor_ibfk_2` FOREIGN KEY (`doctorId`) REFERENCES `doctor` (`doctorId`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_doctor`
--

LOCK TABLES `patient_doctor` WRITE;
/*!40000 ALTER TABLE `patient_doctor` DISABLE KEYS */;
INSERT INTO `patient_doctor` VALUES (49,1,1,'2023-06-19 21:00:00',1),(50,2,2,'2023-06-19 21:00:00',1),(51,3,3,'2023-06-19 21:00:00',1),(52,4,4,'2023-06-19 21:00:00',1),(53,5,5,'2023-06-19 21:00:00',1),(54,6,6,'2023-06-19 21:00:00',1),(56,8,7,'2023-06-19 21:00:00',1),(57,8,8,'2023-06-19 21:00:00',1),(58,9,9,'2023-06-19 21:00:00',1),(59,11,10,'2023-06-19 21:00:00',1),(60,1,6,'2023-06-20 17:08:42',0),(61,11,7,'2023-06-20 18:10:37',0),(62,1,3,'2023-06-21 16:35:36',0);
/*!40000 ALTER TABLE `patient_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmaceutical`
--

DROP TABLE IF EXISTS `pharmaceutical`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmaceutical` (
  `pharmaceuticalId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`pharmaceuticalId`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `emailAddress` (`emailAddress`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmaceutical`
--

LOCK TABLES `pharmaceutical` WRITE;
/*!40000 ALTER TABLE `pharmaceutical` DISABLE KEYS */;
INSERT INTO `pharmaceutical` VALUES (1,'Novartis Pharmaceuticals Kenya Limited','6th Floor, AON Minet House, Mamlaka Road, Nairobi, Kenya','info@npkl.co.ke','+254 20 3763000'),(2,'GlaxoSmithKline Kenya Ltd','Enterprise Road, Industrial Area, Nairobi, Kenya','info@gskl.co.ke','+254 20 3763676'),(3,'AstraZeneca Pharmaceuticals Kenya Ltd','Belgravia Building, 14 Riverside Drive, Nairobi, Kenya','info@azpkl.co.ke','+254 20 37433000'),(4,'Sanofi Kenya Ltd','Sanofi House, 6 Muthangari Drive, Westlands, Nairobi, Kenya','info@sanofi.co.ke','+254 48925 4634'),(5,'Pfizer Laboratories Ltd','Muthaiga Business Center, Thigiri Ridge Road, Nairobi, Kenya','info@pfizer.co.ke','+254 793 363 244'),(6,'Roche Pharmaceuticals Kenya Ltd','CIC Plaza, 3rd Floor, Mara Road, Upper Hill, Nairobi, Kenya','info@rochep.co.ke','+254 777888999'),(7,'Aspen Pharmacare Kenya Limited','Aspen Nairobi Warehouse, Namanga Road, Athi River, Kenya','info@gchp','+254 897 266 366'),(8,'Cipla Quality Chemical Industries Limited','Baba Dogo Road, Ruaraka, Nairobi, Kenya','info@cqci.co.ke','+254 674 554 344'),(9,'Bristol-Myers Squibb Kenya Limited','Parkfield Place, Muthangari Drive, Westlands, Nairobi, Kenya','info@bristolmyers.co.ke','+254 789 736344'),(10,'Johnson &amp; Johnson Kenya Limited','Regal Plaza, Limuru Road, Parklands, Nairobi, Kenya','info@jjkenya.co.ke','+254 748 464647');
/*!40000 ALTER TABLE `pharmaceutical` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacist`
--

DROP TABLE IF EXISTS `pharmacist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacist` (
  `pharmacistId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(128) NOT NULL,
  `lastName` varchar(128) NOT NULL,
  `gender` varchar(32) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `pharmacyId` int DEFAULT NULL,
  PRIMARY KEY (`pharmacistId`),
  UNIQUE KEY `emailAddress` (`emailAddress`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`),
  KEY `pharmacyId` (`pharmacyId`),
  CONSTRAINT `pharmacist_ibfk_1` FOREIGN KEY (`pharmacyId`) REFERENCES `pharmacy` (`pharmacyId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacist`
--

LOCK TABLES `pharmacist` WRITE;
/*!40000 ALTER TABLE `pharmacist` DISABLE KEYS */;
INSERT INTO `pharmacist` VALUES (1,'John','Doe','Male','johndoe@gmail.com','+254123456789','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',1),(2,'Jane','Smith','Female','janesmith@gmail.com','+254987654321','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',1),(3,'David','Ngugi','Male','davidngugi@yahoo.com','+254111111111','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',2),(4,'Grace','Wanjiku','Female','gracewanjiku@yahoo.com','+254222222222','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',2),(5,'Michael','Omondi','Male','michaelomondi@gmail.com','+254333333333','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',3),(6,'Sarah','Kamau','Female','sarahkamau@gmail.com','+254444444444','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',3),(7,'James','Mwaura','Male','jamesmwaura@yahoo.com','+254555555555','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',4),(8,'Alice','Kariuki','Female','alicekariuki@yahoo.com','+254666666666','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',4),(9,'Peter','Njoroge','Male','peternjoroge@gmail.com','+254777777777','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',5),(10,'Mary','Kamau','Female','marykamau@gmail.com','+254888888888','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',5),(11,'Joseph Mukama','Kamau','Male','josephkamau@gmail.com','+254999999999','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',6),(12,'Rebecca','Wangari','Female','rebeccawangari@gmail.com','+254101010101','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',6),(13,'Mark','Oduor','Male','markodour@yahoo.com','+254121212121','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',7),(14,'Julia','Kinyua','Female','juliakinyua@yahoo.com','+254131313131','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',7),(15,'Daniel','Ochieng','Male','danielochieng@gmail.com','+254141414141','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',8),(16,'Linda','Wambui','Female','lindawambui@gmail.com','+254151515151','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',8),(17,'Patrick','Maina','Male','patrickmaina@yahoo.com','+254161616161','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',9),(18,'Catherine','Muthoni','Female','catherinemuthoni@yahoo.com','+254171717171','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',9),(21,'Samuel','Kiptoo','Male','samuelkiptoo@gmail.com','+254181818181','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',9),(22,'Rose','Atieno','Female','roseatieno@gmail.com','+254191919191','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',9),(32,'John','Mwangi','Male','johnmwangi@gmail.com','+254123456781','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',1),(33,'Jane','Korir','Female','janekorir@gmail.com','+254987654782','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',2),(35,'Grace','Muthoni','Female','gracemuthoni@gmail.com','+254222222784','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',4),(36,'David','Omondi','Male','davidomondi@gmail.com','+254333333785','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',5),(37,'Sarah','Wangari','Female','sarahwangari@gmail.com','+254444444786','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',6),(38,'Michael','Kiptoo','Male','michaelkiptoo@gmail.com','+254555555787','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',7),(39,'Alice','Wambui','Female','alicewambui@gmail.com','+254666666788','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',8),(40,'Peter','Oduor','Male','peterodour@gmail.com','+254777777789','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',9);
/*!40000 ALTER TABLE `pharmacist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy` (
  `pharmacyId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`pharmacyId`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `emailAddress` (`emailAddress`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES (1,'Kenyatta National Hospital Pharmacy','Hospital Road, Nairobi','info@knhp.co.ke','+254 20 2726300'),(2,'Medanta Africare Pharmacy','Mbagathi Way, Nairobi','info@medanta.co.ke','+254 20 5225555'),(3,'Healthcare Pharmacy','Muthangari Drive, Nairobi','info@healthcare.co.ke','+254 719 085000'),(4,'Green Cross Pharmacy','Biashara Street, Nairobi','info@greencross.co.ke','+254 20 2218786'),(5,'Karen Hospital Pharmacy','Karen Road, Nairobi','info@knp.co.ke','+254 709 320000'),(6,'Aga Khan University Hospital Pharmacy','3rd Parklands Avenue, Nairobi','info@aknup.co.ke','+254 20 3662000'),(7,'Gertrude\'s Children\'s Hospital Pharmacy','Muthaiga Road, Nairobi','info@gchp','+254 20 3763000'),(8,'M.P. Shah Hospital Pharmacy','Shivachi Road, Nairobi','info@mpshp','+254 20 3740635'),(9,'Nairobi West Hospital Pharmacy','Gandhi Avenue, Nairobi','info@nwhp','+254 719 025000');
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `prescriptionId` int NOT NULL AUTO_INCREMENT,
  `consultationId` int DEFAULT NULL,
  `drugId` int DEFAULT NULL,
  `dosage` varchar(32) NOT NULL,
  `quantity` int NOT NULL,
  `startDate` timestamp NULL DEFAULT NULL,
  `endDate` timestamp NULL DEFAULT NULL,
  `dateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prescriptionId`),
  KEY `consultationId` (`consultationId`),
  KEY `drugId` (`drugId`),
  CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`consultationId`) REFERENCES `consultation` (`consultationID`),
  CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`drugId`) REFERENCES `drug` (`drugId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (1,48,11,'1 x 3',12,'2023-06-21 21:00:00','2023-06-25 21:00:00','2023-06-21 14:58:50');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervisor` (
  `supervisorId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(128) NOT NULL,
  `lastName` varchar(128) NOT NULL,
  `gender` varchar(32) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  `pharmaceuticalId` int DEFAULT NULL,
  PRIMARY KEY (`supervisorId`),
  UNIQUE KEY `emailAddress` (`emailAddress`),
  UNIQUE KEY `phoneNumber` (`phoneNumber`),
  KEY `pharmaceuticalId` (`pharmaceuticalId`),
  CONSTRAINT `supervisor_ibfk_1` FOREIGN KEY (`pharmaceuticalId`) REFERENCES `pharmaceutical` (`pharmaceuticalId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervisor`
--

LOCK TABLES `supervisor` WRITE;
/*!40000 ALTER TABLE `supervisor` DISABLE KEYS */;
INSERT INTO `supervisor` VALUES (1,'Odongo','Davis Omogi','Male','odongo.davis@novartis.com','+254 378 344 784','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',1),(2,'Mutua','Emmanuel Kioko','Male','mutua.emmanuel@rochepharm.com','+254 464 293 990','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',6),(3,'Noah','Memiti Nabala','Male','naoh.memiti@jjke.co.ke','+254 567 843 275','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',10),(4,'Caleb','Otieno Oketch','Male','caleb.otieno@bristolmyers.co.ke','+255 567 543 938','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',9),(5,'John','Doe','Male','johndoe@gmail.com','+254123456789','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',1),(6,'Jane','Smith','Female','janesmith@gmail.com','+254987654321','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',1),(7,'David','Ngugi','Male','davidngugi@yahoo.com','+254111111111','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',2),(8,'Grace','Wanjiku','Female','gracewanjiku@yahoo.com','+254222222222','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',2),(9,'Michael','Omondi','Male','michaelomondi@gmail.com','+254333333333','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',3),(10,'Sarah','Kamau','Female','sarahkamau@gmail.com','+254444444444','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',3),(11,'James','Mwaura','Male','jamesmwaura@yahoo.com','+254555555555','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',4),(12,'Alice','Kariuki','Female','alicekariuki@yahoo.com','+254666666666','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',4),(13,'Peter','Njoroge','Male','peternjoroge@gmail.com','+254777777777','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',5),(14,'Mary','Kamau','Female','marykamau@gmail.com','+254888888888','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',5),(15,'Joseph','Kamau','Male','josephkamau@gmail.com','+254999999999','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',6),(16,'Rebecca','Wangari','Female','rebeccawangari@gmail.com','+254101010101','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',6),(17,'Mark','Oduor','Male','markodour@yahoo.com','+254121212121','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',7),(18,'Julia','Kinyua','Female','juliakinyua@yahoo.com','+254131313131','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',7),(19,'Daniel','Ochieng','Male','danielochieng@gmail.com','+254141414141','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',8),(20,'Linda','Wambui','Female','lindawambui@gmail.com','+254151515151','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',8),(21,'Patrick','Maina','Male','patrickmaina@yahoo.com','+254161616161','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',9),(22,'Catherine','Muthoni','Female','catherinemuthoni@yahoo.com','+254171717171','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',9),(23,'Samuel','Kiptoo','Male','samuelkiptoo@gmail.com','+254181818181','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',10),(24,'Rose','Atieno','Female','roseatieno@gmail.com','+254191919191','$2y$10$yOQfx94hy28Tasuev.XhQO5DFjvDJHli6yrMLWKRuqvEAqKLdmL0e',10);
/*!40000 ALTER TABLE `supervisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply` (
  `supplyId` int NOT NULL AUTO_INCREMENT,
  `contractId` int DEFAULT NULL,
  `dateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`supplyId`),
  KEY `contractId` (`contractId`),
  CONSTRAINT `supply_ibfk_1` FOREIGN KEY (`contractId`) REFERENCES `contract` (`contractId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES (1,10,'2023-06-19 21:00:00','Pending'),(2,9,'2023-06-19 21:00:00','Pending'),(3,8,'2023-06-19 21:00:00','Pending'),(4,7,'2023-06-19 21:00:00','Pending'),(5,6,'2023-06-19 21:00:00','Pending'),(6,5,'2023-06-19 21:00:00','Pending'),(7,4,'2023-06-19 21:00:00','Pending'),(8,3,'2023-06-19 21:00:00','Pending'),(9,2,'2023-06-19 21:00:00','Pending'),(10,1,'2023-06-19 21:00:00','Pending'),(11,10,'2023-06-19 21:00:00','Pending'),(12,9,'2023-06-19 21:00:00','Pending'),(13,8,'2023-06-19 21:00:00','Pending'),(14,7,'2023-06-19 21:00:00','Pending'),(15,6,'2023-06-19 21:00:00','Pending'),(16,5,'2023-06-19 21:00:00','Pending'),(17,4,'2023-06-19 21:00:00','Pending'),(18,3,'2023-06-19 21:00:00','Pending'),(19,2,'2023-06-19 21:00:00','Pending'),(20,1,'2023-06-19 21:00:00','Pending');
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_payment`
--

DROP TABLE IF EXISTS `supply_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply_payment` (
  `supplyPaymentId` int NOT NULL AUTO_INCREMENT,
  `supplyId` int DEFAULT NULL,
  `amountCashed` decimal(10,2) NOT NULL,
  `dateCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `method` varchar(128) NOT NULL,
  PRIMARY KEY (`supplyPaymentId`),
  KEY `supplyId` (`supplyId`),
  CONSTRAINT `supply_payment_ibfk_1` FOREIGN KEY (`supplyId`) REFERENCES `supply` (`supplyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_payment`
--

LOCK TABLES `supply_payment` WRITE;
/*!40000 ALTER TABLE `supply_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `supply_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-22 10:33:25
