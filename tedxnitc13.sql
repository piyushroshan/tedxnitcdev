-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.24-4

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Blogger'),(2,'Staff');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (157,1,22),(158,1,23),(159,1,24),(160,1,25),(161,1,26),(162,1,27),(125,2,1),(126,2,2),(127,2,3),(128,2,4),(129,2,5),(130,2,6),(131,2,7),(132,2,8),(133,2,9),(134,2,10),(135,2,11),(136,2,12),(137,2,16),(138,2,17),(139,2,18),(140,2,19),(141,2,20),(142,2,21),(143,2,22),(144,2,23),(145,2,24),(146,2,25),(147,2,26),(148,2,27),(149,2,37),(150,2,38),(151,2,39),(152,2,40),(153,2,41),(154,2,42);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add contactform',7,'add_contactform'),(20,'Can change contactform',7,'change_contactform'),(21,'Can delete contactform',7,'delete_contactform'),(22,'Can add blogpost',8,'add_blogpost'),(23,'Can change blogpost',8,'change_blogpost'),(24,'Can delete blogpost',8,'delete_blogpost'),(25,'Can add comment',9,'add_comment'),(26,'Can change comment',9,'change_comment'),(27,'Can delete comment',9,'delete_comment'),(28,'Can add registration profile',10,'add_registrationprofile'),(29,'Can change registration profile',10,'change_registrationprofile'),(30,'Can delete registration profile',10,'delete_registrationprofile'),(31,'Can add user profile',11,'add_userprofile'),(32,'Can change user profile',11,'change_userprofile'),(33,'Can delete user profile',11,'delete_userprofile'),(34,'Can add vote',12,'add_vote'),(35,'Can change vote',12,'change_vote'),(36,'Can delete vote',12,'delete_vote'),(37,'Can add nominee',13,'add_nominee'),(38,'Can change nominee',13,'change_nominee'),(39,'Can delete nominee',13,'delete_nominee'),(40,'Can add log entry',14,'add_logentry'),(41,'Can change log entry',14,'change_logentry'),(42,'Can delete log entry',14,'delete_logentry'),(43,'Can add migration history',15,'add_migrationhistory'),(44,'Can change migration history',15,'change_migrationhistory'),(45,'Can delete migration history',15,'delete_migrationhistory'),(46,'Can add kv store',17,'add_kvstore'),(47,'Can change kv store',17,'change_kvstore'),(48,'Can delete kv store',17,'delete_kvstore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'tedxuser','TEDx','NITCalicut','piyushroshan@gmail.com','pbkdf2_sha256$10000$tHAEhtC1YK4k$sLIKWPJidb3e4X9NhQ3f0rkrRoTBouVyQWzYC2eN0vI=',1,1,1,'2012-09-20 21:57:07','2012-08-03 17:48:02'),(2,'piyushroshan','Roshan','Piyush','piyushroshan@gmail.com','pbkdf2_sha256$10000$FwaLO89Gm0OQ$SjGUR+13dFWHV/BX9hGMrTs7kstVtA78oMSzli9WCF8=',1,1,0,'2012-09-08 10:50:54','2012-08-03 18:12:10'),(3,'dummyuser','Dummy','Piyush','anitkumar@gmail.com','pbkdf2_sha256$10000$4Yq2bHF2Avk3$XbxxSGipEEoznqA8wXF8bWuYJHGKHkRPMxMaZ27+8FU=',0,1,0,'2012-08-08 10:49:43','2012-08-08 10:21:58'),(5,'mayukh','Mayukh','','','pbkdf2_sha256$10000$gq5t6iYDfJc6$CPp1/THKoUs9iKMRVh7ohcPmS3eZi1NaK+a9/18VSuM=',1,1,0,'2012-09-18 16:12:49','2012-09-18 16:04:24'),(6,'marilyn','Marilyn','','','pbkdf2_sha256$10000$2A9gfzv4hcOn$a/R2Sfsgtlp9AZR3+AaBVmd67cWdQCWlqO2ih5M4mgc=',1,1,0,'2012-09-18 16:27:53','2012-09-18 16:05:32');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (4,2,1),(12,5,1),(11,6,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_blogpost`
--

DROP TABLE IF EXISTS `blogs_blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_blogpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `body` longtext NOT NULL,
  `created` datetime NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_blogpost_2ccaea20` (`user_id_id`),
  CONSTRAINT `user_id_id_refs_id_e451c366` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_blogpost`
--

LOCK TABLES `blogs_blogpost` WRITE;
/*!40000 ALTER TABLE `blogs_blogpost` DISABLE KEYS */;
INSERT INTO `blogs_blogpost` VALUES (2,'A New Beginning','Mayukh','','<p class=\"MsoNormal\">Jaisim, the Howard Roark of Indian architecture; Tanvi, a firebrand women&rsquo;s right activist; Praveen Vet, a man with a vision for tomorrow &ndash; these are just three of the six speakers who made TEDxNitcalicut special. The success of the event is reflected in the fact that TEDx is now a household name not only in the college, but in Calicut too. This considering the fact that hardly anyone knew anything about TEDx before 2012. Today TEDx videos are a rage among the college students. The team members are being pestered by juniors and sophomores, asking about future editions of TEDx. Where last time creating a team was a chore, this time around we are getting spirited volunteers. TEDxNitcalicut 2012 was like one great big party. Stress on &lsquo;was&rsquo;. Now it&rsquo;s time to get over the hangover and move on.</p>\r\n<p class=\"MsoNormal\">TEDxNitcalicut 2013 is here. Considering the success of the last edition of TEDx here, we didn&rsquo;t expect the license to be a problem. It wasn&rsquo;t either; we got it within a month. As I mentioned earlier, forming a team wasn&rsquo;t trouble either. The date however is still in consideration, subject to the schedule of the college. We expect the date to be within the first half of January 2013. What with the website being out and all, we can take a breather.</p>\r\n<p class=\"MsoNormal\">We can&rsquo;t afford to be complacent though. The team is once again going over the rulebook very carefully. Midnight meeting are already being set up. The team has experience; we can pull this off by the book. But there&rsquo;s nothing special about that, which is why we are working on many new ideas. We are expected to give the team TEDxNitcalicut a fresh new look. The website team has gone full steam and has finished the website. The marketing team is working overtime on sponsors, both new and old, while the rest of the team has already started contacting the all-too-essential speakers. We are looking forward to people nominating the speakers. We hope to start off with our local events in the nearby schools and local colleges and create a buzz. People have an idea about TEDx, but that shouldn&rsquo;t stop us from spreading the message further&shy;.</p>\r\n<p class=\"MsoNormal\">I am sure this blog will be following a success story.</p>\r\n<p class=\"MsoNormal\">Team TEDxNitcalicut.</p>','2012-09-20 16:26:35',5);
/*!40000 ALTER TABLE `blogs_blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_comment`
--

DROP TABLE IF EXISTS `blogs_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(75) NOT NULL,
  `created` datetime NOT NULL,
  `body` longtext NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_comment_699ae8ca` (`post_id`),
  CONSTRAINT `post_id_refs_id_a9aae433` FOREIGN KEY (`post_id`) REFERENCES `blogs_blogpost` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_comment`
--

LOCK TABLES `blogs_comment` WRITE;
/*!40000 ALTER TABLE `blogs_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus_contactform`
--

DROP TABLE IF EXISTS `contactus_contactform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactus_contactform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus_contactform`
--

LOCK TABLES `contactus_contactform` WRITE;
/*!40000 ALTER TABLE `contactus_contactform` DISABLE KEYS */;
INSERT INTO `contactus_contactform` VALUES (5,'TEDx NITCalicut','piyushroshan@gmail.com','9431539288','hello','TEDxNITCalicut View! Rate! Comment! Help discover amazing new talent and shape th');
/*!40000 ALTER TABLE `contactus_contactform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2012-08-03 18:12:10',1,3,'2','piyushroshan',1,''),(2,'2012-08-03 21:04:15',1,11,'1','UserProfile object',1,''),(3,'2012-08-08 10:34:54',1,8,'1','Blogpost object',1,''),(4,'2012-08-11 17:29:53',1,8,'1','Blogpost object',1,''),(5,'2012-08-12 06:25:31',1,13,'3','Roshan Piyush: piyushroshan@gmail.com',1,''),(6,'2012-08-12 10:39:12',1,8,'2','Blogpost object',1,''),(7,'2012-08-12 12:58:42',1,8,'1','Blogpost object',1,''),(8,'2012-08-12 18:27:35',1,8,'2','Blogpost object',1,''),(9,'2012-08-12 18:29:07',1,8,'3','Blogpost object',1,''),(10,'2012-08-14 18:21:55',1,12,'64','piyushroshan: -1 on None',3,''),(11,'2012-08-14 18:21:55',1,12,'63','piyushroshan: -1 on None',3,''),(12,'2012-08-14 18:21:55',1,12,'56','piyushroshan: 1 on None',3,''),(13,'2012-08-14 18:21:55',1,12,'50','piyushroshans: -1 on None',3,''),(14,'2012-08-14 18:21:55',1,12,'45','piyushroshan: 1 on None',3,''),(15,'2012-08-14 18:21:55',1,12,'40','tedxuser: 1 on None',3,''),(16,'2012-08-15 07:14:35',1,3,'1','tedxuser',2,'Changed password, first_name and last_name.'),(17,'2012-08-25 11:09:13',1,8,'1','Blog Entry: <p><span>.</span><span>&nbsp;</span><span>T</span><span>h</s',1,''),(18,'2012-08-25 11:10:48',1,8,'1','Blog Entry: <p><span>.</span><span>&nbsp;</span><span>T</span><span>h</s',2,'Changed name.'),(19,'2012-08-25 14:43:51',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'Changed body.'),(20,'2012-08-25 16:30:18',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'Changed name.'),(21,'2012-08-25 16:51:54',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',1,''),(22,'2012-08-25 16:52:01',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(23,'2012-08-25 16:53:35',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(24,'2012-08-25 16:54:22',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',1,''),(25,'2012-08-25 16:54:38',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(26,'2012-08-25 17:01:23',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(27,'2012-08-25 17:01:35',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(28,'2012-08-25 17:52:51',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(29,'2012-08-25 17:52:57',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(30,'2012-08-25 17:53:01',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(31,'2012-08-25 18:04:50',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(32,'2012-08-25 18:05:16',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(33,'2012-08-25 18:09:06',1,8,'4','Blog Entry: <p><span>It is a long established fact that a reader will be',1,''),(34,'2012-08-25 18:09:15',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(35,'2012-08-25 18:09:28',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(36,'2012-08-25 18:09:28',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'Changed name.'),(37,'2012-08-25 18:09:36',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(38,'2012-08-25 18:09:40',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'No fields changed.'),(39,'2012-08-25 18:09:53',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'Changed user_id.'),(40,'2012-08-25 18:11:11',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(41,'2012-08-25 18:11:17',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'Changed user_id.'),(42,'2012-08-25 18:11:25',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'Changed name.'),(43,'2012-08-25 18:11:48',1,8,'2','Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'Changed user_id.'),(44,'2012-08-25 18:12:48',1,8,'2','Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'Changed title.'),(45,'2012-08-25 18:13:12',1,8,'2','Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(46,'2012-08-25 18:14:05',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(47,'2012-08-25 18:17:20',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(48,'2012-08-25 18:17:24',1,8,'2','Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(49,'2012-08-25 18:17:31',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'Changed user_id.'),(50,'2012-08-25 18:17:36',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'No fields changed.'),(51,'2012-08-25 18:18:11',1,3,'2','piyushroshan',2,'Changed password, first_name, last_name and email.'),(52,'2012-08-25 18:18:19',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'No fields changed.'),(53,'2012-08-25 18:29:22',1,8,'2','Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(54,'2012-08-25 18:34:38',1,8,'2','Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(55,'2012-08-25 18:34:41',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'No fields changed.'),(56,'2012-08-25 18:36:29',1,8,'5','Organizers: <h3>1914 translation by H. Rackham</h3>\r\n<p>\"But I must expl',1,''),(57,'2012-08-25 18:36:46',1,8,'5','Organizers: <h3>1914 translation by H. Rackham</h3>\r\n<p>\"But I must expl',3,''),(58,'2012-08-25 18:37:04',1,8,'6','Partners: <h3>1914 translation by H. Rackham</h3>\r\n<p>\"But I must expl',1,''),(59,'2012-08-25 18:39:40',1,8,'6','Partners: <h3>1914 translation by H. Rackham</h3>\r\n<p>\"But I must expl',2,'No fields changed.'),(60,'2012-08-25 18:39:45',1,8,'4','Blog Entry: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(61,'2012-08-25 18:39:50',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'No fields changed.'),(62,'2012-08-25 18:39:55',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'No fields changed.'),(63,'2012-08-25 18:39:59',1,8,'2','Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(64,'2012-08-25 18:44:16',1,8,'6','Partners: <h3>1914 translation by H. Rackham</h3>\r\n<p>\"But I must expl',2,'No fields changed.'),(65,'2012-08-25 18:44:25',1,8,'6','Partners: <h3>1914 translation by H. Rackham</h3>\r\n<p>\"But I must expl',2,'Changed user_id.'),(66,'2012-08-25 18:44:41',1,8,'4','Blog Entry: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(67,'2012-08-25 18:44:46',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(68,'2012-08-29 11:12:14',1,8,'6','Partners: <p>\"But I must explain to you how all this mistaken idea of ',2,'Changed body.'),(69,'2012-08-29 16:40:07',1,8,'6','Partners: <p>\"But I must explain to you how all this mistaken idea of ',2,'No fields changed.'),(70,'2012-08-29 16:40:22',1,8,'4','Blog Entry: <p><span>It is a long established fact that a reader will be',2,'Changed body.'),(71,'2012-08-29 16:40:32',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'Changed body.'),(72,'2012-08-29 16:40:44',1,8,'2','Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'Changed body.'),(73,'2012-08-29 16:40:56',1,8,'2','Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'Changed body.'),(74,'2012-08-29 16:41:05',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'Changed body.'),(75,'2012-08-29 16:42:05',1,8,'4','Blog Entry: <p><span>It is a long established fact that a reader will be',2,'Changed body.'),(76,'2012-08-29 16:42:19',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'Changed body.'),(77,'2012-08-29 16:42:36',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'Changed body.'),(78,'2012-08-29 17:07:45',1,2,'1','Blogger',1,''),(79,'2012-08-29 17:07:50',1,2,'1','Blogger',2,'No fields changed.'),(80,'2012-08-29 17:08:16',1,2,'2','Admin',1,''),(81,'2012-08-29 17:08:25',1,2,'2','Admin',2,'No fields changed.'),(82,'2012-08-29 17:09:29',1,2,'2','Admin',2,'Changed permissions.'),(83,'2012-08-29 17:09:41',1,2,'2','Staff',2,'Changed name.'),(84,'2012-08-29 17:10:41',1,3,'2','piyushroshan',2,'Changed password, is_staff and groups.'),(85,'2012-08-29 17:11:21',1,3,'2','piyushroshan',2,'Changed password, first_name, last_name and email.'),(86,'2012-08-29 17:11:37',1,3,'3','dummyuser',2,'Changed username and password.'),(87,'2012-08-29 17:11:53',1,3,'3','dummyuser',2,'Changed password and first_name.'),(88,'2012-08-29 17:13:18',1,3,'2','piyushroshan',2,'Changed password.'),(89,'2012-08-29 22:09:24',1,8,'6','Partners: <p>\"But I must explain to you how all this mistaken idea of ',2,'No fields changed.'),(90,'2012-08-29 22:09:30',1,8,'4','Blog Entry: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(91,'2012-08-29 22:09:34',1,8,'3','TEDx NITCalicut: <p><span>It is a long established fact that a reader will be',2,'No fields changed.'),(92,'2012-08-29 22:09:38',1,8,'2','Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te',2,'No fields changed.'),(93,'2012-08-29 22:09:42',1,8,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed',2,'No fields changed.'),(94,'2012-08-30 21:44:55',1,9,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed: nice1',1,''),(95,'2012-08-30 21:46:44',1,9,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed: nice1',2,'No fields changed.'),(96,'2012-08-30 21:51:47',1,9,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed: nice1',2,'Changed newimage.'),(97,'2012-08-30 22:23:56',1,2,'1','Blogger',2,'No fields changed.'),(98,'2012-08-30 22:25:00',1,3,'2','piyushroshan',2,'Changed password.'),(99,'2012-08-30 22:32:01',1,9,'1','Blog Entry: <p>. This is a free typing test that tests your typing speed: this is bakwas',1,''),(100,'2012-08-30 22:43:57',1,8,'1','As the going gets tough, the tough gets going!: <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//E',1,''),(101,'2012-08-30 22:58:00',1,8,'1','As the going gets tough, the tough gets going!: <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//E',2,'Changed body.'),(102,'2012-08-30 22:58:36',1,8,'1','As the going gets tough, the tough gets going!: <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//E',2,'No fields changed.'),(103,'2012-08-30 22:59:26',1,8,'1','As the going gets tough, the tough gets going!: <p>Wow! When we look back, we realize that we have indeed co',2,'Changed body.'),(104,'2012-08-30 23:00:30',1,8,'1','As the going gets tough, the tough gets going!: <p style=\"margin: 0px 0px 1em; color: #363636; font-family: ',2,'Changed body.'),(105,'2012-08-30 23:01:48',1,8,'1','As the going gets tough, the tough gets going!: <p>Wow! When we look back, we realize that we have indeed co',2,'Changed body.'),(106,'2012-08-30 23:03:14',1,8,'1','As the going gets tough, the tough gets going!: <p>Wow! When we look back, we realize that we have indeed co',2,'Changed body.'),(107,'2012-08-30 23:22:30',1,8,'2','Blog Entry: <p>hello</p>',1,''),(108,'2012-08-30 23:22:56',1,8,'2','Blog Entry: <p>hello</p>',3,''),(109,'2012-09-08 11:52:35',2,8,'2','Blog Entry: <p><img style=\"vertical-align: middle; border: 2px solid bla',1,''),(110,'2012-09-08 11:57:02',2,8,'3','Blog Entry: <p style=\"margin: 15px 0px; padding: 0px; border: 0px; color',1,''),(111,'2012-09-08 12:06:13',2,8,'3','Blog Entry: <p>GitHub is the best place to share code with friends, co-w',2,'Changed body.'),(112,'2012-09-16 11:40:26',1,8,'3','Blog Entry: <p>GitHub is the best place to share code with friends, co-w',2,'No fields changed.'),(113,'2012-09-16 18:23:18',1,6,'1','tedxnitcalicut.com',2,'Changed domain and name.'),(114,'2012-09-16 18:46:11',1,8,'3','Blog Entry: <p>GitHub is the best place to share code with friends, co-w',3,''),(115,'2012-09-16 18:59:09',1,3,'4','mayukh',1,''),(116,'2012-09-16 19:00:06',1,3,'4','mayukh',2,'Changed password and groups.'),(117,'2012-09-16 19:01:05',1,3,'4','mayukh',2,'Changed password and groups.'),(118,'2012-09-16 19:02:16',1,3,'4','mayukh',2,'Changed password, is_staff and groups.'),(119,'2012-09-16 20:29:39',1,8,'4','That was moi talk at TEDxNITCalicut !: <p><iframe src=\"http://www.youtube.com/embed/dzR1oWNzDaM\" fr',1,''),(120,'2012-09-16 20:30:34',1,8,'4','That was moi talk at TEDxNITCalicut !: <p><iframe src=\"http://www.youtube.com/embed/dzR1oWNzDaM\" fr',3,''),(121,'2012-09-17 13:35:56',1,3,'4','tedxblog',2,'Changed username and password.'),(122,'2012-09-18 16:03:59',1,3,'4','tedxblog',3,''),(123,'2012-09-18 16:04:25',1,3,'5','mayukh',1,''),(124,'2012-09-18 16:04:46',1,3,'5','mayukh',2,'Changed password, first_name, is_staff and groups.'),(125,'2012-09-18 16:05:32',1,3,'6','marilyn',1,''),(126,'2012-09-18 16:05:49',1,3,'6','marilyn',2,'Changed password, first_name, is_staff and groups.'),(127,'2012-09-19 12:58:09',6,8,'1','As the going gets tough, the tough gets going!: <p>Wow! When we look back, we realize that we have indeed co',2,'Changed body.'),(128,'2012-09-19 12:58:36',6,8,'1','As the going gets tough, the tough gets going!: <p>Wow! When we look back, we realize that we have indeed co',2,'Changed body and user_id.'),(129,'2012-09-19 13:05:51',1,3,'5','mayukh',2,'Changed password.'),(130,'2012-09-20 16:26:35',5,8,'2','A New Beginning: <p class=\"MsoNormal\">Jaisim, the Howard Roark of Indian arch',1,''),(131,'2012-09-20 21:58:21',1,2,'1','Blogger',2,'Changed permissions.'),(132,'2012-09-20 21:58:45',1,3,'3','dummyuser',3,''),(133,'2012-09-20 22:00:40',1,8,'1','As the going gets tough, the tough gets going!: <p>Wow! When we look back, we realize that we have indeed co',3,''),(134,'2012-09-20 22:01:29',1,7,'8','contactform object',3,''),(135,'2012-09-20 22:01:30',1,7,'7','contactform object',3,''),(136,'2012-09-20 22:01:30',1,7,'6','contactform object',3,''),(137,'2012-09-20 22:01:30',1,7,'4','contactform object',3,''),(138,'2012-09-20 22:01:30',1,7,'3','contactform object',3,''),(139,'2012-09-20 22:01:30',1,7,'2','contactform object',3,''),(140,'2012-09-20 22:01:30',1,7,'1','contactform object',3,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'contactform','contactus','contactform'),(8,'blogpost','blogs','blogpost'),(9,'comment','blogs','comment'),(10,'registration profile','registration','registrationprofile'),(11,'user profile','registration','userprofile'),(12,'vote','voting','vote'),(13,'nominee','nominations','nominee'),(14,'log entry','admin','logentry'),(15,'migration history','south','migrationhistory'),(16,'flat page','flatpages','flatpage'),(17,'kv store','thumbnail','kvstore');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage`
--

DROP TABLE IF EXISTS `django_flatpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_flatpage` (
  `id` int(11) NOT NULL,
  `url` char(1) NOT NULL,
  `title` char(1) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(100) NOT NULL,
  `registration_required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage`
--

LOCK TABLES `django_flatpage` WRITE;
/*!40000 ALTER TABLE `django_flatpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_flatpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('06da75cef5722fd402d71e27d92c5d40','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-15 16:45:50'),('0b36632e086591c042afed9fd21124e8','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-13 18:06:58'),('0f1af98dce2adb88db414040aee1b2a2','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-09-19 14:16:32'),('14c817524d60028fac4b8b511320f84a','MmI3NDRiODg1YmViNjhmMTM1ODAzODA4MWRiOWE0OTI5YTE2YTg3NTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==\n','2012-09-22 10:50:54'),('1608e8155d9ef39d5e0046072ec44752','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-30 11:38:54'),('23ab63e332266cbc124644f843e531af','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-30 10:19:24'),('25ddada73ffbf1c55544f0b780e952e1','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-16 11:22:16'),('276f72bf6393ce57f7da75225d181146','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-10-03 13:01:31'),('369f3e29320030384bff4c845759fda6','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-09-11 04:55:59'),('3ab04750f81bfc5ceb2bef89bfc83487','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-09-30 13:15:20'),('3bc8f6cb90efc9d8b9ae28010c698ca2','YjUxYjk4MmFmNzZhNzlmY2UzZTMwYjlkMWM0OWYyMjE1YzBhZjVmYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQV1Lg==\n','2012-10-02 16:12:49'),('3f0b88bd752870633b83fa7599b12193','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-26 06:07:44'),('413ee1ad3cc46d958fd5b669308ad187','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-26 12:22:28'),('4aaa5b41bd454de03d5e76bf3154ddff','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-26 11:53:04'),('5284add807d6629b774de987f8206246','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-26 18:26:16'),('52d002de04c665f777f87195e899b1ed','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-10 09:55:34'),('532aa35638c5294e5cd7e1e0700dd837','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-30 19:41:36'),('53df9e4ae3bd28592ab28a9ee9de58dc','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-10-04 10:38:33'),('5593d1a9fa44072d125ba17a6adcff32','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-28 16:13:42'),('57a2aabfd905106c48e3d0a5fbb03255','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-05 02:58:44'),('5afeb6081bd367f2ece669ad03b87553','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-05 19:32:14'),('5cfa5f46ab466ca4c2f30e638d189c13','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-28 16:23:37'),('5e19b8007eb784e0e7a5724604a84136','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-28 16:25:28'),('5f0c1fdc76ddabc72a8f4c0feae10a05','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-09 11:18:36'),('62520a5772857ac9c9a84ee30227a7b6','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-09-30 12:27:02'),('650d7d86508f7fd666208dcbf74fde0d','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-01 20:15:09'),('65f5e6d2d37c1d531f18cfe6055288ae','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-12 17:05:44'),('66764f33720b388ecf0c87302c763636','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-04 05:21:39'),('68a920d7c50d0b8af68b87e6dab9fb30','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-10-04 18:30:52'),('6b438e51389c174ad608c5ef04f9eb30','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-09-15 15:02:28'),('74e1304e70101fc97fee8913dcc6b2c7','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-08-28 16:20:50'),('775aa37e8223685afb2079854986d67e','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-10 11:06:13'),('7ad43a093811f8a8d6ac67b9bf6104b6','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-10-05 15:43:06'),('7b610694fc0ac6346a81bf65d032f6ef','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-13 18:10:53'),('835e7c33b041c4524d33e6fbe52ed9e9','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-10 07:18:47'),('8773568b2eead51de98f3b3c6de8e627','NzhiNjUwZTAxM2E3MzQwMWVhYWMzZDRlODRkM2U1ODNhMmU1Y2ZhNTqAAn1xAS4=\n','2012-10-02 16:29:22'),('8f09fd2ff22d0970d7524917f8cb30a2','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-11 07:02:56'),('8fdaffb201d3991daf4ed2967f31e016','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-13 17:41:19'),('967431332e5e128afdd41d7dd4750e32','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-12 09:33:11'),('9d400aa146d1ace18ac2ab1f3594f4fb','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-10-04 22:32:36'),('9d729ae9ccaaacff3649684ecd10b650','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-11 07:14:41'),('a4cf65fa2ae9ae11eda05052f8ecf879','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-10 15:38:36'),('a98c1d036b8603f4934f02e40dcdeddf','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-30 13:24:10'),('adc9ad9c73a844dd0bf69b3b0b1aee18','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-11 06:43:47'),('b225b9480b3df635413f1eec0ff4ef14','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-08-28 16:14:31'),('b66be56315aed25c2622fdc365e1ff80','NzhiNjUwZTAxM2E3MzQwMWVhYWMzZDRlODRkM2U1ODNhMmU1Y2ZhNTqAAn1xAS4=\n','2012-10-01 18:58:45'),('b9d953e4ced89fd4ec8fef64b36808bc','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-09-10 07:54:59'),('bd8d105636f15712379dce0a2cc16d0b','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-11 06:32:27'),('c78e3e6be22e82c0859961e81623869f','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-30 10:46:27'),('cbf5041fc0339fefd6d40d1a82367a58','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-01 15:21:29'),('ceb86a2e75a868f6c971b727e713f793','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-12 16:39:42'),('d2d8c52fe562011648b30bde5e9ac137','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-09-12 16:09:58'),('d6476b2fc2d301a884b56bc7ed6663a0','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-10-02 00:37:48'),('dd99082c43c00e6afc09a9ab18cfe479','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-10 18:49:38'),('e30f0125e33823f9b76ccb4e21f4b593','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-08-28 16:18:54'),('e76cef962bad2244926f3900b2a4b9ce','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-22 16:37:00'),('e9d429421fe9dd27504adb5d24f01de7','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-09-30 12:18:17'),('eb9c7bc05a830e3eea8ccbf25f4f4893','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-09-30 19:43:27'),('f39654d5dc3ccd5e369cd56a74bfd1f5','MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n','2012-10-01 14:43:05'),('f4d230d35df3c9e930c89635d355862e','ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-08-28 19:39:25'),('fcdbc0ae102ed484c4f8d7855686f927','MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-09-10 07:54:57');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'tedxnitcalicut.com','tedxnitcalicut.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nominations_nominee`
--

DROP TABLE IF EXISTS `nominations_nominee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nominations_nominee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `support` longtext NOT NULL,
  `reference1` longtext NOT NULL,
  `slug` varchar(50) NOT NULL,
  `nominated_on` datetime NOT NULL,
  `nominator_phone` varchar(25) NOT NULL,
  `nominator_email` varchar(128) NOT NULL,
  `nominator_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nominations_nominee_a951d5d6` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nominations_nominee`
--

LOCK TABLES `nominations_nominee` WRITE;
/*!40000 ALTER TABLE `nominations_nominee` DISABLE KEYS */;
INSERT INTO `nominations_nominee` VALUES (1,'Roshan Piyush','piyushroshan@gmail.com','919447884634','Occupation? Honors or Distinctions? Recent Work?','Occupation? Honors or Distinctions? Recent Work?','Occupation? Honors or Distinctions? Recent Work?','2012-09-01-153225372782-piyushroshangmailcom','2012-09-01 10:02:25','919447884634','ssss@gmail.com','Roshan Piyush');
/*!40000 ALTER TABLE `nominations_nominee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  `key_generated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_cecd7f3c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
INSERT INTO `registration_registrationprofile` VALUES (1,3,'3e60a404d7fe59f34e5e18b43ec653b83439be10','2012-08-08 10:21:58');
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_userprofile`
--

DROP TABLE IF EXISTS `registration_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `home_address` longtext NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_9dd3e85e` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_userprofile`
--

LOCK TABLES `registration_userprofile` WRITE;
/*!40000 ALTER TABLE `registration_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'blogs','0001_initial','2012-08-12 12:57:35');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnail_kvstore`
--

DROP TABLE IF EXISTS `thumbnail_kvstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnail_kvstore`
--

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `vote` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`content_type_id`,`object_id`),
  KEY `votes_fbfc09f1` (`user_id`),
  KEY `votes_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_e1387e86` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_f86a5ef6` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (66,2,13,1,1),(78,1,13,3,1),(79,1,13,1,1);
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-22 11:25:01
