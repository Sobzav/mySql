-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: u0959358.isp.regruhosting.ru    Database: u0959358_sobzav
-- ------------------------------------------------------
-- Server version	5.7.23-24

--
-- Dumping data for table `cell`
--

LOCK TABLES `cell` WRITE;
/*!40000 ALTER TABLE `cell` DISABLE KEYS */;
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (1,1);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (2,1);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (3,1);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (4,1);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (5,2);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (6,2);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (7,2);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (8,2);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (9,2);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (10,2);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (11,2);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (12,2);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (13,3);
INSERT  IGNORE INTO `cell` (`id`, `container_id`) VALUES (14,3);
/*!40000 ALTER TABLE `cell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cell_type`
--

LOCK TABLES `cell_type` WRITE;
/*!40000 ALTER TABLE `cell_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `cell_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `container`
--

LOCK TABLES `container` WRITE;
/*!40000 ALTER TABLE `container` DISABLE KEYS */;
INSERT  IGNORE INTO `container` (`id`, `tray_id`, `name`) VALUES (1,1,'Контейнер 1');
INSERT  IGNORE INTO `container` (`id`, `tray_id`, `name`) VALUES (2,1,'Контейнер 2');
INSERT  IGNORE INTO `container` (`id`, `tray_id`, `name`) VALUES (3,2,'Контейнер 1');
INSERT  IGNORE INTO `container` (`id`, `tray_id`, `name`) VALUES (4,2,'Контейнер 2');
/*!40000 ALTER TABLE `container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `container_type`
--

LOCK TABLES `container_type` WRITE;
/*!40000 ALTER TABLE `container_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `container_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
INSERT  IGNORE INTO `floor` (`id`, `zone_id`, `name`) VALUES (1,1,'Этаж 1');
INSERT  IGNORE INTO `floor` (`id`, `zone_id`, `name`) VALUES (2,1,'Этаж 2');
INSERT  IGNORE INTO `floor` (`id`, `zone_id`, `name`) VALUES (3,1,'Этаж 3');
INSERT  IGNORE INTO `floor` (`id`, `zone_id`, `name`) VALUES (4,2,'Этаж 1');
INSERT  IGNORE INTO `floor` (`id`, `zone_id`, `name`) VALUES (5,3,'Этаж 1');
INSERT  IGNORE INTO `floor` (`id`, `zone_id`, `name`) VALUES (6,4,'Этаж 1');
INSERT  IGNORE INTO `floor` (`id`, `zone_id`, `name`) VALUES (7,5,'Этаж 1');
INSERT  IGNORE INTO `floor` (`id`, `zone_id`, `name`) VALUES (8,6,'Этаж 1');
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `floor_type`
--

LOCK TABLES `floor_type` WRITE;
/*!40000 ALTER TABLE `floor_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `floor_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `legal`
--

LOCK TABLES `legal` WRITE;
/*!40000 ALTER TABLE `legal` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (1,1,'Линия 1');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (2,1,'Линия 2');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (3,1,'Линия 3');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (4,2,'Линия 1');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (5,2,'Линия 2');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (6,2,'Линия 3');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (7,3,'Линия 1');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (8,3,'Линия 2');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (9,3,'Линия 3');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (10,4,'Линия 1');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (11,4,'Линия 2');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (12,4,'Линия 3');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (13,5,'Линия 1');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (14,5,'Линия 2');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (15,5,'Линия 3');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (16,6,'Линия 1');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (17,6,'Линия 2');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (18,6,'Линия 3');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (19,7,'Линия 1');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (20,7,'Линия 2');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (21,7,'Линия 3');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (22,8,'Линия 1');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (23,8,'Линия 2');
INSERT  IGNORE INTO `line` (`id`, `floor_id`, `name`) VALUES (24,8,'Линия 3');
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `line_type`
--

LOCK TABLES `line_type` WRITE;
/*!40000 ALTER TABLE `line_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `line_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT  IGNORE INTO `material` (`id`, `name`) VALUES (1,'Картон');
INSERT  IGNORE INTO `material` (`id`, `name`) VALUES (2,'Полипропилен');
INSERT  IGNORE INTO `material` (`id`, `name`) VALUES (3,'Металл');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_phys_pers`
--

LOCK TABLES `order_phys_pers` WRITE;
/*!40000 ALTER TABLE `order_phys_pers` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_phys_pers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (1,'BС01','Ячейка пластикового лотка',NULL,NULL,1000,25,25,30,0,0,0,'9DE0AD','2020-02-25 15:20:30',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (4,'500.1','Стилаж с наполнением',1,NULL,900000,1000,2700,498,1000,2700,498,'006d8f','2020-02-25 15:20:30',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (5,'B500.11','Полка стилажа',3,NULL,100000,1000,200,500,0,0,0,'006D8F','2020-02-25 15:20:30',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (6,'B500.12','Полка стилажа',3,NULL,100000,1000,300,500,0,0,0,'004D65','2020-02-25 15:20:30',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (8,'B012','Контейнер пластиковый 120x120x60',NULL,NULL,0,112,53,112,112,53,112,'4aaa86','2020-02-10 05:21:21',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (9,'B008','Контейнер пластиковый 40x40x28',NULL,NULL,0,36,36,26,36,36,26,'000000','2020-02-10 05:34:28',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (10,'B016','Контейнер пластиковый 40x40x47',NULL,NULL,0,36,36,43,36,36,43,'000000','2020-02-10 05:36:33',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (11,'B017','Контейнер пластиковый 52x50x55',NULL,NULL,0,51,49,55,51,49,55,'000000','2020-02-10 05:37:05',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (12,'B007','Контейнер пластиковый 100x82x25',NULL,NULL,0,98,81,23,98,81,23,'000000','2020-02-10 05:42:56',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (13,'B001','Контейнер пластиковый',NULL,NULL,0,121,36,76,114,30,68,'c9fffd','2020-02-10 05:45:35',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (14,'B014','Контейнер пластиковый 150x66x95',NULL,NULL,0,145,60,86,145,60,86,'000000','2020-02-10 05:52:24',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (15,'B013','Контейнер пластиковый 180x105x88',NULL,NULL,0,172,98,80,172,98,80,'000000','2020-02-10 05:54:51',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (16,'B006','Контейнер пластиковый 208x82x45',NULL,NULL,0,77,34,202,77,34,202,'4c90a7','2020-02-10 05:58:05',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (17,'B011','Контейнер пластиковый 240x110x65',NULL,NULL,0,99,56,234,99,56,234,'cde5ff','2020-02-10 06:00:23',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (18,'B003','Контейнер пластиковый',NULL,NULL,0,25,34,23,21,31,19,'5371a9','2020-02-10 06:01:19',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (19,'B004','Контейнер пластиковый 70x39x88',NULL,NULL,0,66,83,36,66,83,36,'000000','2020-02-10 06:03:37',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (20,'B009','Контейнер пластиковый 75x50x28',NULL,NULL,0,73,49,24,73,49,24,'000000','2020-02-10 06:09:12',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (21,'B005','Контейнер пластиковый 80x60x45',NULL,NULL,0,79,37,58,79,37,58,'6a98c5','2020-02-10 06:10:33',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (24,'B015','Контейнер пластиковый 212х172х99',NULL,NULL,0,155,84,170,155,84,170,'000000','2020-02-10 07:58:40',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (25,'018.4','Лоток картонный с наполнением',NULL,NULL,0,82,46,483,82,46,483,'b76612','2020-02-10 10:59:57',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (26,'B019','Лоток картонный Тип 1',NULL,NULL,0,147,35,483,147,35,483,'bf8230','2020-02-11 03:01:07',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (27,'B020','Лоток картонный Тип 2',NULL,NULL,0,123,65,483,123,65,483,'a65f00','2020-02-11 03:10:20',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (28,'B021','Лоток картонный Три 3',NULL,NULL,0,180,100,483,180,100,483,'c87103','2020-02-11 03:10:57',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (29,'023.6','Лоток картонный с наполнением',NULL,NULL,0,123,35,483,123,35,483,'b57c60','2020-02-11 03:12:42',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (30,'B024','Лоток картонный Тип 6',NULL,NULL,0,82,47,383,82,47,383,'bf9b30','2020-02-11 03:13:19',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (31,'B025','Лоток картонный Тип 7',NULL,NULL,0,82,28,383,82,28,383,'bf9b31','2020-02-11 03:13:47',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (32,'B026','Лоток картонный Тип 8',NULL,NULL,0,147,35,383,147,35,383,'a67c00','2020-02-11 03:14:21',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (33,'B027','Лоток картонный Тип 9',NULL,NULL,0,123,65,383,123,65,383,'ffcf40','2020-02-11 03:14:50',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (34,'B028','Лоток картонный Тип 10',NULL,NULL,0,180,100,383,180,100,383,'e5c66b','2020-02-11 03:15:16',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (36,'B002','Контейнер пластиковый',NULL,NULL,0,145,35,85,139,29,79,'a1bfbe','2020-02-13 05:59:12',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (37,'B010','Контейнер пластиковый 165х120х58',NULL,NULL,0,114,52,159,114,52,159,'6a80a9','2020-02-13 06:00:16',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (42,'B029','Ящик металлический Тип 1',NULL,NULL,0,325,210,498,0,0,0,'0042aa','2020-02-25 18:53:20',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (43,'B030','Ящик металлический Тип 2',NULL,NULL,0,210,250,498,0,0,0,'204580','2020-02-25 18:57:18',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (45,'B031','Ящик металлический Тип 3',NULL,NULL,0,198,210,498,0,0,0,'002b6f','2020-02-25 18:58:36',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (46,'B032','Ящик металлический Тип 4',NULL,NULL,0,210,325,398,0,0,0,'3573d4','2020-02-25 18:59:24',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (47,'B033','Ящик металлический Тип 5',NULL,NULL,0,210,250,398,0,0,0,'608dd4','2020-02-25 18:59:58',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (49,'B034','Ящик металлический Тип 6',NULL,NULL,0,198,210,398,0,0,0,'6699ea','2020-02-25 19:01:23',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (51,'B035','Полка Тип 0',NULL,NULL,0,998,210,498,0,0,0,'0c8873','2020-02-25 19:02:54',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (53,'018.5','Лоток картонный с наполнением',NULL,NULL,0,82,46,483,82,46,483,'6b4b28','2020-02-25 19:04:18',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (54,'035.5','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'124459','2020-02-25 19:12:00',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (55,'021','Лоток картонный с наполнением',NULL,NULL,0,180,100,483,180,100,483,'c87103','2020-02-25 20:22:42',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (56,'019','Лоток картонный с наполнением',NULL,NULL,0,147,35,483,147,35,483,'bf8230','2020-02-25 21:01:04',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (58,'035.1','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'0ea035','2020-02-25 21:10:08',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (59,'020.1','Лоток картонный с наполнением',NULL,NULL,0,123,65,483,123,65,483,'7d601f','2020-02-25 22:23:14',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (60,'035.2','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'0c8873','2020-02-25 22:31:29',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (61,'020.2','Лоток картонный с наполнением',NULL,NULL,0,123,65,483,123,65,483,'5e5329','2020-02-25 22:33:34',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (62,'021.1','Лоток картонный с наполнением',NULL,NULL,0,180,100,483,180,100,483,'c87103','2020-02-25 22:40:53',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (63,'019.3','Лоток картонный с наполнением',NULL,NULL,0,147,35,483,147,35,483,'956527','2020-02-25 22:48:22',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (64,'035.3','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'1c3f32','2020-02-25 22:55:25',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (65,'035.4','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'1b333b','2020-02-25 23:02:54',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (66,'B018','Лоток картонный Тип 0',NULL,NULL,0,82,46,483,82,46,483,'b58c60','2020-02-25 23:10:59',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (67,'035.6','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'2d7760','2020-02-25 23:25:47',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (68,'B023','Лоток картонный Тип 5',NULL,NULL,0,123,35,483,123,35,483,'e3983c','2020-02-25 23:28:23',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (69,'035.7','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'3ec3ad','2020-02-25 23:36:09',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (70,'021.7','Лоток картонный с наполнением',NULL,NULL,0,180,100,483,180,100,483,'c87103','2020-02-25 23:38:32',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (71,'021.8','Лоток картонный с наполнением',NULL,NULL,0,180,100,483,180,100,483,'eba575','2020-02-25 23:42:11',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (72,'035.8','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'2f9b8a','2020-02-25 23:44:23',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (73,'035.9','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'14578a','2020-02-25 23:46:39',NULL,NULL);
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`) VALUES (74,'400.1','Стилаж с наполнением',NULL,NULL,900000,1000,2700,398,1000,2700,398,'3a88fe','2020-02-26 00:31:59',NULL,NULL);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `package_photo`
--

LOCK TABLES `package_photo` WRITE;
/*!40000 ALTER TABLE `package_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `packing0`
--

LOCK TABLES `packing0` WRITE;
/*!40000 ALTER TABLE `packing0` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `packing1`
--

LOCK TABLES `packing1` WRITE;
/*!40000 ALTER TABLE `packing1` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `packing2`
--

LOCK TABLES `packing2` WRITE;
/*!40000 ALTER TABLE `packing2` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `packing3`
--

LOCK TABLES `packing3` WRITE;
/*!40000 ALTER TABLE `packing3` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `packing4`
--

LOCK TABLES `packing4` WRITE;
/*!40000 ALTER TABLE `packing4` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payer`
--

LOCK TABLES `payer` WRITE;
/*!40000 ALTER TABLE `payer` DISABLE KEYS */;
/*!40000 ALTER TABLE `payer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payer_type`
--

LOCK TABLES `payer_type` WRITE;
/*!40000 ALTER TABLE `payer_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `payer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (2,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (3,1,1,1,1,1,1,1,1,1,1,1,1,1);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (4,1,1,1,1,1,1,1,1,4,1,1,1,1);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (5,1,1,1,1,1,1,1,1,5,1,1,1,1);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (6,1,1,1,1,1,1,1,1,6,1,1,1,4);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (7,1,1,1,1,1,1,1,1,7,1,1,1,4);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (8,1,1,1,1,1,1,1,1,8,1,1,1,4);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (9,1,1,1,1,1,1,1,1,9,1,1,1,4);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (10,1,1,1,1,1,1,1,1,10,1,1,1,4);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (11,1,1,1,1,1,1,1,1,11,1,1,1,4);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (12,1,1,1,1,1,1,1,1,12,1,1,1,4);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (13,1,1,1,1,1,1,1,1,13,1,1,1,13);
INSERT  IGNORE INTO `place` (`id`, `warehouse_id`, `zone_id`, `floor_id`, `line_id`, `rack_id`, `shelf_id`, `tray_id`, `container_id`, `cell_id`, `place_type_id`, `place_status_id`, `place_purpose_id`, `package_id`) VALUES (14,1,1,1,1,1,1,1,1,14,1,1,1,13);
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `place_prototype`
--

LOCK TABLES `place_prototype` WRITE;
/*!40000 ALTER TABLE `place_prototype` DISABLE KEYS */;
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (116,59,17,12,5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (117,59,17,12,244);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (998,69,70,409,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1003,69,70,409,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1035,72,71,409,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1040,72,28,409,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1135,25,21,1.5,5.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1136,25,16,2.5,68.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1137,25,16,2.5,275.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1138,53,21,1.5,2.111111111111111);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1139,53,21,1.5,62.22222222222223);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1140,53,21,1.5,122.33333333333334);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1141,53,21,1.5,182.44444444444446);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1142,53,21,1.5,242.55555555555557);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1143,53,21,1.5,302.66666666666663);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1144,53,21,1.5,362.7777777777777);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1145,53,21,1.5,422.8888888888888);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1160,61,37,4.5,13.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1161,61,37,4.5,185.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1162,61,8,5.5,357.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1163,55,19,16,26.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1164,55,19,98,26.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1165,55,24,12.5,89.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1166,55,24,12.5,286.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1182,70,19,16,26.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1183,70,19,98,26.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1184,70,24,12.5,89.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1185,70,24,12.5,286.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1186,71,15,4,11.833333333333334);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1187,71,15,4,103.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1188,71,15,4,195.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1189,71,14,17.5,287.3333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1190,71,14,17.5,385.16666666666663);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1197,58,27,17.125,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1198,58,27,157.25,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1199,58,27,297.375,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1200,58,27,437.5,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1201,58,27,577.625,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1202,58,27,717.75,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1203,58,27,857.875,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1204,58,59,17.125,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1205,58,59,157.25,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1206,58,59,297.375,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1207,58,59,437.5,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1208,58,59,577.625,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1209,58,59,717.75,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1210,58,59,857.875,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1211,58,59,17.125,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1212,58,59,157.25,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1213,58,59,297.375,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1214,58,59,437.5,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1215,58,59,577.625,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1216,58,59,717.75,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1217,58,59,857.875,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1218,60,61,17.125,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1219,60,61,157.25,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1220,60,61,297.375,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1221,60,61,437.5,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1222,60,61,577.625,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1223,60,61,717.75,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1224,60,61,857.875,5.75);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1225,60,61,17.125,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1226,60,61,157.25,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1227,60,61,297.375,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1228,60,61,437.5,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1229,60,61,577.625,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1230,60,61,717.75,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1231,60,61,857.875,76.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1232,60,61,17.125,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1233,60,61,157.25,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1234,60,61,297.375,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1235,60,61,437.5,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1236,60,61,577.625,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1237,60,61,717.75,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1238,60,61,857.875,147.25);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1239,64,63,16.571428571428573,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1240,64,63,180.14285714285717,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1241,64,63,343.7142857142857,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1242,64,63,507.2857142857143,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1243,64,63,670.8571428571428,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1244,64,63,834.4285714285713,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1245,64,63,16.571428571428573,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1246,64,63,180.14285714285717,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1247,64,63,343.7142857142857,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1248,64,63,507.2857142857143,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1249,64,63,670.8571428571428,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1250,64,63,834.4285714285713,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1251,64,63,16.571428571428573,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1252,64,63,180.14285714285717,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1253,64,63,343.7142857142857,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1254,64,63,507.2857142857143,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1255,64,63,670.8571428571428,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1256,64,63,834.4285714285713,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1257,64,63,16.571428571428573,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1258,64,63,180.14285714285717,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1259,64,63,343.7142857142857,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1260,64,63,507.2857142857143,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1261,64,63,670.8571428571428,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1262,64,63,834.4285714285713,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1263,64,26,16.571428571428573,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1264,64,26,180.14285714285717,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1265,64,26,343.7142857142857,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1266,64,26,507.2857142857143,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1267,64,26,670.8571428571428,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1268,64,26,834.4285714285713,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1269,65,25,16.181818181818183,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1270,65,25,114.36363636363637,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1271,65,25,212.54545454545456,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1272,65,25,310.72727272727275,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1273,65,25,408.90909090909093,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1274,65,25,507.0909090909091,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1275,65,25,605.2727272727273,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1276,65,25,703.4545454545454,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1277,65,25,801.6363636363635,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1278,65,25,899.8181818181816,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1279,65,25,16.181818181818183,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1280,65,25,114.36363636363637,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1281,65,25,212.54545454545456,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1282,65,25,310.72727272727275,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1283,65,25,408.90909090909093,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1284,65,25,507.0909090909091,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1285,65,25,605.2727272727273,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1286,65,25,703.4545454545454,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1287,65,25,801.6363636363635,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1288,65,25,899.8181818181816,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1289,65,25,16.181818181818183,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1290,65,25,114.36363636363637,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1291,65,25,212.54545454545456,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1292,65,25,310.72727272727275,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1293,65,25,408.90909090909093,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1294,65,25,507.0909090909091,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1295,65,25,605.2727272727273,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1296,65,25,703.4545454545454,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1297,65,25,801.6363636363635,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1298,65,25,899.8181818181816,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1299,65,66,16.181818181818183,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1300,65,66,114.36363636363637,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1301,65,66,212.54545454545456,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1302,65,66,310.72727272727275,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1303,65,66,408.90909090909093,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1304,65,66,507.0909090909091,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1305,65,66,605.2727272727273,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1306,65,66,703.4545454545454,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1307,65,66,801.6363636363635,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1308,65,66,899.8181818181816,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1309,54,53,16.181818181818183,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1310,54,53,114.36363636363637,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1311,54,53,212.54545454545456,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1312,54,53,310.72727272727275,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1313,54,53,408.90909090909093,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1314,54,53,507.0909090909091,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1315,54,53,605.2727272727273,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1316,54,53,703.4545454545454,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1317,54,53,801.6363636363635,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1318,54,53,899.8181818181816,6.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1319,54,53,16.181818181818183,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1320,54,53,114.36363636363637,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1321,54,53,212.54545454545456,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1322,54,53,310.72727272727275,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1323,54,53,408.90909090909093,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1324,54,53,507.0909090909091,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1325,54,53,605.2727272727273,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1326,54,53,703.4545454545454,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1327,54,53,801.6363636363635,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1328,54,53,899.8181818181816,59.599999999999994);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1329,54,53,16.181818181818183,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1330,54,53,114.36363636363637,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1331,54,53,212.54545454545456,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1332,54,53,310.72727272727275,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1333,54,53,408.90909090909093,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1334,54,53,507.0909090909091,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1335,54,53,605.2727272727273,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1336,54,53,703.4545454545454,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1337,54,53,801.6363636363635,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1338,54,53,899.8181818181816,112.39999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1339,54,66,16.181818181818183,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1340,54,66,114.36363636363637,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1341,54,66,212.54545454545456,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1342,54,66,310.72727272727275,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1343,54,66,408.90909090909093,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1344,54,66,507.0909090909091,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1345,54,66,605.2727272727273,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1346,54,66,703.4545454545454,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1347,54,66,801.6363636363635,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1348,54,66,899.8181818181816,165.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1349,67,29,17.125,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1350,67,29,157.25,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1351,67,29,297.375,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1352,67,29,437.5,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1353,67,29,577.625,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1354,67,29,717.75,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1355,67,29,857.875,7.166666666666667);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1356,67,29,17.125,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1357,67,29,157.25,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1358,67,29,297.375,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1359,67,29,437.5,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1360,67,29,577.625,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1361,67,29,717.75,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1362,67,29,857.875,49.33333333333333);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1363,67,29,17.125,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1364,67,29,157.25,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1365,67,29,297.375,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1366,67,29,437.5,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1367,67,29,577.625,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1368,67,29,717.75,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1369,67,29,857.875,91.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1370,67,68,17.125,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1371,67,68,157.25,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1372,67,68,297.375,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1373,67,68,437.5,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1374,67,68,577.625,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1375,67,68,717.75,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1376,67,68,857.875,133.66666666666666);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1377,67,68,17.125,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1378,67,68,157.25,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1379,67,68,297.375,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1380,67,68,437.5,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1381,67,68,577.625,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1382,67,68,717.75,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1383,67,68,857.875,175.83333333333331);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1384,69,70,16.333333333333332,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1385,69,70,212.66666666666669,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1386,69,70,605.3333333333334,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1387,69,70,801.6666666666667,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1388,69,70,16.333333333333332,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1389,69,70,212.66666666666669,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1390,69,70,605.3333333333334,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1391,69,70,801.6666666666667,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1392,72,71,16.333333333333332,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1393,72,71,212.66666666666669,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1394,72,71,605.3333333333334,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1395,72,71,801.6666666666667,6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1396,72,28,16.333333333333332,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1397,72,28,212.66666666666669,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1398,72,28,605.3333333333334,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1399,72,28,801.6666666666667,112);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1400,73,42,336.5,4);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1401,4,58,1,73.8);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1402,4,60,1,365.6);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1403,4,64,1,657.4);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1404,4,65,1,949.1999999999999);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1405,4,54,1,1240.9999999999998);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1406,4,67,1,1532.7999999999997);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1407,4,69,1,1824.5999999999997);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1408,4,72,1,2116.3999999999996);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1409,4,73,1,2408.2);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1440,63,18,3.6666666666666665,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1441,63,18,32.333333333333336,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1442,63,18,61,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1443,63,18,89.66666666666667,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1444,63,18,118.33333333333334,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1445,63,18,3.6666666666666665,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1446,63,18,32.333333333333336,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1447,63,18,61,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1448,63,18,89.66666666666667,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1449,63,18,118.33333333333334,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1450,63,36,1,50.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1451,63,36,1,137);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1452,63,36,1,223.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1453,63,36,1,310);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1454,63,36,1,396.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1485,62,18,9.166666666666666,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1486,62,18,43.33333333333333,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1487,62,18,77.5,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1488,62,18,111.66666666666667,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1489,62,18,145.83333333333334,1.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1490,62,18,9.166666666666666,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1491,62,18,43.33333333333333,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1492,62,18,77.5,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1493,62,18,111.66666666666667,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1494,62,18,145.83333333333334,26);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1495,62,36,17.5,50.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1496,62,36,17.5,137);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1497,62,36,17.5,223.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1498,62,36,17.5,310);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1499,62,36,17.5,396.5);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1500,29,13,1,3.857142857142857);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1501,29,13,1,83.71428571428572);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1502,29,13,1,163.57142857142858);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1503,29,13,1,243.42857142857144);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1504,29,13,1,323.2857142857143);
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `x`, `y`) VALUES (1505,29,13,1,403.1428571428571);
/*!40000 ALTER TABLE `place_prototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `place_purpose`
--

LOCK TABLES `place_purpose` WRITE;
/*!40000 ALTER TABLE `place_purpose` DISABLE KEYS */;
INSERT  IGNORE INTO `place_purpose` (`id`, `name`) VALUES (1,'Для хранения товара');
INSERT  IGNORE INTO `place_purpose` (`id`, `name`) VALUES (2,'Для хранения готовых заказов');
INSERT  IGNORE INTO `place_purpose` (`id`, `name`) VALUES (3,'Для хранения вновь поступившего товара');
/*!40000 ALTER TABLE `place_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `place_status`
--

LOCK TABLES `place_status` WRITE;
/*!40000 ALTER TABLE `place_status` DISABLE KEYS */;
INSERT  IGNORE INTO `place_status` (`id`, `name`) VALUES (1,'Свободно');
INSERT  IGNORE INTO `place_status` (`id`, `name`) VALUES (2,'Частично занято');
INSERT  IGNORE INTO `place_status` (`id`, `name`) VALUES (3,'Занято');
INSERT  IGNORE INTO `place_status` (`id`, `name`) VALUES (4,'В ремонте');
INSERT  IGNORE INTO `place_status` (`id`, `name`) VALUES (5,'В резерве');
INSERT  IGNORE INTO `place_status` (`id`, `name`) VALUES (6,'Удалено');
/*!40000 ALTER TABLE `place_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `place_type`
--

LOCK TABLES `place_type` WRITE;
/*!40000 ALTER TABLE `place_type` DISABLE KEYS */;
INSERT  IGNORE INTO `place_type` (`id`, `name`) VALUES (1,'Ячейка');
INSERT  IGNORE INTO `place_type` (`id`, `name`) VALUES (2,'Контейнер');
INSERT  IGNORE INTO `place_type` (`id`, `name`) VALUES (3,'Лоток');
INSERT  IGNORE INTO `place_type` (`id`, `name`) VALUES (4,'Полка');
INSERT  IGNORE INTO `place_type` (`id`, `name`) VALUES (5,'Площадка');
/*!40000 ALTER TABLE `place_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT  IGNORE INTO `product` (`id`, `product_type_id`, `product_category_id`, `h`, `w`, `l`, `weight`, `weight_verified`, `created`, `updated`, `deleted`) VALUES (1,1,1,90,25,20,90,0,'2020-02-25 15:20:16',NULL,NULL);
INSERT  IGNORE INTO `product` (`id`, `product_type_id`, `product_category_id`, `h`, `w`, `l`, `weight`, `weight_verified`, `created`, `updated`, `deleted`) VALUES (2,1,1,120,75,35,30,0,'2020-02-25 15:20:16',NULL,NULL);
INSERT  IGNORE INTO `product` (`id`, `product_type_id`, `product_category_id`, `h`, `w`, `l`, `weight`, `weight_verified`, `created`, `updated`, `deleted`) VALUES (3,1,1,70,70,70,12,0,'2020-02-25 15:20:16',NULL,NULL);
INSERT  IGNORE INTO `product` (`id`, `product_type_id`, `product_category_id`, `h`, `w`, `l`, `weight`, `weight_verified`, `created`, `updated`, `deleted`) VALUES (4,1,1,345,250,300,107,0,'2020-02-25 15:20:16',NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT  IGNORE INTO `product_category` (`id`, `name`) VALUES (1,'Штучный товар');
INSERT  IGNORE INTO `product_category` (`id`, `name`) VALUES (2,'Простое изделие');
INSERT  IGNORE INTO `product_category` (`id`, `name`) VALUES (3,'Сложное изделие');
INSERT  IGNORE INTO `product_category` (`id`, `name`) VALUES (4,'Профиль');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_composite`
--

LOCK TABLES `product_composite` WRITE;
/*!40000 ALTER TABLE `product_composite` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_composite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT  IGNORE INTO `product_info` (`id`, `name`, `description`, `image`) VALUES (1,'Продукт 1',NULL,NULL);
INSERT  IGNORE INTO `product_info` (`id`, `name`, `description`, `image`) VALUES (2,'Продукт 2',NULL,NULL);
INSERT  IGNORE INTO `product_info` (`id`, `name`, `description`, `image`) VALUES (3,'Продукт 3',NULL,NULL);
INSERT  IGNORE INTO `product_info` (`id`, `name`, `description`, `image`) VALUES (4,'Продукт 4',NULL,NULL);
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_kit`
--

LOCK TABLES `product_kit` WRITE;
/*!40000 ALTER TABLE `product_kit` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_kit_content`
--

LOCK TABLES `product_kit_content` WRITE;
/*!40000 ALTER TABLE `product_kit_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_kit_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_profile`
--

LOCK TABLES `product_profile` WRITE;
/*!40000 ALTER TABLE `product_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_simple`
--

LOCK TABLES `product_simple` WRITE;
/*!40000 ALTER TABLE `product_simple` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_simple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_simple_part`
--

LOCK TABLES `product_simple_part` WRITE;
/*!40000 ALTER TABLE `product_simple_part` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_simple_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_single`
--

LOCK TABLES `product_single` WRITE;
/*!40000 ALTER TABLE `product_single` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT  IGNORE INTO `product_type` (`id`, `name`) VALUES (1,'Штучный товар');
INSERT  IGNORE INTO `product_type` (`id`, `name`) VALUES (2,'Часть простого изделия');
INSERT  IGNORE INTO `product_type` (`id`, `name`) VALUES (3,'Простое изделие');
INSERT  IGNORE INTO `product_type` (`id`, `name`) VALUES (4,'Сложное изделие');
INSERT  IGNORE INTO `product_type` (`id`, `name`) VALUES (5,'Комплект товаров');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rack`
--

LOCK TABLES `rack` WRITE;
/*!40000 ALTER TABLE `rack` DISABLE KEYS */;
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (1,1,'Стилаж 1');
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (2,1,'Стилаж 2');
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (3,1,'Стилаж 3');
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (4,1,'Стилаж 4');
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (5,1,'Стилаж 5');
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (6,1,'Стилаж 6');
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (7,1,'Стилаж 7');
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (8,1,'Стилаж 8');
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (9,1,'Стилаж 9');
INSERT  IGNORE INTO `rack` (`id`, `line_id`, `name`) VALUES (10,1,'Стилаж 10');
/*!40000 ALTER TABLE `rack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `rack_type`
--

LOCK TABLES `rack_type` WRITE;
/*!40000 ALTER TABLE `rack_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `rack_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shelf`
--

LOCK TABLES `shelf` WRITE;
/*!40000 ALTER TABLE `shelf` DISABLE KEYS */;
INSERT  IGNORE INTO `shelf` (`id`, `rack_id`, `name`) VALUES (1,1,'Полка 1');
INSERT  IGNORE INTO `shelf` (`id`, `rack_id`, `name`) VALUES (2,1,'Полка 2');
INSERT  IGNORE INTO `shelf` (`id`, `rack_id`, `name`) VALUES (3,1,'Полка 3');
INSERT  IGNORE INTO `shelf` (`id`, `rack_id`, `name`) VALUES (4,1,'Полка 4');
INSERT  IGNORE INTO `shelf` (`id`, `rack_id`, `name`) VALUES (5,1,'Полка 5');
INSERT  IGNORE INTO `shelf` (`id`, `rack_id`, `name`) VALUES (6,1,'Полка 6');
INSERT  IGNORE INTO `shelf` (`id`, `rack_id`, `name`) VALUES (7,1,'Полка 7');
INSERT  IGNORE INTO `shelf` (`id`, `rack_id`, `name`) VALUES (8,1,'Полка 8');
INSERT  IGNORE INTO `shelf` (`id`, `rack_id`, `name`) VALUES (9,1,'Полка 9');
/*!40000 ALTER TABLE `shelf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shelf_type`
--

LOCK TABLES `shelf_type` WRITE;
/*!40000 ALTER TABLE `shelf_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `shelf_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tray`
--

LOCK TABLES `tray` WRITE;
/*!40000 ALTER TABLE `tray` DISABLE KEYS */;
INSERT  IGNORE INTO `tray` (`id`, `shelf_id`, `name`) VALUES (1,1,'Лоток 1');
INSERT  IGNORE INTO `tray` (`id`, `shelf_id`, `name`) VALUES (2,2,'Лоток 2');
INSERT  IGNORE INTO `tray` (`id`, `shelf_id`, `name`) VALUES (3,3,'Лоток 3');
INSERT  IGNORE INTO `tray` (`id`, `shelf_id`, `name`) VALUES (4,4,'Лоток 1');
INSERT  IGNORE INTO `tray` (`id`, `shelf_id`, `name`) VALUES (5,5,'Лоток 2');
INSERT  IGNORE INTO `tray` (`id`, `shelf_id`, `name`) VALUES (6,6,'Лоток 3');
/*!40000 ALTER TABLE `tray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tray_type`
--

LOCK TABLES `tray_type` WRITE;
/*!40000 ALTER TABLE `tray_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tray_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_payer`
--

LOCK TABLES `user_payer` WRITE;
/*!40000 ALTER TABLE `user_payer` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_payer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_recipient`
--

LOCK TABLES `user_recipient` WRITE;
/*!40000 ALTER TABLE `user_recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT  IGNORE INTO `warehouse` (`id`, `name`) VALUES (1,'Склад №1');
INSERT  IGNORE INTO `warehouse` (`id`, `name`) VALUES (2,'Склад №2');
INSERT  IGNORE INTO `warehouse` (`id`, `name`) VALUES (3,'Склад №3');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `warehouse_type`
--

LOCK TABLES `warehouse_type` WRITE;
/*!40000 ALTER TABLE `warehouse_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT  IGNORE INTO `zone` (`id`, `warehouse_id`, `name`) VALUES (1,1,'Зона №1');
INSERT  IGNORE INTO `zone` (`id`, `warehouse_id`, `name`) VALUES (2,1,'Зона №2');
INSERT  IGNORE INTO `zone` (`id`, `warehouse_id`, `name`) VALUES (3,2,'Зона №1');
INSERT  IGNORE INTO `zone` (`id`, `warehouse_id`, `name`) VALUES (4,2,'Зона №2');
INSERT  IGNORE INTO `zone` (`id`, `warehouse_id`, `name`) VALUES (5,3,'Зона №1');
INSERT  IGNORE INTO `zone` (`id`, `warehouse_id`, `name`) VALUES (6,3,'Зона №2');
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `zone_type`
--

LOCK TABLES `zone_type` WRITE;
/*!40000 ALTER TABLE `zone_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone_type` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2020-02-27 13:59:33
