CREATE DATABASE  IF NOT EXISTS `sobzav` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sobzav`;
-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: sobzav
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `addr_stage`
--

DROP TABLE IF EXISTS `addr_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addr_stage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование упаковки\nКак пример:\n	- Пакет полиэтиленовый\n	- Ячейка пластикового контейнера\n	- Контейнер пластиковый\n	- Коробка картонная\n	- Ящик деревянный\n	- Контейнер металический\n	- Палета деревянная\n	- Площадка открытая для хранения Крупногабаритного товара\n	и т.д….',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Содержит все возможные операции, выполняемые для складского адреса в порядке их выполнения \nId - идентификатор стадии\nname - наименование стадии';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr_stage`
--

LOCK TABLES `addr_stage` WRITE;
/*!40000 ALTER TABLE `addr_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `addr_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cell`
--

DROP TABLE IF EXISTS `cell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cell` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `container_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cell_container1_idx` (`container_id`),
  CONSTRAINT `fk_cell_to_container` FOREIGN KEY (`container_id`) REFERENCES `container` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cell`
--

LOCK TABLES `cell` WRITE;
/*!40000 ALTER TABLE `cell` DISABLE KEYS */;
/*!40000 ALTER TABLE `cell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cell_type`
--

DROP TABLE IF EXISTS `cell_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cell_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `container_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cell_container1_idx` (`container_id`),
  CONSTRAINT `fk_cell_to_container0` FOREIGN KEY (`container_id`) REFERENCES `container_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cell_type`
--

