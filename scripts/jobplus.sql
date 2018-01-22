-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 10.0.5.15    Database: jobplus
-- ------------------------------------------------------
-- Server version	5.6.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('e23bd83f181d');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assoc_job_user`
--

DROP TABLE IF EXISTS `assoc_job_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assoc_job_user` (
  `user_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  KEY `job_id` (`job_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `assoc_job_user_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE,
  CONSTRAINT `assoc_job_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assoc_job_user`
--

LOCK TABLES `assoc_job_user` WRITE;
/*!40000 ALTER TABLE `assoc_job_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `assoc_job_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `location` varchar(32) DEFAULT NULL,
  `intro` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `website` varchar(256) DEFAULT NULL,
  `logo_url` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_company_name` (`name`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('2018-01-22 13:00:21','2018-01-22 13:00:21',1,1,'艺画开天','武汉市','这家公司什么都没有说...','Heart rather learn color woman friend science. Bed run stand apply. Ready green sort watch key never wonder.\nLet rest trial teac','http://mccarty-fischer.com/','//www.lgstatic.com/thumbnail_100x100/i/image/M00/69/FA/CgpEMlmmcJmASJhVAADTVASY3SU619.jpg'),('2018-01-22 13:00:21','2018-01-22 13:00:21',2,2,'北京麦田','武汉市','这家公司什么都没有说...','Over how give speech. A office leader industry early ten. Red card begin Mrs could give and when.\nThree our station half chance ','https://johnson.biz/','//www.lgstatic.com/thumbnail_100x100/image1/M00/00/77/Cgo8PFTUXauAeNlYAABE12ZYmEU829.gif'),('2018-01-22 13:00:21','2018-01-22 13:00:21',3,3,'双佳医疗','武汉市','这家公司什么都没有说...','Early yourself claim specific meeting important. Method feeling from pick.\nEye husband here growth. Beautiful mind for recognize','http://fleming-peters.com/','//www.lgstatic.com/thumbnail_100x100/i/image/M00/2A/2E/CgpEMlkiffiAaI8eAAAN3aowCGc849.jpg'),('2018-01-22 13:00:21','2018-01-22 13:00:21',4,4,'睿善','武汉市','这家公司什么都没有说...','Newspaper increase suddenly rise. Myself site wear group. Wonder explain quality describe drive.\nContinue note outside. Really l','http://martinez.com/','//www.lgstatic.com/thumbnail_100x100/image1/M00/00/05/CgYXBlTUWASAVPZ4AAEvnsegXyo395.png'),('2018-01-22 13:00:21','2018-01-22 13:00:21',5,5,'北京清奇科技有限公司','武汉市','这家公司什么都没有说...','Try standard government. Book federal surface month oil research else despite. For professor check building.','http://www.brown.com/','//www.lgstatic.com/thumbnail_100x100/images/logo_default.png'),('2018-01-22 13:00:21','2018-01-22 13:00:21',6,6,'lightime','武汉市','这家公司什么都没有说...','History arm describe fact station just. Safe likely force remember stuff start. Happen next under economy article enjoy resource','http://bautista-roberts.com/','//www.lgstatic.com/thumbnail_100x100/i/image/M00/B1/A0/Cgp3O1i5MueAay-4ABCdrPK7k8A703.png'),('2018-01-22 13:00:21','2018-01-22 13:00:21',7,7,'客如云','武汉市','这家公司什么都没有说...','Case population music wait happy central. Big matter coach institution reach number north. Beautiful whatever table collection l','https://www.reyes-harvey.com/','//www.lgstatic.com/thumbnail_100x100/image1/M00/16/A1/Cgo8PFUPcGSABL7uAAB3ug31bHw320.jpg'),('2018-01-22 13:00:21','2018-01-22 13:00:21',8,8,'iHandy','武汉市','这家公司什么都没有说...','Teach itself part message seven area go. Across wide dream unit he mission.\nCarry perhaps dinner father listen. Decision million','https://www.kim-kennedy.com/','//www.lgstatic.com/thumbnail_100x100/i/image/M00/13/A6/Cgp3O1bnxKGAT_c6AAAWrOvgp1A992.jpg'),('2018-01-22 13:00:21','2018-01-22 13:00:21',9,9,'乐有家广州分公司','武汉市','这家公司什么都没有说...','Seek include yourself democratic against grow light. Last thank investment energy meeting general gas. Fine inside Mrs feel patt','https://www.lee.biz/','//www.lgstatic.com/thumbnail_100x100/images/logo_default.png'),('2018-01-22 13:00:21','2018-01-22 13:00:21',10,10,'心理壹点灵','武汉市','这家公司什么都没有说...','Wall all ever protect build. During meeting result decision pressure.','https://hill.com/','//www.lgstatic.com/thumbnail_100x100/i/image/M00/73/C4/CgpEMloz4T-AUP7NAAAtmFEkBoY743.jpg'),('2018-01-22 13:00:21','2018-01-22 13:00:21',11,11,'广州洲聚','武汉市','这家公司什么都没有说...','Yourself car production role. Information arrive perform leave finally. Opportunity operation between both though move article.','https://www.wade.com/','//www.lgstatic.com/thumbnail_100x100/i/image/M00/68/53/CgpEMlmjekSAT9-eAABhJ_KkRTo139.jpg'),('2018-01-22 13:00:21','2018-01-22 13:00:21',12,12,'享阅教育','武汉市','这家公司什么都没有说...','Attorney cell get break put sure final happen. Strong size heavy deal line.\nLevel consumer wind some movie no car. Training Mr w','https://www.bowers.com/','//www.lgstatic.com/thumbnail_100x100/i/image2/M00/35/98/CgoB5lpEpjmAGk7MAANrOoW3eck441.png'),('2018-01-22 13:00:21','2018-01-22 13:00:21',13,13,'竞技世界','武汉市','这家公司什么都没有说...','So team store executive. Authority describe here nothing model window.\nThat role wait treatment mother. Return require enough TV','http://buckley.org/','//www.lgstatic.com/thumbnail_100x100/i/image/M00/7E/F6/CgpEMlpN2LCAH78PAAB6a0ZVOeI523.jpg'),('2018-01-22 13:00:21','2018-01-22 13:00:21',14,14,'亿联速','武汉市','这家公司什么都没有说...','Arrive particular operation there long. Car camera family matter improve kind. Focus hundred soon open either.','http://salas-mathews.com/','//www.lgstatic.com/thumbnail_100x100/images/logo_default.png'),('2018-01-22 13:00:21','2018-01-22 13:00:21',15,15,'泛微','武汉市','这家公司什么都没有说...','Wish benefit foot direction allow choice.\nFuture order none sell pull animal although. Ever staff director director nearly piece','http://www.baker.org/','//www.lgstatic.com/thumbnail_100x100/image1/M00/00/33/CgYXBlTUXI-AC08_AACIkHlny3Y866.jpg'),('2018-01-22 13:00:21','2018-01-22 13:00:21',16,16,'米多网络','武汉市','这家公司什么都没有说...','His open religious end major girl player standard. Can door perform baby market leg.\nRepresent born there. Like image ready cont','http://www.martin.com/','//www.lgstatic.com/thumbnail_100x100/image1/M00/42/9F/CgYXBlXMPsiATHD_AAANivNwZcM361.jpg?cc=0.8422118425369263');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `salary` varchar(32) NOT NULL,
  `experience` varchar(128) NOT NULL,
  `location` varchar(32) DEFAULT NULL,
  `degree` varchar(32) DEFAULT NULL,
  `description` varchar(256) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES ('2018-01-22 13:00:21','2018-01-22 13:00:21',1,'动画师','5k-10k','经验1-3年','武汉市','不限','Almost late window realize manage wrong. Break all table beat reality eight. Wait Mrs who before.\nNew rather director statement institution happen professor. Fund list loss chair.',1,1),('2018-01-22 13:00:21','2018-01-22 13:00:21',2,'营销培训生','10k-12k','经验应届毕业生','武汉市','本科','Especially feel feeling. Free do country notice enter. Machine design agree late.\nEnough hear miss. Continue city different tonight anything stock sell.',1,2),('2018-01-22 13:00:21','2018-01-22 13:00:21',3,'WPF软件工程师','10k-15k','经验5-10年','武汉市','本科','Point environment interesting crime seat. Here practice argue cause seven.',1,3),('2018-01-22 13:00:21','2018-01-22 13:00:21',4,'海外广告投放','8k-15k','经验应届毕业生','武汉市','不限','Subject answer ground pretty design own beat. Thank concern from receive mission size network.',1,4),('2018-01-22 13:00:21','2018-01-22 13:00:21',5,'安卓开发工程师','8K-10K','经验3-5年','武汉市','本科','Then subject reality soldier night by. Door scientist catch age particularly black city. Tend media expect glass this.',1,5),('2018-01-22 13:00:21','2018-01-22 13:00:21',6,'Flash as3程序员','7k-10k','经验1-3年','武汉市','大专','Article enough Mrs federal. Paper reality cup well.\nSince see city street. Boy who style fire practice simply. Attention drug need drive night sign article year.',1,6),('2018-01-22 13:00:21','2018-01-22 13:00:21',7,'销售主管J10769','15k-20k','经验1-3年','武汉市','大专','Choose nation much read exist. Ever surface product. Pretty we six federal person. Yeah center out imagine sign campaign opportunity.',1,7),('2018-01-22 13:00:21','2018-01-22 13:00:21',8,'高级广告优化师','15k-25k','经验3-5年','武汉市','本科','Particularly word enter fire east. Program drive no reduce visit.',1,8),('2018-01-22 13:00:21','2018-01-22 13:00:21',9,'销售代表4500+','6k-12k','经验不限','武汉市','不限','Remain past event today health world attorney suggest. Lead smile buy rule state. Eight conference record require.\nCertain after short blue.\nPerson occur organization mother.',1,9),('2018-01-22 13:00:21','2018-01-22 13:00:21',10,'财务分析师','8K-15K','经验3-5年','武汉市','本科','Until range audience kind. Garden along worker industry painting risk. Discover statement challenge threat between other bag.\nModern let sure environment. Benefit future popular. Next feeling own.',1,10),('2018-01-22 13:00:21','2018-01-22 13:00:21',11,'lua开发工程师','18k-24k','经验3-5年','武汉市','本科','Popular summer peace business person debate. Meeting art wish deal even pay son another. Once fight fact answer. Organization generation discussion word.',1,11),('2018-01-22 13:00:21','2018-01-22 13:00:21',12,'插画师','12k-18k','经验1-3年','武汉市','本科','Plan mouth establish physical. Under capital them base several strong really. Professor too human case account cut go.',1,12),('2018-01-22 13:00:21','2018-01-22 13:00:21',13,'高级招聘顾问','8k-15k','经验3-5年','武汉市','本科','May ahead lose fast article. Fund you matter bag parent away plan.\nPicture growth even hear. Dog page agent true off best. Cultural three Mr deep buy step necessary.',1,13),('2018-01-22 13:00:21','2018-01-22 13:00:21',14,'网管/IT专员','12k-14k','经验3-5年','武汉市','本科','Value whole civil event lot prove begin. Production forget down begin. Threat force old she moment woman.',1,14),('2018-01-22 13:00:21','2018-01-22 13:00:21',15,'C++','13k-20k','经验1-3年','武汉市','本科','End future close collection bit. Design despite before service shoulder blood.',1,15),('2018-01-22 13:00:21','2018-01-22 13:00:21',16,'数据分析工程师','15k-25k','经验1-3年','武汉市','大专','Trial section paper change hear effect. Behavior plant price center top body subject size. Tv right popular late.',1,16);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` smallint(6) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `resume` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_user_email` (`email`),
  UNIQUE KEY `ix_user_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2018-01-22 13:00:21','2018-01-22 13:00:21',1,'company0','company0@qq.com','pbkdf2:sha256:50000$UDY8ndT5$c30c95d1397bbfd3be3ab89c37a0094e1e9fe4e5ee87a3a5d6c9968fafd21ade',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',2,'company1','company1@qq.com','pbkdf2:sha256:50000$apu9hx54$be166378cd05f264bf6e8c7bd5f95c8ffaf45d71e80c272a603bfd0e2eafae03',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',3,'company2','company2@qq.com','pbkdf2:sha256:50000$xxtDTsUq$fbe4aabeb2ecb4b63ed382a0ff832b675215b3a523e74e74da52048717529deb',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',4,'company3','company3@qq.com','pbkdf2:sha256:50000$UpIMoIGZ$89208ab4d16b5f92533c46eb747f029fab15f740c5138b4ec720d7e107fc988b',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',5,'company4','company4@qq.com','pbkdf2:sha256:50000$RxGXBUr8$b62cd911644017262ab442f3d057a010456e549acadbce7647fcbb45986beba8',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',6,'company5','company5@qq.com','pbkdf2:sha256:50000$ODPEO69U$f90274159ec9f9264aee35da11e56a937cb5b8642bda3790beab56d5c1f011d9',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',7,'company6','company6@qq.com','pbkdf2:sha256:50000$qXDafI06$07b69c3125cffa0b4e033566244955256bf605c8a4a428f813523cf62a3bb90f',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',8,'company7','company7@qq.com','pbkdf2:sha256:50000$GS0JzzUk$c3b57d05a43e82853fe02545ea5b79f93497bb0cc878b8a79c7e3b79f7c9e1a0',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',9,'company8','company8@qq.com','pbkdf2:sha256:50000$HeOsgq2v$0051bd58de8723832ba5fe289fee54448a5a190ac2673d487bb0cbe6d8771a29',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',10,'company9','company9@qq.com','pbkdf2:sha256:50000$st6q3aMK$b2983742f6fa15b69805dee94e8df8eb93e2d4909473560eaef44a6909f2b846',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',11,'company10','company10@qq.com','pbkdf2:sha256:50000$Qzxq5G6D$0dc8fab46aee956db01ea8fb8262a3e03438547d977d9170f483bce3b39e8774',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',12,'company11','company11@qq.com','pbkdf2:sha256:50000$bWsLJ7n8$571feb14257d89c03a398f37897c3998f01c527d44e66c5e8e7ba60e1582d7fe',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',13,'company12','company12@qq.com','pbkdf2:sha256:50000$GPIIhXWQ$7f3bb3898a56622cd1df01c240eb43843ea31a90b5d96b3b7d686e719772ef25',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',14,'company13','company13@qq.com','pbkdf2:sha256:50000$7Ex3DyWc$d235f6ea1e2c2671053a80312625885f7681ed9e64d1c7fd23fa435f187b60be',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',15,'company14','company14@qq.com','pbkdf2:sha256:50000$WtJLWDEI$8357b48d623463ded92a504ae21af768bc426c257b7f0e5be7410f8c9ce85d46',20,1,NULL),('2018-01-22 13:00:21','2018-01-22 13:00:21',16,'company15','company15@qq.com','pbkdf2:sha256:50000$hypOslAT$341dd759dbdf5df72893723b4a7f80c04b71fe1f8f4ac4bfffdbc7f1e1c2ec18',20,1,NULL),('2018-01-22 13:14:13','2018-01-22 13:14:13',17,'admin','admin@qq.com','pbkdf2:sha256:50000$DyoU1GA3$6d9ebd9b1e3436ebd7b7d7896e283351db6a5a0f2bc73f2eaf9753caf435fb63',30,1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-22 21:41:12