LOCK TABLES `cell_type` WRITE;
/*!40000 ALTER TABLE `cell_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `cell_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `container`
--

DROP TABLE IF EXISTS `container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `container` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tray_id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_container_tray1_idx` (`tray_id`),
  CONSTRAINT `fk_container_to_tray` FOREIGN KEY (`tray_id`) REFERENCES `tray` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `container`
--

LOCK TABLES `container` WRITE;
/*!40000 ALTER TABLE `container` DISABLE KEYS */;
/*!40000 ALTER TABLE `container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `container_type`
--

DROP TABLE IF EXISTS `container_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `container_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tray_id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_container_tray1_idx` (`tray_id`),
  CONSTRAINT `fk_container_to_tray0` FOREIGN KEY (`tray_id`) REFERENCES `tray_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `container_type`
--

LOCK TABLES `container_type` WRITE;
/*!40000 ALTER TABLE `container_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `container_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID покупателя',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor`
--

DROP TABLE IF EXISTS `floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `floor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` int(10) unsigned NOT NULL COMMENT 'Зона имеет несколько этажей от 0 до ...',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_floor_zone1_idx` (`zone_id`),
  CONSTRAINT `fk_floor_to_zone` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor_type`
--

DROP TABLE IF EXISTS `floor_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `floor_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` int(10) unsigned NOT NULL COMMENT 'Зона имеет несколько этажей от 0 до ...',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_floor_zone1_idx` (`zone_id`),
  CONSTRAINT `fk_floor_to_zone0` FOREIGN KEY (`zone_id`) REFERENCES `zone_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor_type`
--

LOCK TABLES `floor_type` WRITE;
/*!40000 ALTER TABLE `floor_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `floor_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal`
--

DROP TABLE IF EXISTS `legal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор плательщика (клиента) из таблицы payer',
  `tin` char(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tax Identification Number\nИдентификационный Номер Налогоплательщика',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование юр. лица',
  `address_id` int(10) unsigned NOT NULL,
  `account` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Номер расчетного счета',
  `kpp` char(9) COLLATE utf8_unicode_ci NOT NULL COMMENT 'КПП',
  `bic` char(9) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bank Identification Code\nбанковский идентификационный код',
  `details_file` blob COMMENT 'Файл реквизитов',
  `created` timestamp NOT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tin_UNIQUE` (`tin`),
  UNIQUE KEY `account_UNIQUE` (`account`),
  CONSTRAINT `fk_legal_to_payer` FOREIGN KEY (`id`) REFERENCES `payer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Плательщик (Клиент) - Юридическое лицо';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal`
--

LOCK TABLES `legal` WRITE;
/*!40000 ALTER TABLE `legal` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `floor_id` int(10) unsigned NOT NULL COMMENT 'Зона имеет несколько этажей',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_line_floor1_idx` (`floor_id`),
  CONSTRAINT `fk_line_to_floor` FOREIGN KEY (`floor_id`) REFERENCES `floor` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_type`
--

DROP TABLE IF EXISTS `line_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `floor_id` int(10) unsigned NOT NULL COMMENT 'Зона имеет несколько этажей',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_line_floor1_idx` (`floor_id`),
  CONSTRAINT `fk_line_to_floor0` FOREIGN KEY (`floor_id`) REFERENCES `floor_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_type`
--

LOCK TABLES `line_type` WRITE;
/*!40000 ALTER TABLE `line_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `line_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Размещение товаров (product) на местах хранения (place) на складе',
  `count` int(10) unsigned NOT NULL COMMENT 'Количество продукта location_product_id, хранящегося в месте location_place_id',
  `place_id` int(10) unsigned NOT NULL COMMENT 'На одном Месте может быть несколько Размещений Продуктов location с разными артикулами',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Связь с product_id',
  PRIMARY KEY (`id`),
  KEY `fk_location_place_idx` (`place_id`),
  KEY `fk_location_product_idx` (`product_id`),
  CONSTRAINT `fk_location_to_place` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`),
  CONSTRAINT `fk_location_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Природа материала\nМатериал из которого сделан товар, упаковка';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT  IGNORE INTO `material` (`id`, `name`) VALUES (1,'Картон'),(2,'Полипропилен'),(3,'Металл');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_phys_pers`
--

DROP TABLE IF EXISTS `order_phys_pers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_phys_pers` (
  `phys_pers_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_phys_pers_id` int(10) unsigned NOT NULL,
  `order_customer_id` int(10) unsigned NOT NULL,
  `create_order_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`phys_pers_id`),
  KEY `fk_Order_Customer1_idx` (`order_customer_id`),
  KEY `order_phys_pers_to_phys_pers_idx` (`order_phys_pers_id`),
  CONSTRAINT `fk_Order_Customer1` FOREIGN KEY (`order_customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `order_phys_pers_to_phys_pers` FOREIGN KEY (`order_phys_pers_id`) REFERENCES `person` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_phys_pers`
--

LOCK TABLES `order_phys_pers` WRITE;
/*!40000 ALTER TABLE `order_phys_pers` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_phys_pers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Обозначение\nУникальное сочетание букв и цифр для удобной и однозначной идентификации упаковки\nКак пример:\n	B001 - полиэтиленовый пакет №1 (размер h=2мм х w=50мм х l=100мм)\n	B002 - пластиковая ячейка контейнера (всего 25 ячеек 5 х 5, размер ячейки h=25мм х w=50мм х l=50мм)\n	и т.д….',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование упаковки\nКак пример:\n	- Пакет полиэтиленовый\n	- Ячейка пластикового контейнера\n	- Контейнер пластиковый\n	- Коробка картонная\n	- Ящик деревянный\n	- Контейнер металический\n	- Палета деревянная\n	- Площадка открытая для хранения Крупногабаритного товара\n	и т.д….',
  `material_id` int(10) unsigned DEFAULT NULL COMMENT 'Id материала из которого сделан экземпляр упаковки',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Id фото экземпляра упаковки',
  `payload` int(10) unsigned NOT NULL COMMENT 'Грузоподъемность упаковки в граммах.',
  `wx` mediumint(8) unsigned NOT NULL COMMENT 'Внешний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `wy` mediumint(8) unsigned NOT NULL COMMENT 'Внешний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `wz` mediumint(8) unsigned NOT NULL COMMENT 'Внешний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `iwx` mediumint(8) unsigned NOT NULL COMMENT 'Внутренний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `iwy` mediumint(8) unsigned NOT NULL COMMENT 'Внутренний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `iwz` mediumint(8) unsigned NOT NULL COMMENT 'Внутренний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `iw1s` mediumint(9) GENERATED ALWAYS AS (least(`iwx`,`iwy`,`iwz`)) STORED COMMENT 'Внутренний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `iw2s` mediumint(9) GENERATED ALWAYS AS (((((`iwx` + `iwy`) + `iwz`) - least(`iwx`,`iwy`,`iwz`)) - greatest(`iwx`,`iwy`,`iwz`))) STORED COMMENT 'Внутренний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `iw3s` mediumint(9) GENERATED ALWAYS AS (greatest(`iwx`,`iwy`,`iwz`)) STORED COMMENT 'Внутренний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `color` char(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Цвет упаковки на схеме в графическом интерфейсе',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` timestamp NULL DEFAULT NULL,
  `depth` tinyint(3) unsigned DEFAULT '2' COMMENT '1 - элемент отобразит себя\\n2 - элемент отобразит себя и внутренние элементы\\n3 - элемент отобразит 2 уровня внутренних элементов',
  `turned` tinyint(3) unsigned DEFAULT '0' COMMENT '0 - элемент будет отображен как есть\\\\\\\\n1 - элемент будет отображен повернутым',
  `volume` double GENERATED ALWAYS AS (((`iwx` * `iwy`) * `iwz`)) STORED,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `fk_package_to_material_idx` (`material_id`),
  KEY `fk_package_to_photo_idx` (`photo_id`),
  CONSTRAINT `fk_package_to_material` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_package_to_photo` FOREIGN KEY (`photo_id`) REFERENCES `package_photo` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Упаковка места хранения или товара.\nИнформация о всех видах упаковок, их размерах, форме и материале из которого они сделана\nФото тары\nДанный справочник универсален и в нем хранится весь перечень упаковок для хранения на складе, упаковок единиц товара, упаковок комплектов и сборок, а так же и тары для комплектации заказов.\nКак пример:\n	- ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT  IGNORE INTO `package` (`id`, `code`, `name`, `material_id`, `photo_id`, `payload`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`, `depth`, `turned`) VALUES (1,'BС01','Ячейка пластикового лотка',NULL,NULL,1000,25,25,30,0,0,0,'9DE0AD','2020-02-25 12:20:30',NULL,NULL,NULL,0),(4,'500.1','Стилаж с наполнением',1,NULL,900000,1000,2262,498,1000,2262,498,'006d8f','2020-02-25 12:20:30','2020-02-29 20:56:11',NULL,3,0),(5,'B500.11','Полка стилажа',3,NULL,100000,1000,200,500,0,0,0,'006D8F','2020-02-25 12:20:30',NULL,NULL,NULL,0),(6,'B500.12','Полка стилажа',3,NULL,100000,1000,300,500,0,0,0,'004D65','2020-02-25 12:20:30',NULL,NULL,NULL,0),(8,'B012','Контейнер пластиковый 120x120x60',NULL,NULL,0,112,53,112,112,53,112,'4aaa86','2020-02-10 02:21:21',NULL,NULL,NULL,0),(9,'B008','Контейнер пластиковый 40x40x28',NULL,NULL,0,36,36,26,36,36,26,'000000','2020-02-10 02:34:28',NULL,NULL,NULL,0),(10,'B016','Контейнер пластиковый 40x40x47',NULL,NULL,0,36,36,43,36,36,43,'000000','2020-02-10 02:36:33',NULL,NULL,NULL,0),(11,'B017','Контейнер пластиковый 52x50x55',NULL,NULL,0,51,49,55,51,49,55,'000000','2020-02-10 02:37:05',NULL,NULL,NULL,0),(12,'B007','Контейнер пластиковый 100x82x25',NULL,NULL,0,98,81,23,98,81,23,'000000','2020-02-10 02:42:56',NULL,NULL,NULL,0),(13,'B001','Контейнер пластиковый',NULL,NULL,0,121,36,76,114,30,68,'c9fffd','2020-02-10 02:45:35',NULL,NULL,NULL,0),(14,'B014','Контейнер пластиковый 150x66x95',NULL,NULL,0,145,60,86,145,60,86,'000000','2020-02-10 02:52:24',NULL,NULL,NULL,0),(15,'B013','Контейнер пластиковый 180x105x88',NULL,NULL,0,172,98,80,172,98,80,'000000','2020-02-10 02:54:51',NULL,NULL,NULL,0),(16,'B006','Контейнер пластиковый 208x82x45',NULL,NULL,0,77,34,202,77,34,202,'4c90a7','2020-02-10 02:58:05',NULL,NULL,NULL,0),(17,'B011','Контейнер пластиковый 240x110x65',NULL,NULL,0,99,56,234,99,56,234,'cde5ff','2020-02-10 03:00:23',NULL,NULL,NULL,0),(18,'B003','Контейнер пластиковый',NULL,NULL,0,25,34,23,21,31,19,'5371a9','2020-02-10 03:01:19',NULL,NULL,NULL,0),(19,'B004','Контейнер пластиковый 70x39x88',NULL,NULL,0,66,83,36,66,83,36,'000000','2020-02-10 03:03:37',NULL,NULL,NULL,0),(20,'B009','Контейнер пластиковый 75x50x28',NULL,NULL,0,73,49,24,73,49,24,'000000','2020-02-10 03:09:12',NULL,NULL,NULL,0),(21,'B005','Контейнер пластиковый 80x60x45',NULL,NULL,0,79,37,58,79,37,58,'6a98c5','2020-02-10 03:10:33',NULL,NULL,NULL,0),(24,'B015','Контейнер пластиковый 212х172х99',NULL,NULL,0,155,84,170,155,84,170,'000000','2020-02-10 04:58:40',NULL,NULL,NULL,0),(25,'018.4','Лоток картонный с наполнением',NULL,NULL,0,82,46,483,82,46,483,'b76612','2020-02-10 07:59:57',NULL,NULL,2,1),(26,'B019','Лоток картонный Тип 1',NULL,NULL,0,147,35,483,147,35,483,'bf8230','2020-02-11 00:01:07',NULL,NULL,NULL,0),(27,'B020','Лоток картонный Тип 2',NULL,NULL,0,123,65,483,123,65,483,'a65f00','2020-02-11 00:10:20',NULL,NULL,NULL,0),(28,'B021','Лоток картонный Три 3',NULL,NULL,0,180,100,483,180,100,483,'c87103','2020-02-11 00:10:57',NULL,NULL,NULL,0),(29,'023.6','Лоток картонный с наполнением',NULL,NULL,0,123,35,483,123,35,483,'b57c60','2020-02-11 00:12:42',NULL,NULL,2,1),(30,'B024','Лоток картонный Тип 6',NULL,NULL,0,82,47,383,82,47,383,'bf9b30','2020-02-11 00:13:19',NULL,NULL,NULL,0),(31,'B025','Лоток картонный Тип 7',NULL,NULL,0,82,28,383,82,28,383,'bf9b31','2020-02-11 00:13:47',NULL,NULL,NULL,0),(32,'B026','Лоток картонный Тип 8',NULL,NULL,0,147,35,383,147,35,383,'a67c00','2020-02-11 00:14:21',NULL,NULL,NULL,0),(33,'B027','Лоток картонный Тип 9',NULL,NULL,0,123,65,383,123,65,383,'ffcf40','2020-02-11 00:14:50',NULL,NULL,NULL,0),(34,'B028','Лоток картонный Тип 10',NULL,NULL,0,180,100,383,180,100,383,'e5c66b','2020-02-11 00:15:16',NULL,NULL,NULL,0),(36,'B002','Контейнер пластиковый',NULL,NULL,0,145,35,85,139,29,79,'a1bfbe','2020-02-13 02:59:12',NULL,NULL,NULL,0),(37,'B010','Контейнер пластиковый 165х120х58',NULL,NULL,0,114,52,159,114,52,159,'6a80a9','2020-02-13 03:00:16',NULL,NULL,NULL,0),(42,'B029','Ящик металлический Тип 1',NULL,NULL,0,325,210,498,325,210,498,'0042aa','2020-02-25 15:53:20','2020-03-04 02:35:30',NULL,3,0),(43,'B030','Ящик металлический Тип 2',NULL,NULL,0,250,210,498,250,210,498,'204580','2020-02-25 15:57:18','2020-03-10 23:07:05',NULL,3,0),(45,'B031','Ящик металлический Тип 3',NULL,NULL,0,198,210,498,198,210,498,'002b6f','2020-02-25 15:58:36','2020-03-10 23:08:49',NULL,3,0),(46,'B032','Ящик металлический Тип 4',NULL,NULL,0,210,325,398,0,0,0,'3573d4','2020-02-25 15:59:24',NULL,NULL,NULL,0),(47,'B033','Ящик металлический Тип 5',NULL,NULL,0,210,250,398,0,0,0,'608dd4','2020-02-25 15:59:58',NULL,NULL,NULL,0),(49,'B034','Ящик металлический Тип 6',NULL,NULL,0,198,210,398,0,0,0,'6699ea','2020-02-25 16:01:23',NULL,NULL,NULL,0),(51,'B035','Полка Тип 0',NULL,NULL,0,998,210,498,0,0,0,'0c8873','2020-02-25 16:02:54',NULL,NULL,NULL,0),(53,'018.5','Лоток картонный с наполнением',NULL,NULL,0,82,46,483,82,46,483,'6b4b28','2020-02-25 16:04:18',NULL,NULL,2,1),(54,'035.5','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'124459','2020-02-25 16:12:00',NULL,NULL,2,0),(55,'021','Лоток картонный с наполнением',NULL,NULL,0,180,100,483,180,100,483,'c87103','2020-02-25 17:22:42',NULL,NULL,2,1),(56,'019','Лоток картонный с наполнением',NULL,NULL,0,147,35,483,147,35,483,'bf8230','2020-02-25 18:01:04',NULL,NULL,2,1),(58,'035.1','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'0ea035','2020-02-25 18:10:08',NULL,NULL,2,0),(59,'020.1','Лоток картонный с наполнением',NULL,NULL,0,123,65,483,123,65,483,'7d601f','2020-02-25 19:23:14',NULL,NULL,2,1),(60,'035.2','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'0c8873','2020-02-25 19:31:29','2020-03-03 20:16:02',NULL,2,0),(61,'020.2','Лоток картонный с наполнением',NULL,NULL,0,123,65,483,123,65,483,'5e5329','2020-02-25 19:33:34',NULL,NULL,2,1),(62,'021.1','Лоток картонный с наполнением',NULL,NULL,0,180,100,483,180,100,483,'c87103','2020-02-25 19:40:53',NULL,NULL,2,1),(63,'019.3','Лоток картонный с наполнением',NULL,NULL,0,147,35,483,147,35,483,'956527','2020-02-25 19:48:22',NULL,NULL,2,1),(64,'035.3','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'1c3f32','2020-02-25 19:55:25',NULL,NULL,2,0),(65,'035.4','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'1b333b','2020-02-25 20:02:54',NULL,NULL,2,0),(66,'B018','Лоток картонный Тип 0',NULL,NULL,0,82,46,483,82,46,483,'b58c60','2020-02-25 20:10:59','2020-03-02 03:03:57',NULL,3,1),(67,'035.6','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'2d7760','2020-02-25 20:25:47',NULL,NULL,2,0),(68,'B023','Лоток картонный Тип 5',NULL,NULL,0,123,35,483,123,35,483,'e3983c','2020-02-25 20:28:23',NULL,NULL,NULL,0),(69,'035.7','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'3ec3ad','2020-02-25 20:36:09',NULL,NULL,2,0),(70,'021.7','Лоток картонный с наполнением',NULL,NULL,0,180,100,483,180,100,483,'c87103','2020-02-25 20:38:32',NULL,NULL,2,1),(71,'021.8','Лоток картонный с наполнением',NULL,NULL,0,180,100,483,180,100,483,'eba575','2020-02-25 20:42:11',NULL,NULL,2,1),(72,'035.8','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'2f9b8a','2020-02-25 20:44:23',NULL,NULL,2,0),(73,'035.9','Полка с наполнением',NULL,NULL,0,998,218,498,998,218,498,'14578a','2020-02-25 20:46:39','2020-03-10 23:07:36',NULL,3,0),(74,'400.1','Стилаж с наполнением',NULL,NULL,900000,1000,2700,398,1000,2700,398,'3a88fe','2020-02-25 21:31:59','2020-02-29 17:26:12',NULL,3,0);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_photo`
--

DROP TABLE IF EXISTS `package_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_photo` (
  `id` int(10) unsigned NOT NULL,
  `photo` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Фотографии упаковок';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_photo`
--

LOCK TABLES `package_photo` WRITE;
/*!40000 ALTER TABLE `package_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `package_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing0`
--

DROP TABLE IF EXISTS `packing0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` int(10) unsigned NOT NULL COMMENT 'Количество упаковок packing1 внутри данной упаковки',
  `packing1_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id фасовки packing1',
  PRIMARY KEY (`id`),
  KEY `fk_packing0_packing1_idx` (`packing1_id`),
  KEY `fk_packing0_to_package_idx` (`package_id`),
  CONSTRAINT `fk_packing0_packing1` FOREIGN KEY (`packing1_id`) REFERENCES `packing1` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing0_to_package` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing0`
--

LOCK TABLES `packing0` WRITE;
/*!40000 ALTER TABLE `packing0` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing1`
--

DROP TABLE IF EXISTS `packing1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` int(10) unsigned NOT NULL COMMENT 'Количество упаковок packing2 внутри данной упаковки',
  `packing2_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id фасовки packing2',
  PRIMARY KEY (`id`),
  KEY `fk_packing1_packing2_idx` (`packing2_id`),
  KEY `fk_packing1_to_package_idx` (`package_id`),
  CONSTRAINT `fk_packing1_packing2` FOREIGN KEY (`packing2_id`) REFERENCES `packing2` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing1_to_package` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing1`
--

LOCK TABLES `packing1` WRITE;
/*!40000 ALTER TABLE `packing1` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing2`
--

DROP TABLE IF EXISTS `packing2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` int(10) unsigned NOT NULL COMMENT 'Количество упаковок packing3 внутри данной упаковки',
  `packing3_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id фасовки packing3',
  PRIMARY KEY (`id`),
  KEY `fk_packing2_packing3_idx` (`packing3_id`),
  KEY `fk_packing2_to_package_idx` (`package_id`),
  CONSTRAINT `fk_packing2_packing3` FOREIGN KEY (`packing3_id`) REFERENCES `packing3` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing2_to_package` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing2`
--

LOCK TABLES `packing2` WRITE;
/*!40000 ALTER TABLE `packing2` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing3`
--

DROP TABLE IF EXISTS `packing3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` int(10) unsigned NOT NULL COMMENT 'Количество упаковок packing4 внутри данной упаковки',
  `packing4_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id фасовки packing4,\nуказывающий какая фасовка из таблицы packing4 хранится внутри данной.',
  PRIMARY KEY (`id`),
  KEY `fk_packing3_packing4_idx` (`packing4_id`),
  KEY `fk_packing3_to_package_idx` (`package_id`),
  CONSTRAINT `fk_packing3_packing4` FOREIGN KEY (`packing4_id`) REFERENCES `packing4` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing3_to_package` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Упаковка, содержащая внутри упаковку, в которой штучный товар';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing3`
--

LOCK TABLES `packing3` WRITE;
/*!40000 ALTER TABLE `packing3` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing4`
--

DROP TABLE IF EXISTS `packing4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` int(10) unsigned NOT NULL COMMENT 'Количество штучного товара внутри данной упаковки',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id продукта product,\nуказывающий какой продукт из таблицы product хранится внутри данной фасовки.',
  PRIMARY KEY (`id`),
  KEY `fk_packing4_product_idx` (`product_id`),
  KEY `fk_packing4_to_package_idx` (`package_id`),
  CONSTRAINT `fk_packing4_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing4_to_package` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Минимально возможная упаковка содержащая штучный товар внутри';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing4`
--

LOCK TABLES `packing4` WRITE;
/*!40000 ALTER TABLE `packing4` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payer`
--

DROP TABLE IF EXISTS `payer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payer_type_id` int(10) unsigned NOT NULL COMMENT 'Вид плательщика (клиента) - из таблицы payer_type:\n	физическое лицо\n	Юридическое лицо\n	…',
  PRIMARY KEY (`id`),
  KEY `fk_payer_to_payer_type_idx` (`payer_type_id`),
  CONSTRAINT `fk_payer_to_order` FOREIGN KEY (`id`) REFERENCES `order_phys_pers` (`phys_pers_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_payer_to_payer_type` FOREIGN KEY (`payer_type_id`) REFERENCES `payer_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Плательщик по заказу';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payer`
--

LOCK TABLES `payer` WRITE;
/*!40000 ALTER TABLE `payer` DISABLE KEYS */;
/*!40000 ALTER TABLE `payer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payer_type`
--

DROP TABLE IF EXISTS `payer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payer_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Физическое или юридическое лицо.\nДля ИП логика другая: счета для ИП - от ИП\nДля ООО - от ООО.\nНо выбирается вручную. Если сделать поле "тип налогообложения" - можно автоматом выставлять счета соответствующие';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payer_type`
--

LOCK TABLES `payer_type` WRITE;
/*!40000 ALTER TABLE `payer_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `payer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор плательщика (клиента) из таблицы payer',
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(16) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия',
  `middlename` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `address_id` int(10) unsigned NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Контактное лицо',
  `created` timestamp NOT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_person_to_payer` FOREIGN KEY (`id`) REFERENCES `payer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Плательщик (Клиент) - Физическое лицо';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addr` char(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Обозначение\nУникальное сочетание букв и цифр для удобной и однозначной идентификации упаковки\nКак пример:\n	B001 - полиэтиленовый пакет №1 (размер h=2мм х w=50мм х l=100мм)\n	B002 - пластиковая ячейка контейнера (всего 25 ячеек 5 х 5, размер ячейки h=25мм х w=50мм х l=50мм)\n	и т.д….',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование упаковки\nКак пример:\n	- Пакет полиэтиленовый\n	- Ячейка пластикового контейнера\n	- Контейнер пластиковый\n	- Коробка картонная\n	- Ящик деревянный\n	- Контейнер металический\n	- Палета деревянная\n	- Площадка открытая для хранения Крупногабаритного товара\n	и т.д….',
  `picture_id` int(10) unsigned DEFAULT NULL COMMENT 'Контейнер может иметь несколько Мест',
  `package_id` int(10) unsigned DEFAULT NULL COMMENT 'Ячейка может иметь несколько Мест',
  `payload` int(10) unsigned NOT NULL COMMENT 'Грузоподъемность упаковки в граммах.',
  `x` double unsigned NOT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y` double unsigned NOT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `wx` mediumint(8) unsigned NOT NULL COMMENT 'Внешний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `wy` mediumint(8) unsigned NOT NULL COMMENT 'Внешний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `wz` mediumint(8) unsigned NOT NULL COMMENT 'Внешний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `iwx` mediumint(8) unsigned NOT NULL COMMENT 'Внутренний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `iwy` mediumint(8) unsigned NOT NULL COMMENT 'Внутренний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `iwz` mediumint(8) unsigned NOT NULL COMMENT 'Внутренний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `color` char(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Цвет упаковки на схеме в графическом интерфейсе',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` timestamp NULL DEFAULT NULL,
  `place_type_id` int(10) unsigned NOT NULL,
  `place_status_id` int(10) unsigned NOT NULL,
  `place_purpose_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fr_place_to_place_picture_idx` (`picture_id`),
  KEY `fk_place_to_place_type_idx` (`place_type_id`),
  KEY `fk_place_to_place_status_idx` (`place_status_id`),
  KEY `fk_place_to_place_purpose_idx` (`place_purpose_id`),
  KEY `fk_place_to_package_idx` (`package_id`),
  CONSTRAINT `fk_place_to_package` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_to_place_purpose` FOREIGN KEY (`place_purpose_id`) REFERENCES `place_purpose` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_to_place_status` FOREIGN KEY (`place_status_id`) REFERENCES `place_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_to_place_type` FOREIGN KEY (`place_type_id`) REFERENCES `place_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fr_place_to_place_picture` FOREIGN KEY (`picture_id`) REFERENCES `place_picture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица хранит в себе перечень всех месть хранения\nЕсли у конкретного места хранения package_id не null,\nто данное место имеет прототип из таблицы package\nи все параметры этого места и все внутреннее содержимое\nБерется из прототипа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT  IGNORE INTO `place` (`id`, `addr`, `name`, `picture_id`, `package_id`, `payload`, `x`, `y`, `wx`, `wy`, `wz`, `iwx`, `iwy`, `iwz`, `color`, `created`, `updated`, `deleted`, `place_type_id`, `place_status_id`, `place_purpose_id`) VALUES (1,'0','Уровень 1',NULL,NULL,1000000000,250,0,5500,17700,2970,5500,17700,2970,'#97A1AA','2020-03-10 19:20:22',NULL,NULL,5,1,1),(2,'1','Линия 1',NULL,NULL,100000000,0,0,12384,2970,500,0,0,0,'#bbbbbb','2020-03-10 19:20:35',NULL,NULL,5,1,1),(3,'A','Стеллаж 1A.403',NULL,4,100000000,11384,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(4,'B','Стеллаж 1A.404',NULL,4,100000000,10352,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(5,'C','Стеллаж 1A.405',NULL,4,100000000,9320,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(6,'D','Стеллаж 1A.406',NULL,4,100000000,8288,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(7,'E','Стеллаж 1A.407',NULL,4,100000000,7256,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(8,'F','Стеллаж 1A.408',NULL,4,100000000,6224,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(9,'G','Стеллаж 1A.409',NULL,4,100000000,5192,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(10,'H','Стеллаж 1A.410',NULL,4,100000000,4160,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(11,'I','Стеллаж 1A.411',NULL,4,100000000,3128,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(12,'K','Стеллаж 1A.412',NULL,4,100000000,2096,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(13,'L','Стеллаж 1A.413',NULL,4,100000000,1064,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(14,'M','Стеллаж 1A.414',NULL,4,100000000,26,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:35',NULL,NULL,5,1,1),(15,'511.2','Линия 511.2',NULL,NULL,100000000,1414,0,12384,2970,400,0,0,0,'#bbbbbb','2020-03-10 19:20:40',NULL,NULL,5,1,1),(16,'511.2A','Стеллаж 2A.01',NULL,NULL,100000000,11384,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(17,'511.2B','Стеллаж 2A.02',NULL,NULL,100000000,10352,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(18,'511.2C','Стеллаж 2A.03',NULL,NULL,100000000,9320,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(19,'511.2D','Стеллаж 2A.04',NULL,NULL,100000000,8288,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(20,'511.2E','Стеллаж 2A.05',NULL,NULL,100000000,7256,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(21,'511.2F','Стеллаж 2A.06',NULL,NULL,100000000,6224,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(22,'511.2G','Стеллаж 2A.07',NULL,NULL,100000000,5192,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(23,'511.2H','Стеллаж 2A.08',NULL,NULL,100000000,4160,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(24,'511.2J','Стеллаж 2A.09',NULL,NULL,100000000,3128,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(25,'511.2K','Стеллаж 2A.10',NULL,NULL,100000000,2096,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(26,'511.2L','Стеллаж 2A.11',NULL,NULL,100000000,1064,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(27,'511.2M','Стеллаж 2A.12',NULL,NULL,100000000,26,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:40',NULL,NULL,5,1,1),(28,'511.3','Линия 511.3',NULL,NULL,100000000,1844,0,12384,2970,500,0,0,0,'#bbbbbb','2020-03-10 19:20:44',NULL,NULL,5,1,1),(29,'511.3A','Стеллаж 3A.01',NULL,NULL,100000000,11384,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(30,'511.3В','Стеллаж 3A.02',NULL,NULL,100000000,10352,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(31,'511.3C','Стеллаж 3A.03',NULL,NULL,100000000,9320,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(32,'511.3D','Стеллаж 3A.04',NULL,NULL,100000000,8288,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(33,'511.3E','Стеллаж 3A.05',NULL,NULL,100000000,7256,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(34,'511.3F','Стеллаж 3A.06',NULL,NULL,100000000,6224,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(35,'511.3G','Стеллаж 3A.07',NULL,NULL,100000000,5192,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(36,'511.3H','Стеллаж 3A.08',NULL,NULL,100000000,4160,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(37,'511.3J','Стеллаж 3A.09',NULL,NULL,100000000,3128,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(38,'511.3K','Стеллаж 3A.10',NULL,NULL,100000000,2096,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44',NULL,NULL,5,1,1),(39,'511.3L','Стеллаж 3A.11',NULL,4,100000000,1064,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44','2020-03-10 21:37:26',NULL,5,1,1),(40,'511.3M','Стеллаж 3A.12',NULL,4,100000000,26,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:44','2020-03-10 21:35:09',NULL,5,1,1),(41,'0','Линия 511.4',NULL,NULL,100000000,3257,0,12384,2970,400,0,0,0,'#bbbbbb','2020-03-10 19:20:49',NULL,NULL,5,1,1),(42,'511.4A','Стеллаж 4A.01',NULL,NULL,100000000,11384,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(43,'511.4B','Стеллаж 4A.02',NULL,NULL,100000000,10352,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(44,'511.4C','Стеллаж 4A.03',NULL,NULL,100000000,9320,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(45,'511.4D','Стеллаж 4A.04',NULL,NULL,100000000,8288,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(46,'511.4E','Стеллаж 4A.05',NULL,NULL,100000000,7256,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(47,'511.4F','Стеллаж 4A.06',NULL,NULL,100000000,6224,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(48,'511.4G','Стеллаж 4A.07',NULL,NULL,100000000,5192,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(49,'511.4H','Стеллаж 4A.08',NULL,NULL,100000000,4160,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(50,'511.4J','Стеллаж 4A.09',NULL,NULL,100000000,3128,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(51,'511.4K','Стеллаж 4A.10',NULL,NULL,100000000,2096,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(52,'511.4L','Стеллаж 4A.11',NULL,NULL,100000000,1064,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(53,'511.4M','Стеллаж 4A.12',NULL,NULL,100000000,26,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:49',NULL,NULL,5,1,1),(54,'0','Линия 511.5',NULL,NULL,100000000,3687,0,12384,2970,500,0,0,0,'#bbbbbb','2020-03-10 19:20:53',NULL,NULL,5,1,1),(55,'511.5A','Стеллаж 5A.01',NULL,NULL,100000000,11384,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(56,'511.5B','Стеллаж 5A.02',NULL,NULL,100000000,10352,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(57,'511.5C','Стеллаж 5A.03',NULL,NULL,100000000,9320,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(58,'511.5D','Стеллаж 5A.04',NULL,NULL,100000000,8288,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(59,'511.5E','Стеллаж 5A.05',NULL,NULL,100000000,7256,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(60,'511.5F','Стеллаж 5A.06',NULL,NULL,100000000,6224,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(61,'511.5G','Стеллаж 5A.07',NULL,NULL,100000000,5192,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(62,'511.5H','Стеллаж 5A.08',NULL,NULL,100000000,4160,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(63,'511.5J','Стеллаж 5A.09',NULL,NULL,100000000,3128,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(64,'511.5K','Стеллаж 5A.10',NULL,NULL,100000000,2096,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(65,'511.5L','Стеллаж 5A.11',NULL,NULL,100000000,1064,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(66,'511.5M','Стеллаж 5A.12',NULL,NULL,100000000,26,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 19:20:53',NULL,NULL,5,1,1),(67,'0','Линия 511.6',NULL,NULL,100000000,5100,0,12384,2970,400,0,0,0,'#bbbbbb','2020-03-10 19:20:58',NULL,NULL,5,1,1),(68,'511.6A','Стеллаж 6A.01',NULL,NULL,100000000,11384,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(69,'511.6B','Стеллаж 6A.02',NULL,NULL,100000000,10352,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(70,'511.6C','Стеллаж 6A.03',NULL,NULL,100000000,9320,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(71,'511.6D','Стеллаж 6A.04',NULL,NULL,100000000,8288,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(72,'511.6E','Стеллаж 6A.05',NULL,NULL,100000000,7256,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(73,'511.6F','Стеллаж 6A.06',NULL,NULL,100000000,6224,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(74,'511.6G','Стеллаж 6A.07',NULL,NULL,100000000,5192,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(75,'511.6H','Стеллаж 6A.08',NULL,NULL,100000000,4160,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(76,'511.6J','Стеллаж 6A.09',NULL,NULL,100000000,3128,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(77,'511.6K','Стеллаж 6A.10',NULL,NULL,100000000,2096,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(78,'511.6L','Стеллаж 6A.11',NULL,NULL,100000000,1064,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(79,'511.6M','Стеллаж 6A.12',NULL,NULL,100000000,26,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(80,'511.7','Линия 511.7',NULL,NULL,100000000,0,12768,2032,2970,400,0,0,0,'#bbbbbb','2020-03-10 19:22:37',NULL,NULL,5,1,1),(81,'511.7A','Стеллаж 1A.401',NULL,NULL,100000000,1032,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:22:37',NULL,NULL,5,1,1),(82,'511.7B','Стеллаж 1A.402',NULL,NULL,100000000,0,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:22:37',NULL,NULL,5,1,1),(83,'511.8','Линия 511.8',NULL,NULL,100000000,5100,12596,1200,2970,400,0,0,0,'#bbbbbb','2020-03-10 19:23:54',NULL,NULL,5,1,1),(84,'511.8N','Стеллаж 1A.401',NULL,NULL,100000000,100,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:23:54',NULL,NULL,5,1,1),(85,'511.6M','Полка с наполнением',NULL,NULL,100000000,26,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(86,'019.3','Лоток картонный с наполнением',NULL,NULL,100000000,26,0,1000,2970,400,0,0,0,'#253D0E','2020-03-10 19:20:58',NULL,NULL,5,1,1),(87,'M','Стеллаж 1A.414',NULL,74,100000000,26,0,1000,2970,500,0,0,0,'#253D0E','2020-03-10 23:14:21',NULL,NULL,5,1,1);
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_addr_stage`
--

DROP TABLE IF EXISTS `place_addr_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_addr_stage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `addr_stage_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id операций над данным адресом',
  PRIMARY KEY (`id`),
  KEY `fk_place_prototype_sub_to_package_idx` (`addr_stage_id`),
  KEY `fk_place_id_to_place_idx` (`place_id`),
  CONSTRAINT `fk_place_addr_stage_to_addr_stage` FOREIGN KEY (`addr_stage_id`) REFERENCES `addr_stage` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_addr_to_place` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Содержит историю операций со складским адресом для мест хранения\nId - связь 1:1 с таблицей place\nstage - номер стадии из таблицы addr_stage\ncreated - дата и время выполнения операции со складским адресом места хранения\nuser_id - связь с таблицей user для хранения id пользователя, который выполнил операцию';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_addr_stage`
--

LOCK TABLES `place_addr_stage` WRITE;
/*!40000 ALTER TABLE `place_addr_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `place_addr_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_nature`
--

DROP TABLE IF EXISTS `place_nature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_nature` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Фотографии упаковок';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_nature`
--

LOCK TABLES `place_nature` WRITE;
/*!40000 ALTER TABLE `place_nature` DISABLE KEYS */;
INSERT  IGNORE INTO `place_nature` (`id`, `name`) VALUES (1,'Кортон'),(2,'Пластик'),(3,'Металл');
/*!40000 ALTER TABLE `place_nature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_pattern`
--

DROP TABLE IF EXISTS `place_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_pattern` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Наименование упаковки\nКак пример:\n	- Пакет полиэтиленовый\n	- Ячейка пластикового контейнера\n	- Контейнер пластиковый\n	- Коробка картонная\n	- Ящик деревянный\n	- Контейнер металический\n	- Палета деревянная\n	- Площадка открытая для хранения Крупногабаритного товара\n	и т.д….',
  `code` char(7) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Обозначение\nУникальное сочетание букв и цифр для удобной и однозначной идентификации упаковки\nКак пример:\n	B001 - полиэтиленовый пакет №1 (размер h=2мм х w=50мм х l=100мм)\n	B002 - пластиковая ячейка контейнера (всего 25 ячеек 5 х 5, размер ячейки h=25мм х w=50мм х l=50мм)\n	и т.д….',
  `iwx` mediumint(8) unsigned NOT NULL COMMENT 'Внутренний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `iwy` mediumint(8) unsigned NOT NULL COMMENT 'Внутренний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `iwz` mediumint(8) unsigned NOT NULL COMMENT 'Внутренний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `volume` double GENERATED ALWAYS AS (((`iwx` * `iwy`) * `iwz`)) STORED COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `payload` int(10) unsigned NOT NULL COMMENT 'Грузоподъемность упаковки в граммах.',
  `nature_id` int(10) unsigned DEFAULT NULL COMMENT 'Id природы места',
  `wx` mediumint(8) unsigned NOT NULL COMMENT 'Внешний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `wy` mediumint(8) unsigned NOT NULL COMMENT 'Внешний размер - Высота  элемента в положении реж - Высота  элемента в положении режима эксплуатации - Ширина  элемента в положении режима эксплуатацииима эксплуатации в мм.',
  `wz` mediumint(8) unsigned NOT NULL COMMENT 'Внешний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `iws1` mediumint(9) GENERATED ALWAYS AS (least(`iwx`,`iwy`,`iwz`)) STORED COMMENT 'Внутренний размер, отсортированный по возрастанию в мм.',
  `iws2` mediumint(9) GENERATED ALWAYS AS (((((`iwx` + `iwy`) + `iwz`) - least(`iwx`,`iwy`,`iwz`)) - greatest(`iwx`,`iwy`,`iwz`))) STORED COMMENT 'Внутренний размер, отсортированный по возрастанию в мм.',
  `iws3` mediumint(9) GENERATED ALWAYS AS (greatest(`iwx`,`iwy`,`iwz`)) STORED COMMENT 'Внутренний размер, отсортированный по возрастанию в мм.',
  `archetype_id` int(10) unsigned DEFAULT NULL COMMENT 'Id базового типа из этой же таблицы, на основе которого был создан не базовый тип',
  `bycoordinates` tinyint(3) unsigned DEFAULT '0',
  `color` char(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Цвет упаковки на схеме в графическом интерфейсе',
  `depth` tinyint(3) unsigned DEFAULT '2' COMMENT '1 - элемент отобразит себя\\n2 - элемент отобразит себя и внутренние элементы\\n3 - элемент отобразит 2 уровня внутренних элементов',
  `turned` tinyint(3) unsigned DEFAULT '0' COMMENT '0 - элемент будет отображен как есть\\\\\\\\n1 - элемент будет отображен повернутым',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` timestamp NULL DEFAULT NULL,
  `sub1_id` int(10) unsigned DEFAULT NULL,
  `inrow1` tinyint(3) unsigned DEFAULT '0',
  `x1` double unsigned DEFAULT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y1` double unsigned DEFAULT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub2_id` int(10) unsigned DEFAULT NULL,
  `inrow2` tinyint(3) unsigned DEFAULT '0',
  `x2` double unsigned DEFAULT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y2` double unsigned DEFAULT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub3_id` int(10) unsigned DEFAULT NULL,
  `inrow3` tinyint(3) unsigned DEFAULT '0',
  `x3` double unsigned DEFAULT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y3` double unsigned DEFAULT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub4_id` int(10) unsigned DEFAULT NULL,
  `inrow4` tinyint(3) unsigned DEFAULT '0',
  `x4` double unsigned DEFAULT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y4` double unsigned DEFAULT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub5_id` int(10) unsigned DEFAULT NULL,
  `inrow5` tinyint(3) unsigned DEFAULT '0',
  `x5` double unsigned DEFAULT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y5` double unsigned DEFAULT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub6_id` int(10) unsigned DEFAULT NULL,
  `inrow6` tinyint(3) unsigned DEFAULT '0',
  `x6` double unsigned DEFAULT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y6` double unsigned DEFAULT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub7_id` int(10) unsigned DEFAULT NULL,
  `inrow7` tinyint(3) unsigned DEFAULT '0',
  `x7` double unsigned DEFAULT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y7` double unsigned DEFAULT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub8_id` int(10) unsigned DEFAULT NULL,
  `inrow8` tinyint(3) unsigned DEFAULT '0',
  `x8` double unsigned DEFAULT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y8` double unsigned DEFAULT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub9_id` int(10) unsigned DEFAULT NULL,
  `inrow9` tinyint(3) unsigned DEFAULT '0',
  `x9` double unsigned DEFAULT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y9` double unsigned DEFAULT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `fk_place_pattern_to_place_pattern_idx` (`archetype_id`),
  KEY `fk_place_pattern_to_place_nature_idx` (`nature_id`),
  KEY `fk_place_pattern_sub1_to_place_pattern_idx` (`sub1_id`),
  KEY `fk_place_pattern_sub2_to_place_pattern_idx` (`sub2_id`),
  KEY `fk_place_pattern_sub3_to_place_pattern_idx` (`sub3_id`),
  KEY `fk_place_pattern_sub4_to_place_pattern_idx` (`sub4_id`),
  KEY `fk_place_pattern_sub5_to_place_pattern_idx` (`sub5_id`),
  KEY `fk_place_pattern_sub6_to_place_pattern_idx` (`sub6_id`),
  KEY `fk_place_pattern_sub7_to_place_pattern_idx` (`sub7_id`),
  KEY `fk_place_pattern_sub8_to_place_pattern_idx` (`sub8_id`),
  KEY `fk_place_pattern_sub9_to_place_pattern_idx` (`sub9_id`),
  CONSTRAINT `fk_place_pattern_sub1_to_place_pattern` FOREIGN KEY (`sub1_id`) REFERENCES `place_pattern` (`id`),
  CONSTRAINT `fk_place_pattern_sub2_to_place_pattern` FOREIGN KEY (`sub2_id`) REFERENCES `place_pattern` (`id`),
  CONSTRAINT `fk_place_pattern_sub3_to_place_pattern` FOREIGN KEY (`sub3_id`) REFERENCES `place_pattern` (`id`),
  CONSTRAINT `fk_place_pattern_sub4_to_place_pattern` FOREIGN KEY (`sub4_id`) REFERENCES `place_pattern` (`id`),
  CONSTRAINT `fk_place_pattern_sub5_to_place_pattern` FOREIGN KEY (`sub5_id`) REFERENCES `place_pattern` (`id`),
  CONSTRAINT `fk_place_pattern_sub6_to_place_pattern` FOREIGN KEY (`sub6_id`) REFERENCES `place_pattern` (`id`),
  CONSTRAINT `fk_place_pattern_sub7_to_place_pattern` FOREIGN KEY (`sub7_id`) REFERENCES `place_pattern` (`id`),
  CONSTRAINT `fk_place_pattern_sub8_to_place_pattern` FOREIGN KEY (`sub8_id`) REFERENCES `place_pattern` (`id`),
  CONSTRAINT `fk_place_pattern_sub9_to_place_pattern` FOREIGN KEY (`sub9_id`) REFERENCES `place_pattern` (`id`),
  CONSTRAINT `fk_place_pattern_to_place_pattern` FOREIGN KEY (`archetype_id`) REFERENCES `place_pattern` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_to_place_nature` FOREIGN KEY (`nature_id`) REFERENCES `place_nature` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Упаковка места хранения или товара.\nИнформация о всех видах упаковок, их размерах, форме и материале из которого они сделана\nФото тары\nДанный справочник универсален и в нем хранится весь перечень упаковок для хранения на складе, упаковок единиц товара, упаковок комплектов и сборок, а так же и тары для комплектации заказов.\nКак пример:\n	- ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_pattern`
--

LOCK TABLES `place_pattern` WRITE;
/*!40000 ALTER TABLE `place_pattern` DISABLE KEYS */;
INSERT  IGNORE INTO `place_pattern` (`id`, `name`, `code`, `iwx`, `iwy`, `iwz`, `payload`, `nature_id`, `wx`, `wy`, `wz`, `archetype_id`, `bycoordinates`, `color`, `depth`, `turned`, `created`, `updated`, `deleted`, `sub1_id`, `inrow1`, `x1`, `y1`, `sub2_id`, `inrow2`, `x2`, `y2`, `sub3_id`, `inrow3`, `x3`, `y3`, `sub4_id`, `inrow4`, `x4`, `y4`, `sub5_id`, `inrow5`, `x5`, `y5`, `sub6_id`, `inrow6`, `x6`, `y6`, `sub7_id`, `inrow7`, `x7`, `y7`, `sub8_id`, `inrow8`, `x8`, `y8`, `sub9_id`, `inrow9`, `x9`, `y9`) VALUES (1,'Контейнер пластиковый','B001',114,30,68,0,1,121,36,76,NULL,0,'c9fffd',3,0,'2020-03-12 15:04:25',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(2,'Контейнер пластиковый','B002',139,29,79,0,1,145,35,85,NULL,0,'a1bfbe',3,0,'2020-03-12 15:04:38',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(3,'Контейнер пластиковый','B003',21,31,19,0,1,25,34,23,NULL,0,'5371a9',3,0,'2020-03-12 15:04:43',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(4,'Контейнер пластиковый 70x39x88','B004',66,83,36,0,1,66,83,36,NULL,0,'000000',3,0,'2020-03-12 15:04:46',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(5,'Контейнер пластиковый 80x60x45','B005',79,37,58,0,1,79,37,58,NULL,0,'6a98c5',3,0,'2020-03-12 15:04:51',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(6,'Контейнер пластиковый 208x82x45','B006',77,34,202,0,1,77,34,202,NULL,0,'4c90a7',3,0,'2020-03-12 15:04:55',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(7,'Контейнер пластиковый 100x82x25','B007',98,81,23,0,1,98,81,23,NULL,0,'000000',3,0,'2020-03-12 15:04:59',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(8,'Контейнер пластиковый 40x40x28','B008',36,36,26,0,1,36,36,26,NULL,0,'000000',3,0,'2020-03-12 15:05:03',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(9,'Контейнер пластиковый 75x50x28','B009',73,49,24,0,1,73,49,24,NULL,0,'000000',3,0,'2020-03-12 15:05:07',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(10,'Контейнер пластиковый 165х120х58','B010',114,52,159,0,1,114,52,159,NULL,0,'6a80a9',3,0,'2020-03-12 15:05:11',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(11,'Контейнер пластиковый 240x110x65','B011',99,56,234,0,1,99,56,234,NULL,0,'cde5ff',3,0,'2020-03-12 15:05:15',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(12,'Контейнер пластиковый 120x120x60','B012',112,53,112,0,1,112,53,112,NULL,0,'4aaa86',3,0,'2020-03-12 15:05:19',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(13,'Контейнер пластиковый 180x105x88','B013',172,98,80,0,1,172,98,80,NULL,0,'000000',3,0,'2020-03-12 15:05:23',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(14,'Контейнер пластиковый 150x66x95','B014',145,60,86,0,1,145,60,86,NULL,0,'000000',3,0,'2020-03-12 15:05:27',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(15,'Контейнер пластиковый 212х172х99','B015',155,84,170,0,1,155,84,170,NULL,0,'000000',3,0,'2020-03-12 15:05:31',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(16,'Контейнер пластиковый 40x40x47','B016',36,36,43,0,1,36,36,43,NULL,0,'000000',3,0,'2020-03-12 15:05:34',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(17,'Контейнер пластиковый 52x50x55','B017',51,49,55,0,1,51,49,55,NULL,0,'000000',3,0,'2020-03-12 15:05:38',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(18,'Лоток картонный Тип 0','B018',82,46,483,0,1,82,46,483,NULL,0,'b58c60',3,1,'2020-03-12 15:05:44',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(19,'Лоток картонный Тип 1','B019',147,35,483,0,1,147,35,483,NULL,0,'bf8230',3,1,'2020-03-12 15:05:48','2020-03-13 11:55:51',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(20,'Лоток картонный Тип 2','B020',123,65,483,0,1,123,65,483,NULL,0,'a65f00',3,1,'2020-03-12 15:05:52','2020-03-13 11:55:51',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(21,'Лоток картонный Три 3','B021',180,100,483,0,1,180,100,483,NULL,0,'c87103',3,1,'2020-03-12 15:05:56','2020-03-13 11:55:51',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(22,'Лоток картонный Тип 5','B023',123,35,483,0,1,123,35,483,NULL,0,'e3983c',3,1,'2020-03-12 15:06:00','2020-03-13 11:55:51',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(23,'Лоток картонный Тип 6','B024',82,47,383,0,1,82,47,383,NULL,0,'bf9b30',3,1,'2020-03-12 15:06:05','2020-03-13 11:55:51',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(24,'Лоток картонный Тип 7','B025',82,28,383,0,1,82,28,383,NULL,0,'bf9b31',3,1,'2020-03-12 15:06:09','2020-03-13 11:55:51',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(25,'Лоток картонный Тип 8','B026',147,35,383,0,1,147,35,383,NULL,0,'a67c00',3,1,'2020-03-12 15:06:14','2020-03-13 11:55:51',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(26,'Лоток картонный Тип 9','B027',123,65,383,0,1,123,65,383,NULL,0,'ffcf40',3,1,'2020-03-12 15:06:18','2020-03-13 11:55:51',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(27,'Лоток картонный Тип 10','B028',180,100,383,0,1,180,100,383,NULL,0,'e5c66b',3,1,'2020-03-12 15:06:21','2020-03-13 11:55:51',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(28,'Ящик металлический Тип 1','B029',325,210,498,0,1,325,210,498,NULL,0,'0042aa',3,0,'2020-03-12 15:06:26',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(29,'Ящик металлический Тип 2','B030',250,210,498,0,1,250,210,498,NULL,0,'204580',3,0,'2020-03-12 15:06:31',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(30,'Ящик металлический Тип 3','B031',198,210,498,0,1,198,210,498,NULL,0,'002b6f',3,0,'2020-03-12 15:06:35',NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(31,'Ящик металлический Тип 4','B032',210,325,398,0,1,210,325,398,NULL,0,'3573d4',3,0,'2020-03-12 15:06:40','2020-03-12 17:35:31',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(32,'Ящик металлический Тип 5','B033',210,250,398,0,1,210,250,398,NULL,0,'608dd4',3,0,'2020-03-12 15:06:46','2020-03-12 17:35:31',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(33,'Ящик металлический Тип 6','B034',198,210,398,0,1,198,210,398,NULL,0,'6699ea',3,0,'2020-03-12 15:06:51','2020-03-12 17:35:31',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(35,'Полка Стеллажа Тип 0','B036',998,210,398,0,1,1000,210,398,NULL,0,'0c8873',3,0,'2020-03-12 15:21:26','2020-03-12 15:24:28',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(36,'Полка Стеллажа Тип 1','B035',998,210,498,0,1,1000,210,498,NULL,0,'0c8873',3,0,'2020-03-12 15:07:00','2020-03-12 15:24:28',NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL),(37,'Лоток картонный с наполнением','001',123,65,483,0,1,123,65,483,20,0,'b76612',2,1,'2020-03-12 15:28:35','2020-03-16 01:35:35',NULL,5,0,1,1,6,0,1,2,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0),(38,'Лоток картонный с наполнением','002',123,65,483,0,1,123,65,483,20,0,'6b4b28',2,1,'2020-03-12 17:26:39','2020-03-16 01:31:00',NULL,10,0,1,2,12,0,1,1,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0),(39,'Лоток картонный с наполнением','003',147,35,483,0,1,147,35,483,19,0,'956527',2,1,'2020-03-12 17:27:25','2020-03-16 01:34:49',NULL,3,0,5,2,2,0,1,5,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0),(40,'Лоток картонный с наполнением','004',82,46,483,0,1,82,46,483,18,0,'7d601f',2,1,'2020-03-12 17:27:49','2020-03-16 01:45:40',NULL,5,0,1,1,6,0,1,2,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0),(41,'Лоток картонный с наполнением','005',82,46,483,0,1,82,46,483,18,0,'5e5329',2,1,'2020-03-12 17:28:04','2020-03-16 01:49:52',NULL,16,0,2,1,5,0,1,5,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0),(42,'Лоток картонный с наполнением','006',123,35,483,0,1,123,35,483,22,0,'c87103',2,1,'2020-03-12 17:28:21','2020-03-16 02:14:08',NULL,1,0,1,6,NULL,0,1,2,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0),(43,'Лоток картонный с наполнением','007',180,100,483,0,1,180,100,483,21,0,'c87103',2,1,'2020-03-12 17:28:39','2020-03-16 02:33:21',NULL,4,0,2,1,15,0,1,2,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0),(44,'Лоток картонный с наполнением','008',180,100,483,0,1,180,100,483,21,0,'c87103',2,1,'2020-03-12 17:28:53','2020-03-16 02:35:30',NULL,13,0,1,3,14,0,1,2,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0),(45,'Лоток картонный с наполнением','009',123,65,383,0,1,123,65,383,26,0,'eba575',2,1,'2020-03-12 17:29:16','2020-03-16 02:41:19',NULL,12,0,1,3,NULL,0,1,2,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0),(46,'Лоток картонный с наполнением','010',123,65,383,0,1,123,65,383,26,0,'b57c60',2,1,'2020-03-12 17:29:31','2020-03-16 02:45:19',NULL,17,0,2,1,10,0,1,2,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `place_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_picture`
--

DROP TABLE IF EXISTS `place_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_picture` (
  `id` int(10) unsigned NOT NULL,
  `picture` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Фотографии упаковок';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_picture`
--

LOCK TABLES `place_picture` WRITE;
/*!40000 ALTER TABLE `place_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `place_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_prototype`
--

DROP TABLE IF EXISTS `place_prototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_prototype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `sub_package_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `inrow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `x` double unsigned NOT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y` double unsigned NOT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  PRIMARY KEY (`id`),
  KEY `fk_place_prototype_to_package_idx` (`package_id`),
  KEY `fk_place_prototype_sub_to_package_idx` (`sub_package_id`),
  CONSTRAINT `fk_place_prototype_sub_to_package` FOREIGN KEY (`sub_package_id`) REFERENCES `package` (`id`),
  CONSTRAINT `fk_place_prototype_to_package` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1551 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_prototype`
--

LOCK TABLES `place_prototype` WRITE;
/*!40000 ALTER TABLE `place_prototype` DISABLE KEYS */;
INSERT  IGNORE INTO `place_prototype` (`id`, `package_id`, `sub_package_id`, `inrow`, `x`, `y`) VALUES (116,59,17,0,12,5),(117,59,17,0,12,244),(998,69,70,0,409,6),(1003,69,70,0,409,112),(1035,72,71,0,409,6),(1040,72,28,0,409,112),(1135,25,21,0,1.5,5.25),(1136,25,16,0,2.5,68.5),(1137,25,16,0,2.5,275.75),(1138,53,21,0,1.5,2.111111111111111),(1139,53,21,0,1.5,62.22222222222223),(1140,53,21,0,1.5,122.33333333333334),(1141,53,21,0,1.5,182.44444444444446),(1142,53,21,0,1.5,242.55555555555557),(1143,53,21,0,1.5,302.66666666666663),(1144,53,21,0,1.5,362.7777777777777),(1145,53,21,0,1.5,422.8888888888888),(1160,61,37,0,4.5,13.25),(1161,61,37,0,4.5,185.5),(1162,61,8,0,5.5,357.75),(1163,55,19,0,16,26.75),(1164,55,19,0,98,26.75),(1165,55,24,0,12.5,89.5),(1166,55,24,0,12.5,286.25),(1182,70,19,0,16,26.75),(1183,70,19,0,98,26.75),(1184,70,24,0,12.5,89.5),(1185,70,24,0,12.5,286.25),(1186,71,15,0,4,11.833333333333334),(1187,71,15,0,4,103.66666666666666),(1188,71,15,0,4,195.5),(1189,71,14,0,17.5,287.3333333333333),(1190,71,14,0,17.5,385.16666666666663),(1197,58,27,0,17.125,5.75),(1198,58,27,0,157.25,5.75),(1199,58,27,0,297.375,5.75),(1200,58,27,0,437.5,5.75),(1201,58,27,0,577.625,5.75),(1202,58,27,0,717.75,5.75),(1203,58,27,0,857.875,5.75),(1204,58,59,0,17.125,76.5),(1205,58,59,0,157.25,76.5),(1206,58,59,0,297.375,76.5),(1207,58,59,0,437.5,76.5),(1208,58,59,0,577.625,76.5),(1209,58,59,0,717.75,76.5),(1210,58,59,0,857.875,76.5),(1211,58,59,0,17.125,147.25),(1212,58,59,0,157.25,147.25),(1213,58,59,0,297.375,147.25),(1214,58,59,0,437.5,147.25),(1215,58,59,0,577.625,147.25),(1216,58,59,0,717.75,147.25),(1217,58,59,0,857.875,147.25),(1218,60,61,0,17.125,5.75),(1219,60,61,0,157.25,5.75),(1220,60,61,0,297.375,5.75),(1221,60,61,0,437.5,5.75),(1222,60,61,0,577.625,5.75),(1223,60,61,0,717.75,5.75),(1224,60,61,0,857.875,5.75),(1225,60,61,0,17.125,76.5),(1226,60,61,0,157.25,76.5),(1227,60,61,0,297.375,76.5),(1228,60,61,0,437.5,76.5),(1229,60,61,0,577.625,76.5),(1230,60,61,0,717.75,76.5),(1231,60,61,0,857.875,76.5),(1232,60,61,0,17.125,147.25),(1233,60,61,0,157.25,147.25),(1234,60,61,0,297.375,147.25),(1235,60,61,0,437.5,147.25),(1236,60,61,0,577.625,147.25),(1237,60,61,0,717.75,147.25),(1238,60,61,0,857.875,147.25),(1239,64,63,0,16.571428571428573,7.166666666666667),(1240,64,63,0,180.14285714285717,7.166666666666667),(1241,64,63,0,343.7142857142857,7.166666666666667),(1242,64,63,0,507.2857142857143,7.166666666666667),(1243,64,63,0,670.8571428571428,7.166666666666667),(1244,64,63,0,834.4285714285713,7.166666666666667),(1245,64,63,0,16.571428571428573,49.33333333333333),(1246,64,63,0,180.14285714285717,49.33333333333333),(1247,64,63,0,343.7142857142857,49.33333333333333),(1248,64,63,0,507.2857142857143,49.33333333333333),(1249,64,63,0,670.8571428571428,49.33333333333333),(1250,64,63,0,834.4285714285713,49.33333333333333),(1251,64,63,0,16.571428571428573,91.5),(1252,64,63,0,180.14285714285717,91.5),(1253,64,63,0,343.7142857142857,91.5),(1254,64,63,0,507.2857142857143,91.5),(1255,64,63,0,670.8571428571428,91.5),(1256,64,63,0,834.4285714285713,91.5),(1257,64,63,0,16.571428571428573,133.66666666666666),(1258,64,63,0,180.14285714285717,133.66666666666666),(1259,64,63,0,343.7142857142857,133.66666666666666),(1260,64,63,0,507.2857142857143,133.66666666666666),(1261,64,63,0,670.8571428571428,133.66666666666666),(1262,64,63,0,834.4285714285713,133.66666666666666),(1263,64,26,0,16.571428571428573,175.83333333333331),(1264,64,26,0,180.14285714285717,175.83333333333331),(1265,64,26,0,343.7142857142857,175.83333333333331),(1266,64,26,0,507.2857142857143,175.83333333333331),(1267,64,26,0,670.8571428571428,175.83333333333331),(1268,64,26,0,834.4285714285713,175.83333333333331),(1269,65,25,0,16.181818181818183,6.8),(1270,65,25,0,114.36363636363637,6.8),(1271,65,25,0,212.54545454545456,6.8),(1272,65,25,0,310.72727272727275,6.8),(1273,65,25,0,408.90909090909093,6.8),(1274,65,25,0,507.0909090909091,6.8),(1275,65,25,0,605.2727272727273,6.8),(1276,65,25,0,703.4545454545454,6.8),(1277,65,25,0,801.6363636363635,6.8),(1278,65,25,0,899.8181818181816,6.8),(1279,65,25,0,16.181818181818183,59.599999999999994),(1280,65,25,0,114.36363636363637,59.599999999999994),(1281,65,25,0,212.54545454545456,59.599999999999994),(1282,65,25,0,310.72727272727275,59.599999999999994),(1283,65,25,0,408.90909090909093,59.599999999999994),(1284,65,25,0,507.0909090909091,59.599999999999994),(1285,65,25,0,605.2727272727273,59.599999999999994),(1286,65,25,0,703.4545454545454,59.599999999999994),(1287,65,25,0,801.6363636363635,59.599999999999994),(1288,65,25,0,899.8181818181816,59.599999999999994),(1289,65,25,0,16.181818181818183,112.39999999999999),(1290,65,25,0,114.36363636363637,112.39999999999999),(1291,65,25,0,212.54545454545456,112.39999999999999),(1292,65,25,0,310.72727272727275,112.39999999999999),(1293,65,25,0,408.90909090909093,112.39999999999999),(1294,65,25,0,507.0909090909091,112.39999999999999),(1295,65,25,0,605.2727272727273,112.39999999999999),(1296,65,25,0,703.4545454545454,112.39999999999999),(1297,65,25,0,801.6363636363635,112.39999999999999),(1298,65,25,0,899.8181818181816,112.39999999999999),(1299,65,66,0,16.181818181818183,165.2),(1300,65,66,0,114.36363636363637,165.2),(1301,65,66,0,212.54545454545456,165.2),(1302,65,66,0,310.72727272727275,165.2),(1303,65,66,0,408.90909090909093,165.2),(1304,65,66,0,507.0909090909091,165.2),(1305,65,66,0,605.2727272727273,165.2),(1306,65,66,0,703.4545454545454,165.2),(1307,65,66,0,801.6363636363635,165.2),(1308,65,66,0,899.8181818181816,165.2),(1309,54,53,0,16.181818181818183,6.8),(1310,54,53,0,114.36363636363637,6.8),(1311,54,53,0,212.54545454545456,6.8),(1312,54,53,0,310.72727272727275,6.8),(1313,54,53,0,408.90909090909093,6.8),(1314,54,53,0,507.0909090909091,6.8),(1315,54,53,0,605.2727272727273,6.8),(1316,54,53,0,703.4545454545454,6.8),(1317,54,53,0,801.6363636363635,6.8),(1318,54,53,0,899.8181818181816,6.8),(1319,54,53,0,16.181818181818183,59.599999999999994),(1320,54,53,0,114.36363636363637,59.599999999999994),(1321,54,53,0,212.54545454545456,59.599999999999994),(1322,54,53,0,310.72727272727275,59.599999999999994),(1323,54,53,0,408.90909090909093,59.599999999999994),(1324,54,53,0,507.0909090909091,59.599999999999994),(1325,54,53,0,605.2727272727273,59.599999999999994),(1326,54,53,0,703.4545454545454,59.599999999999994),(1327,54,53,0,801.6363636363635,59.599999999999994),(1328,54,53,0,899.8181818181816,59.599999999999994),(1329,54,53,0,16.181818181818183,112.39999999999999),(1330,54,53,0,114.36363636363637,112.39999999999999),(1331,54,53,0,212.54545454545456,112.39999999999999),(1332,54,53,0,310.72727272727275,112.39999999999999),(1333,54,53,0,408.90909090909093,112.39999999999999),(1334,54,53,0,507.0909090909091,112.39999999999999),(1335,54,53,0,605.2727272727273,112.39999999999999),(1336,54,53,0,703.4545454545454,112.39999999999999),(1337,54,53,0,801.6363636363635,112.39999999999999),(1338,54,53,0,899.8181818181816,112.39999999999999),(1339,54,66,0,16.181818181818183,165.2),(1340,54,66,0,114.36363636363637,165.2),(1341,54,66,0,212.54545454545456,165.2),(1342,54,66,0,310.72727272727275,165.2),(1343,54,66,0,408.90909090909093,165.2),(1344,54,66,0,507.0909090909091,165.2),(1345,54,66,0,605.2727272727273,165.2),(1346,54,66,0,703.4545454545454,165.2),(1347,54,66,0,801.6363636363635,165.2),(1348,54,66,0,899.8181818181816,165.2),(1349,67,29,0,17.125,7.166666666666667),(1350,67,29,0,157.25,7.166666666666667),(1351,67,29,0,297.375,7.166666666666667),(1352,67,29,0,437.5,7.166666666666667),(1353,67,29,0,577.625,7.166666666666667),(1354,67,29,0,717.75,7.166666666666667),(1355,67,29,0,857.875,7.166666666666667),(1356,67,29,0,17.125,49.33333333333333),(1357,67,29,0,157.25,49.33333333333333),(1358,67,29,0,297.375,49.33333333333333),(1359,67,29,0,437.5,49.33333333333333),(1360,67,29,0,577.625,49.33333333333333),(1361,67,29,0,717.75,49.33333333333333),(1362,67,29,0,857.875,49.33333333333333),(1363,67,29,0,17.125,91.5),(1364,67,29,0,157.25,91.5),(1365,67,29,0,297.375,91.5),(1366,67,29,0,437.5,91.5),(1367,67,29,0,577.625,91.5),(1368,67,29,0,717.75,91.5),(1369,67,29,0,857.875,91.5),(1370,67,68,0,17.125,133.66666666666666),(1371,67,68,0,157.25,133.66666666666666),(1372,67,68,0,297.375,133.66666666666666),(1373,67,68,0,437.5,133.66666666666666),(1374,67,68,0,577.625,133.66666666666666),(1375,67,68,0,717.75,133.66666666666666),(1376,67,68,0,857.875,133.66666666666666),(1377,67,68,0,17.125,175.83333333333331),(1378,67,68,0,157.25,175.83333333333331),(1379,67,68,0,297.375,175.83333333333331),(1380,67,68,0,437.5,175.83333333333331),(1381,67,68,0,577.625,175.83333333333331),(1382,67,68,0,717.75,175.83333333333331),(1383,67,68,0,857.875,175.83333333333331),(1384,69,70,0,16.333333333333332,6),(1385,69,70,0,212.66666666666669,6),(1386,69,70,0,605.3333333333334,6),(1387,69,70,0,801.6666666666667,6),(1388,69,70,0,16.333333333333332,112),(1389,69,70,0,212.66666666666669,112),(1390,69,70,0,605.3333333333334,112),(1391,69,70,0,801.6666666666667,112),(1392,72,71,0,16.333333333333332,6),(1393,72,71,0,212.66666666666669,6),(1394,72,71,0,605.3333333333334,6),(1395,72,71,0,801.6666666666667,6),(1396,72,28,0,16.333333333333332,112),(1397,72,28,0,212.66666666666669,112),(1398,72,28,0,605.3333333333334,112),(1399,72,28,0,801.6666666666667,112),(1440,63,18,0,3.6666666666666665,1.5),(1441,63,18,0,32.333333333333336,1.5),(1442,63,18,0,61,1.5),(1443,63,18,0,89.66666666666667,1.5),(1444,63,18,0,118.33333333333334,1.5),(1445,63,18,0,3.6666666666666665,26),(1446,63,18,0,32.333333333333336,26),(1447,63,18,0,61,26),(1448,63,18,0,89.66666666666667,26),(1449,63,18,0,118.33333333333334,26),(1450,63,36,0,1,50.5),(1451,63,36,0,1,137),(1452,63,36,0,1,223.5),(1453,63,36,0,1,310),(1454,63,36,0,1,396.5),(1485,62,18,0,9.166666666666666,1.5),(1486,62,18,0,43.33333333333333,1.5),(1487,62,18,0,77.5,1.5),(1488,62,18,0,111.66666666666667,1.5),(1489,62,18,0,145.83333333333334,1.5),(1490,62,18,0,9.166666666666666,26),(1491,62,18,0,43.33333333333333,26),(1492,62,18,0,77.5,26),(1493,62,18,0,111.66666666666667,26),(1494,62,18,0,145.83333333333334,26),(1495,62,36,0,17.5,50.5),(1496,62,36,0,17.5,137),(1497,62,36,0,17.5,223.5),(1498,62,36,0,17.5,310),(1499,62,36,0,17.5,396.5),(1500,29,13,0,1,3.857142857142857),(1501,29,13,0,1,83.71428571428572),(1502,29,13,0,1,163.57142857142858),(1503,29,13,0,1,243.42857142857144),(1504,29,13,0,1,323.2857142857143),(1505,29,13,0,1,403.1428571428571),(1533,4,58,0,1,30),(1534,4,60,0,1,278),(1535,4,64,0,1,526),(1536,4,65,0,1,774),(1537,4,54,0,1,1022),(1538,4,67,0,1,1270),(1539,4,69,0,1,1518),(1540,4,72,0,1,1766),(1541,4,73,0,1,2014),(1547,73,42,1,5.4,4),(1548,73,43,1,335.79999999999995,4),(1549,73,45,1,591.1999999999999,4),(1550,73,45,1,794.5999999999999,4);
/*!40000 ALTER TABLE `place_prototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_purpose`
--

DROP TABLE IF EXISTS `place_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_purpose` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_purpose`
--

LOCK TABLES `place_purpose` WRITE;
/*!40000 ALTER TABLE `place_purpose` DISABLE KEYS */;
INSERT  IGNORE INTO `place_purpose` (`id`, `name`) VALUES (1,'Для хранения товара'),(2,'Для хранения готовых заказов'),(3,'Для хранения вновь поступившего товара');
/*!40000 ALTER TABLE `place_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_relation`
--

DROP TABLE IF EXISTS `place_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `sub_place_id` int(10) unsigned NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  PRIMARY KEY (`id`),
  KEY `fk_place_prototype_sub_to_package_idx` (`sub_place_id`),
  KEY `fk_place_id_to_place_idx` (`place_id`),
  CONSTRAINT `fk_place_id_to_place` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_sub_place_id_to_place` FOREIGN KEY (`sub_place_id`) REFERENCES `place` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица хранит связи между местами хранения, поесть их вложенность друг в друга\nЕсли в таблице есть такие записи:\nplace_id 1,  sub_place 2\nplace_id 1,  sub_place 3\nТо место place_id=1 содержит в себе place_id=2 и place_id=3';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_relation`
--

LOCK TABLES `place_relation` WRITE;
/*!40000 ALTER TABLE `place_relation` DISABLE KEYS */;
INSERT  IGNORE INTO `place_relation` (`id`, `place_id`, `sub_place_id`) VALUES (1,2,3),(2,2,4),(3,2,5),(4,2,6),(5,2,7),(6,2,8),(7,2,9),(8,2,10),(9,2,11),(10,2,12),(11,2,13),(12,2,14),(13,15,16),(14,15,17),(15,15,18),(16,15,19),(17,15,20),(18,15,21),(19,15,22),(20,15,23),(21,15,24),(22,15,25),(23,15,26),(24,15,27),(25,28,29),(26,28,30),(27,28,31),(28,28,32),(29,28,33),(30,28,34),(31,28,35),(32,28,36),(33,28,37),(34,28,38),(35,28,39),(36,28,40),(37,41,42),(38,41,43),(39,41,44),(40,41,45),(41,41,46),(42,41,47),(43,41,48),(44,41,49),(45,41,50),(46,41,51),(47,41,52),(48,41,53),(49,54,55),(50,54,56),(51,54,57),(52,54,58),(53,54,59),(54,54,60),(55,54,61),(56,54,62),(57,54,63),(58,54,64),(59,54,65),(60,54,66),(61,67,68),(62,67,69),(63,67,70),(64,67,71),(65,67,72),(66,67,73),(67,67,74),(68,67,75),(69,67,76),(70,67,77),(71,67,78),(72,67,79),(73,80,81),(74,80,82),(75,83,84),(76,1,2),(77,1,15),(78,1,28),(79,1,41),(80,1,54),(81,1,67),(82,1,80),(83,1,83),(84,81,85),(85,85,86);
/*!40000 ALTER TABLE `place_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_status`
--

DROP TABLE IF EXISTS `place_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_status` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Статус места хранения',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_status`
--

LOCK TABLES `place_status` WRITE;
/*!40000 ALTER TABLE `place_status` DISABLE KEYS */;
INSERT  IGNORE INTO `place_status` (`id`, `name`) VALUES (1,'Свободно'),(2,'Частично занято'),(3,'Занято'),(4,'В ремонте'),(5,'В резерве'),(6,'Удалено');
/*!40000 ALTER TABLE `place_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_type`
--

DROP TABLE IF EXISTS `place_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_type` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_type`
--

LOCK TABLES `place_type` WRITE;
/*!40000 ALTER TABLE `place_type` DISABLE KEYS */;
INSERT  IGNORE INTO `place_type` (`id`, `name`) VALUES (1,'Ячейка'),(2,'Контейнер'),(3,'Лоток'),(4,'Полка'),(5,'Площадка');
/*!40000 ALTER TABLE `place_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_type_id` int(10) unsigned NOT NULL,
  `product_category_id` int(10) unsigned NOT NULL,
  `h` int(10) unsigned NOT NULL COMMENT 'Габаритный размер товара h - высота',
  `w` int(10) unsigned NOT NULL COMMENT 'Габаритный размер товара w - ширина',
  `l` int(10) unsigned NOT NULL COMMENT 'Габаритный размер товара l - длина',
  `weight` int(10) unsigned NOT NULL COMMENT 'Значение массы товара\nЕсли товар взвешен и это значение проверено, \nТо product_weight_verified = 1\n(по умолчанию product_weight_verified = 0)',
  `weight_verified` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Если товар взвешен, \nТо product_weight_verified = 1\n(по умолчанию product_weight_verified = 0)',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_to_product_type_idx` (`product_type_id`),
  KEY `product_to_category_idx` (`product_category_id`),
  CONSTRAINT `product_to_category` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`),
  CONSTRAINT `product_to_product_type` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Категория продукта:\n	- штучный товар\n	- простое изделие\n	- сложное изделие\n	- профиль';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT  IGNORE INTO `product_category` (`id`, `name`) VALUES (1,'Штучный товар'),(2,'Простое изделие'),(3,'Сложное изделие'),(4,'Профиль');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_composite`
--

DROP TABLE IF EXISTS `product_composite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_composite` (
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `fk_product_composite_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Категория продукта:\n	- сложное изделие';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_composite`
--

LOCK TABLES `product_composite` WRITE;
/*!40000 ALTER TABLE `product_composite` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_composite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` blob,
  `image` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `product_info_to_product` FOREIGN KEY (`id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_kit`
--

DROP TABLE IF EXISTS `product_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_kit` (
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `fk_product_kit_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Комплект товаров\nСам по себе является еденицей товара, поэтому имеет идентифицирующую связь с product.product_id\nСостоит из единиц товара, информация о том какие товары и в каком количестве присутствуют в данном комплекте хранится в product_kit_content';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_kit`
--

LOCK TABLES `product_kit` WRITE;
/*!40000 ALTER TABLE `product_kit` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_kit_content`
--

DROP TABLE IF EXISTS `product_kit_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_kit_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_kit_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `count` int(11) NOT NULL COMMENT 'Количество единиц товара в комплекте',
  PRIMARY KEY (`id`),
  KEY `fk_product_kit_content_product_idx` (`product_id`),
  KEY `fk_product_kit_content_product_kit_idx` (`product_kit_id`),
  CONSTRAINT `fk_product_kit_content_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_kit_content_product_kit` FOREIGN KEY (`product_kit_id`) REFERENCES `product_kit` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Содержимое комплекта товаров\nИнформация о том какие товары (product_kit_content_product_id) и в каком количестве (product_kit_content_count) присутствуют в комплекте product_kit_content_product_kit_id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_kit_content`
--

LOCK TABLES `product_kit_content` WRITE;
/*!40000 ALTER TABLE `product_kit_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_kit_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_profile`
--

DROP TABLE IF EXISTS `product_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_profile` (
  `product_id` int(10) unsigned NOT NULL,
  `material_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_profile_to_material_idx` (`material_id`),
  CONSTRAINT `fk_product_profile_to_material` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_profile_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Категория продукта:\n	- профиль';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_profile`
--

LOCK TABLES `product_profile` WRITE;
/*!40000 ALTER TABLE `product_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_simple`
--

DROP TABLE IF EXISTS `product_simple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_simple` (
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `fk_product_simple_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Категория продукта:\n	- простое изделие';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_simple`
--

LOCK TABLES `product_simple` WRITE;
/*!40000 ALTER TABLE `product_simple` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_simple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_simple_part`
--

DROP TABLE IF EXISTS `product_simple_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_simple_part` (
  `id` int(10) unsigned NOT NULL,
  `product_material_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_simple_id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_simple_part_product_material_idx` (`product_material_id`),
  KEY `fk_product_simple_part_product_idx` (`product_id`),
  KEY `fk_product_simple_part_to_product_simple_product_idx` (`product_simple_id`),
  CONSTRAINT `fk_product_simple_part_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_simple_part_product_material` FOREIGN KEY (`product_material_id`) REFERENCES `material` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_simple_part_to_product_simple_product` FOREIGN KEY (`product_simple_id`) REFERENCES `product_simple` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_simple_part`
--

LOCK TABLES `product_simple_part` WRITE;
/*!40000 ALTER TABLE `product_simple_part` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_simple_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_single`
--

DROP TABLE IF EXISTS `product_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_single` (
  `product_id` int(10) unsigned NOT NULL,
  `material_id` int(10) unsigned NOT NULL COMMENT 'Материал из чего сделан данный штучный товар',
  PRIMARY KEY (`product_id`),
  KEY `fk_product_single_to_materia_idx` (`material_id`),
  CONSTRAINT `fk_product_single_to_material` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_single_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Категория продукта:\n	- штучный товар';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_single`
--

LOCK TABLES `product_single` WRITE;
/*!40000 ALTER TABLE `product_single` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_single` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT  IGNORE INTO `product_type` (`id`, `name`) VALUES (1,'Штучный товар'),(2,'Часть простого изделия'),(3,'Простое изделие'),(4,'Сложное изделие'),(5,'Комплект товаров');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rack`
--

DROP TABLE IF EXISTS `rack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rack` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `line_id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rack_line1_idx` (`line_id`),
  CONSTRAINT ` fk_rack_to_line` FOREIGN KEY (`line_id`) REFERENCES `line` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rack`
--

LOCK TABLES `rack` WRITE;
/*!40000 ALTER TABLE `rack` DISABLE KEYS */;
/*!40000 ALTER TABLE `rack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rack_type`
--

DROP TABLE IF EXISTS `rack_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rack_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `line_id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rack_line1_idx` (`line_id`),
  CONSTRAINT ` fk_rack_to_line0` FOREIGN KEY (`line_id`) REFERENCES `line_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rack_type`
--

LOCK TABLES `rack_type` WRITE;
/*!40000 ALTER TABLE `rack_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `rack_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Получатель заказа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelf`
--

DROP TABLE IF EXISTS `shelf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rack_id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shelf_to_rack` (`rack_id`),
  CONSTRAINT `fk_shelf_to_rack` FOREIGN KEY (`rack_id`) REFERENCES `rack` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelf`
--

LOCK TABLES `shelf` WRITE;
/*!40000 ALTER TABLE `shelf` DISABLE KEYS */;
/*!40000 ALTER TABLE `shelf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelf_type`
--

DROP TABLE IF EXISTS `shelf_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelf_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rack_id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shelf_to_rack` (`rack_id`),
  CONSTRAINT `fk_shelf_to_rack0` FOREIGN KEY (`rack_id`) REFERENCES `rack_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelf_type`
--

LOCK TABLES `shelf_type` WRITE;
/*!40000 ALTER TABLE `shelf_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `shelf_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tray`
--

DROP TABLE IF EXISTS `tray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tray` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shelf_id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tray_shelf1_idx` (`shelf_id`),
  CONSTRAINT `fk_tray_to_shelf` FOREIGN KEY (`shelf_id`) REFERENCES `shelf` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tray`
--

LOCK TABLES `tray` WRITE;
/*!40000 ALTER TABLE `tray` DISABLE KEYS */;
/*!40000 ALTER TABLE `tray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tray_type`
--

DROP TABLE IF EXISTS `tray_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tray_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shelf_id` int(10) unsigned NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tray_shelf1_idx` (`shelf_id`),
  CONSTRAINT `fk_tray_to_shelf0` FOREIGN KEY (`shelf_id`) REFERENCES `shelf_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tray_type`
--

LOCK TABLES `tray_type` WRITE;
/*!40000 ALTER TABLE `tray_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tray_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи зарегистрированные в системе (на сайте)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payer`
--

DROP TABLE IF EXISTS `user_payer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_payer` (
  `user_id` int(10) unsigned NOT NULL,
  `payer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`payer_id`),
  KEY `fk_to_user_idx` (`user_id`),
  KEY `fk_user_payer_to_payer` (`payer_id`),
  CONSTRAINT `fk_user_payer_to_payer` FOREIGN KEY (`payer_id`) REFERENCES `payer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_payer_to_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Связь пользователей зарегистрированных в системе с плательщиками (клиентами),\nзаведенными данными пользователями ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payer`
--

LOCK TABLES `user_payer` WRITE;
/*!40000 ALTER TABLE `user_payer` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_payer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_recipient`
--

DROP TABLE IF EXISTS `user_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_recipient` (
  `user_id` int(10) unsigned NOT NULL,
  `recipient_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`recipient_id`),
  KEY `fk_to_recipient_idx` (`recipient_id`),
  CONSTRAINT `fk_ user_recipient _to_recipient` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_ user_recipient _to_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Связь пользователей зарегистрированных в системе (на сайте) с получателями заказа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_recipient`
--

LOCK TABLES `user_recipient` WRITE;
/*!40000 ALTER TABLE `user_recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'номер склада',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя склада',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT  IGNORE INTO `warehouse` (`id`, `name`) VALUES (1,'Склад №1'),(2,'Склад №2'),(3,'Склад №3');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_type`
--

DROP TABLE IF EXISTS `warehouse_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'номер склада',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя склада',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_type`
--

LOCK TABLES `warehouse_type` WRITE;
/*!40000 ALTER TABLE `warehouse_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `warehouse_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(10) unsigned NOT NULL COMMENT 'Склад может иметь несколько Зон',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_warehouse_to_zone_idx` (`warehouse_id`),
  CONSTRAINT `fk_zone_to_warehouse` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT  IGNORE INTO `zone` (`id`, `warehouse_id`, `name`) VALUES (1,1,'Зона №1'),(2,1,'Зона №2'),(3,2,'Зона №1'),(4,2,'Зона №2'),(5,3,'Зона №1'),(6,3,'Зона №2');
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_type`
--

DROP TABLE IF EXISTS `zone_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(10) unsigned NOT NULL COMMENT 'Склад может иметь несколько Зон',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_warehouse_to_zone_idx` (`warehouse_id`),
  CONSTRAINT `fk_zone_to_warehouse0` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_type`
--

LOCK TABLES `zone_type` WRITE;
/*!40000 ALTER TABLE `zone_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-16 10:17:46
