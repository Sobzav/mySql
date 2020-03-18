-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sobzav
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sobzav` ;

-- -----------------------------------------------------
-- Schema sobzav
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sobzav` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `sobzav` ;

-- -----------------------------------------------------
-- Table `sobzav`.`warehouse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`warehouse` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`warehouse` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'номер склада',
  `name` VARCHAR(45) NOT NULL COMMENT 'Имя склада',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`product_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`product_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_category` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_category` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`))
COMMENT = 'Категория продукта:\n	- штучный товар\n	- простое изделие\n	- сложное изделие\n	- профиль';


-- -----------------------------------------------------
-- Table `sobzav`.`product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_type_id` INT UNSIGNED NOT NULL,
  `product_category_id` INT UNSIGNED NOT NULL,
  `h` INT UNSIGNED NOT NULL COMMENT 'Габаритный размер товара h - высота',
  `w` INT UNSIGNED NOT NULL COMMENT 'Габаритный размер товара w - ширина',
  `l` INT UNSIGNED NOT NULL COMMENT 'Габаритный размер товара l - длина',
  `weight` INT UNSIGNED NOT NULL COMMENT 'Значение массы товара\nЕсли товар взвешен и это значение проверено, \nТо product_weight_verified = 1\n(по умолчанию product_weight_verified = 0)',
  `weight_verified` TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Если товар взвешен, \nТо product_weight_verified = 1\n(по умолчанию product_weight_verified = 0)',
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` TIMESTAMP NULL,
  `deleted` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  INDEX `product_to_product_type_idx` (`product_type_id` ASC) VISIBLE,
  INDEX `product_to_category_idx` (`product_category_id` ASC) VISIBLE,
  CONSTRAINT `product_to_product_type`
    FOREIGN KEY (`product_type_id`)
    REFERENCES `sobzav`.`product_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `product_to_category`
    FOREIGN KEY (`product_category_id`)
    REFERENCES `sobzav`.`product_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`place_picture`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place_picture` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place_picture` (
  `id` INT UNSIGNED NOT NULL,
  `picture` BLOB NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'Фотографии упаковок';


-- -----------------------------------------------------
-- Table `sobzav`.`place_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place_type` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`place_status`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place_status` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place_status` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL COMMENT 'Статус места хранения',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`place_purpose`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place_purpose` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place_purpose` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`package_nature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`package_nature` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`package_nature` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'Фотографии упаковок';


-- -----------------------------------------------------
-- Table `sobzav`.`package`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`package` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`package` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT 'Наименование упаковки\nКак пример:\n	- Пакет полиэтиленовый\n	- Ячейка пластикового контейнера\n	- Контейнер пластиковый\n	- Коробка картонная\n	- Ящик деревянный\n	- Контейнер металический\n	- Палета деревянная\n	- Площадка открытая для хранения Крупногабаритного товара\n	и т.д….',
  `code` CHAR(7) NOT NULL COMMENT 'Обозначение\nУникальное сочетание букв и цифр для удобной и однозначной идентификации упаковки\nКак пример:\n	B001 - полиэтиленовый пакет №1 (размер h=2мм х w=50мм х l=100мм)\n	B002 - пластиковая ячейка контейнера (всего 25 ячеек 5 х 5, размер ячейки h=25мм х w=50мм х l=50мм)\n	и т.д….',
  `iwx` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внутренний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `iwy` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внутренний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `iwz` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внутренний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `volume` DOUBLE GENERATED ALWAYS AS ((iwx * iwy * iwz)) STORED COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `payload` INT UNSIGNED NOT NULL COMMENT 'Грузоподъемность упаковки в граммах.',
  `nature_id` INT UNSIGNED NULL COMMENT 'Id природы места',
  `wx` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внешний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `wy` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внешний размер - Высота  элемента в положении реж - Высота  элемента в положении режима эксплуатации - Ширина  элемента в положении режима эксплуатацииима эксплуатации в мм.',
  `wz` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внешний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `iws1` MEDIUMINT GENERATED ALWAYS AS (least(`iwx`,`iwy`,`iwz`)) STORED COMMENT 'Внутренний размер, отсортированный по возрастанию в мм.',
  `iws2` MEDIUMINT GENERATED ALWAYS AS (((((`iwx` + `iwy`) + `iwz`) - least(`iwx`,`iwy`,`iwz`)) - greatest(`iwx`,`iwy`,`iwz`))) STORED COMMENT 'Внутренний размер, отсортированный по возрастанию в мм.',
  `iws3` MEDIUMINT GENERATED ALWAYS AS (greatest(`iwx`,`iwy`,`iwz`)) STORED COMMENT 'Внутренний размер, отсортированный по возрастанию в мм.',
  `archetype_id` INT UNSIGNED NULL COMMENT 'Id базового типа из этой же таблицы, на основе которого был создан не базовый тип',
  `bycoordinates` TINYINT UNSIGNED NULL DEFAULT 0,
  `color` CHAR(6) NOT NULL COMMENT 'Цвет упаковки на схеме в графическом интерфейсе',
  `depth` TINYINT UNSIGNED NULL DEFAULT 2 COMMENT '1 - элемент отобразит себя\\n2 - элемент отобразит себя и внутренние элементы\\n3 - элемент отобразит 2 уровня внутренних элементов',
  `turned` TINYINT UNSIGNED NULL DEFAULT 0 COMMENT '0 - элемент будет отображен как есть\\\\\\\\n1 - элемент будет отображен повернутым',
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` TIMESTAMP NULL,
  `sub1_id` INT UNSIGNED NULL,
  `inrow1` TINYINT UNSIGNED NULL DEFAULT 0,
  `x1` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y1` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub2_id` INT UNSIGNED NULL,
  `inrow2` TINYINT UNSIGNED NULL DEFAULT 0,
  `x2` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y2` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub3_id` INT UNSIGNED NULL,
  `inrow3` TINYINT UNSIGNED NULL DEFAULT 0,
  `x3` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y3` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub4_id` INT UNSIGNED NULL,
  `inrow4` TINYINT UNSIGNED NULL DEFAULT 0,
  `x4` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y4` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub5_id` INT UNSIGNED NULL,
  `inrow5` TINYINT UNSIGNED NULL DEFAULT 0,
  `x5` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y5` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub6_id` INT UNSIGNED NULL,
  `inrow6` TINYINT UNSIGNED NULL DEFAULT 0,
  `x6` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y6` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub7_id` INT UNSIGNED NULL,
  `inrow7` TINYINT UNSIGNED NULL DEFAULT 0,
  `x7` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y7` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub8_id` INT UNSIGNED NULL,
  `inrow8` TINYINT UNSIGNED NULL DEFAULT 0,
  `x8` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y8` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub9_id` INT UNSIGNED NULL,
  `inrow9` TINYINT UNSIGNED NULL DEFAULT 0,
  `x9` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y9` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `code_UNIQUE` (`code` ASC) VISIBLE,
  INDEX `fk_package_to_photo_idx` (`nature_id` ASC) VISIBLE,
  INDEX `fk_package_to_package_idx` (`archetype_id` ASC, `sub1_id` ASC) VISIBLE,
  CONSTRAINT `fk_package_to_package_nature`
    FOREIGN KEY (`nature_id`)
    REFERENCES `sobzav`.`package_nature` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_package_to_package`
    FOREIGN KEY (`archetype_id` , `sub1_id`)
    REFERENCES `sobzav`.`package` (`id` , `id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Упаковка места хранения или товара.\nИнформация о всех видах упаковок, их размерах, форме и материале из которого они сделана\nФото тары\nДанный справочник универсален и в нем хранится весь перечень упаковок для хранения на складе, упаковок единиц товара, упаковок комплектов и сборок, а так же и тары для комплектации заказов.\nКак пример:\n	- ';


-- -----------------------------------------------------
-- Table `sobzav`.`place`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `addr` CHAR(7) NOT NULL COMMENT 'Обозначение\nУникальное сочетание букв и цифр для удобной и однозначной идентификации упаковки\nКак пример:\n	B001 - полиэтиленовый пакет №1 (размер h=2мм х w=50мм х l=100мм)\n	B002 - пластиковая ячейка контейнера (всего 25 ячеек 5 х 5, размер ячейки h=25мм х w=50мм х l=50мм)\n	и т.д….',
  `name` VARCHAR(45) NOT NULL COMMENT 'Наименование упаковки\nКак пример:\n	- Пакет полиэтиленовый\n	- Ячейка пластикового контейнера\n	- Контейнер пластиковый\n	- Коробка картонная\n	- Ящик деревянный\n	- Контейнер металический\n	- Палета деревянная\n	- Площадка открытая для хранения Крупногабаритного товара\n	и т.д….',
  `picture_id` INT UNSIGNED NULL COMMENT 'Контейнер может иметь несколько Мест',
  `package_id` INT UNSIGNED NULL COMMENT 'Ячейка может иметь несколько Мест',
  `payload` INT UNSIGNED NOT NULL COMMENT 'Грузоподъемность упаковки в граммах.',
  `x` DOUBLE UNSIGNED NOT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y` DOUBLE UNSIGNED NOT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `wx` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внешний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `wy` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внешний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `wz` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внешний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `iwx` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внутренний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `iwy` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внутренний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `iwz` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внутренний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `color` CHAR(7) NOT NULL COMMENT 'Цвет упаковки на схеме в графическом интерфейсе',
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` TIMESTAMP NULL,
  `place_type_id` INT UNSIGNED NOT NULL,
  `place_status_id` INT UNSIGNED NOT NULL,
  `place_purpose_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fr_place_to_place_picture_idx` (`picture_id` ASC) VISIBLE,
  INDEX `fk_place_to_place_type_idx` (`place_type_id` ASC) VISIBLE,
  INDEX `fk_place_to_place_status_idx` (`place_status_id` ASC) VISIBLE,
  INDEX `fk_place_to_place_purpose_idx` (`place_purpose_id` ASC) VISIBLE,
  INDEX `fk_place_to_package_idx` (`package_id` ASC) VISIBLE,
  CONSTRAINT `fr_place_to_place_picture`
    FOREIGN KEY (`picture_id`)
    REFERENCES `sobzav`.`place_picture` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_place_to_place_type`
    FOREIGN KEY (`place_type_id`)
    REFERENCES `sobzav`.`place_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_to_place_status`
    FOREIGN KEY (`place_status_id`)
    REFERENCES `sobzav`.`place_status` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_to_place_purpose`
    FOREIGN KEY (`place_purpose_id`)
    REFERENCES `sobzav`.`place_purpose` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_to_package`
    FOREIGN KEY (`package_id`)
    REFERENCES `sobzav`.`package` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Таблица хранит в себе перечень всех месть хранения\nЕсли у конкретного места хранения package_id не null,\nто данное место имеет прототип из таблицы package\nи все параметры этого места и все внутреннее содержимое\nБерется из прототипа';


-- -----------------------------------------------------
-- Table `sobzav`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`customer` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`customer` (
  `customer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID покупателя',
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`payer_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`payer_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`payer_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'Физическое или юридическое лицо.\nДля ИП логика другая: счета для ИП - от ИП\nДля ООО - от ООО.\nНо выбирается вручную. Если сделать поле \"тип налогообложения\" - можно автоматом выставлять счета соответствующие';


-- -----------------------------------------------------
-- Table `sobzav`.`payer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`payer` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`payer` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `payer_type_id` INT UNSIGNED NOT NULL COMMENT 'Вид плательщика (клиента) - из таблицы payer_type:\n	физическое лицо\n	Юридическое лицо\n	…',
  PRIMARY KEY (`id`),
  INDEX `fk_payer_to_payer_type_idx` (`payer_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_payer_to_order`
    FOREIGN KEY (`id`)
    REFERENCES `sobzav`.`order_phys_pers` (`phys_pers_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_payer_to_payer_type`
    FOREIGN KEY (`payer_type_id`)
    REFERENCES `sobzav`.`payer_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Плательщик по заказу';


-- -----------------------------------------------------
-- Table `sobzav`.`person`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`person` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`person` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор плательщика (клиента) из таблицы payer',
  `name` VARCHAR(16) NOT NULL,
  `surname` VARCHAR(16) NOT NULL COMMENT 'Фамилия',
  `middlename` VARCHAR(45) NOT NULL,
  `address_id` INT UNSIGNED NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL COMMENT 'Контактное лицо',
  `created` TIMESTAMP NOT NULL,
  `updated` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_person_to_payer`
    FOREIGN KEY (`id`)
    REFERENCES `sobzav`.`payer` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
COMMENT = 'Плательщик (Клиент) - Физическое лицо';


-- -----------------------------------------------------
-- Table `sobzav`.`order_phys_pers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`order_phys_pers` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`order_phys_pers` (
  `phys_pers_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_phys_pers_id` INT UNSIGNED NOT NULL,
  `order_customer_id` INT UNSIGNED NOT NULL,
  `create_order_datetime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`phys_pers_id`),
  INDEX `fk_Order_Customer1_idx` (`order_customer_id` ASC) VISIBLE,
  INDEX `order_phys_pers_to_phys_pers_idx` (`order_phys_pers_id` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Customer1`
    FOREIGN KEY (`order_customer_id`)
    REFERENCES `sobzav`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `order_phys_pers_to_phys_pers`
    FOREIGN KEY (`order_phys_pers_id`)
    REFERENCES `sobzav`.`person` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`zone`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`zone` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`zone` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `warehouse_id` INT UNSIGNED NOT NULL COMMENT 'Склад может иметь несколько Зон',
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_warehouse_to_zone_idx` (`warehouse_id` ASC) VISIBLE,
  CONSTRAINT `fk_zone_to_warehouse`
    FOREIGN KEY (`warehouse_id`)
    REFERENCES `sobzav`.`warehouse` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`floor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`floor` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`floor` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_id` INT UNSIGNED NOT NULL COMMENT 'Зона имеет несколько этажей от 0 до ...',
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_floor_zone1_idx` (`zone_id` ASC) VISIBLE,
  CONSTRAINT `fk_floor_to_zone`
    FOREIGN KEY (`zone_id`)
    REFERENCES `sobzav`.`zone` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`line`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`line` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`line` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `floor_id` INT UNSIGNED NOT NULL COMMENT 'Зона имеет несколько этажей',
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_line_floor1_idx` (`floor_id` ASC) VISIBLE,
  CONSTRAINT `fk_line_to_floor`
    FOREIGN KEY (`floor_id`)
    REFERENCES `sobzav`.`floor` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`rack`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`rack` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`rack` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `line_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_rack_line1_idx` (`line_id` ASC) VISIBLE,
  CONSTRAINT ` fk_rack_to_line`
    FOREIGN KEY (`line_id`)
    REFERENCES `sobzav`.`line` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`shelf`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`shelf` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`shelf` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `rack_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_shelf_to_rack` (`rack_id` ASC) VISIBLE,
  CONSTRAINT `fk_shelf_to_rack`
    FOREIGN KEY (`rack_id`)
    REFERENCES `sobzav`.`rack` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`tray`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`tray` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`tray` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `shelf_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tray_shelf1_idx` (`shelf_id` ASC) VISIBLE,
  CONSTRAINT `fk_tray_to_shelf`
    FOREIGN KEY (`shelf_id`)
    REFERENCES `sobzav`.`shelf` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`container`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`container` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`container` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tray_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_container_tray1_idx` (`tray_id` ASC) VISIBLE,
  CONSTRAINT `fk_container_to_tray`
    FOREIGN KEY (`tray_id`)
    REFERENCES `sobzav`.`tray` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`cell`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`cell` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`cell` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `container_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cell_container1_idx` (`container_id` ASC) VISIBLE,
  CONSTRAINT `fk_cell_to_container`
    FOREIGN KEY (`container_id`)
    REFERENCES `sobzav`.`container` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`location`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`location` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`location` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Размещение товаров (product) на местах хранения (place) на складе',
  `count` INT UNSIGNED NOT NULL COMMENT 'Количество продукта location_product_id, хранящегося в месте location_place_id',
  `place_id` INT UNSIGNED NOT NULL COMMENT 'На одном Месте может быть несколько Размещений Продуктов location с разными артикулами',
  `product_id` INT UNSIGNED NOT NULL COMMENT 'Связь с product_id',
  PRIMARY KEY (`id`),
  INDEX `fk_location_place_idx` (`place_id` ASC) VISIBLE,
  INDEX `fk_location_product_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `fk_location_to_place`
    FOREIGN KEY (`place_id`)
    REFERENCES `sobzav`.`place` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_location_to_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`packing4`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`packing4` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`packing4` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` INT UNSIGNED NOT NULL COMMENT 'Количество штучного товара внутри данной упаковки',
  `product_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id продукта product,\nуказывающий какой продукт из таблицы product хранится внутри данной фасовки.',
  PRIMARY KEY (`id`),
  INDEX `fk_packing4_product_idx` (`product_id` ASC) VISIBLE,
  INDEX `fk_packing4_to_package_idx` (`package_id` ASC) VISIBLE,
  CONSTRAINT `fk_packing4_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing4_to_package`
    FOREIGN KEY (`package_id`)
    REFERENCES `sobzav`.`package` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Минимально возможная упаковка содержащая штучный товар внутри';


-- -----------------------------------------------------
-- Table `sobzav`.`packing3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`packing3` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`packing3` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` INT UNSIGNED NOT NULL COMMENT 'Количество упаковок packing4 внутри данной упаковки',
  `packing4_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id фасовки packing4,\nуказывающий какая фасовка из таблицы packing4 хранится внутри данной.',
  PRIMARY KEY (`id`),
  INDEX `fk_packing3_packing4_idx` (`packing4_id` ASC) VISIBLE,
  INDEX `fk_packing3_to_package_idx` (`package_id` ASC) VISIBLE,
  CONSTRAINT `fk_packing3_packing4`
    FOREIGN KEY (`packing4_id`)
    REFERENCES `sobzav`.`packing4` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing3_to_package`
    FOREIGN KEY (`package_id`)
    REFERENCES `sobzav`.`package` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Упаковка, содержащая внутри упаковку, в которой штучный товар';


-- -----------------------------------------------------
-- Table `sobzav`.`packing2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`packing2` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`packing2` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` INT UNSIGNED NOT NULL COMMENT 'Количество упаковок packing3 внутри данной упаковки',
  `packing3_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id фасовки packing3',
  PRIMARY KEY (`id`),
  INDEX `fk_packing2_packing3_idx` (`packing3_id` ASC) VISIBLE,
  INDEX `fk_packing2_to_package_idx` (`package_id` ASC) VISIBLE,
  CONSTRAINT `fk_packing2_packing3`
    FOREIGN KEY (`packing3_id`)
    REFERENCES `sobzav`.`packing3` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing2_to_package`
    FOREIGN KEY (`package_id`)
    REFERENCES `sobzav`.`package` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`packing1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`packing1` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`packing1` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` INT UNSIGNED NOT NULL COMMENT 'Количество упаковок packing2 внутри данной упаковки',
  `packing2_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id фасовки packing2',
  PRIMARY KEY (`id`),
  INDEX `fk_packing1_packing2_idx` (`packing2_id` ASC) VISIBLE,
  INDEX `fk_packing1_to_package_idx` (`package_id` ASC) VISIBLE,
  CONSTRAINT `fk_packing1_packing2`
    FOREIGN KEY (`packing2_id`)
    REFERENCES `sobzav`.`packing2` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing1_to_package`
    FOREIGN KEY (`package_id`)
    REFERENCES `sobzav`.`package` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`packing0`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`packing0` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`packing0` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `count` INT UNSIGNED NOT NULL COMMENT 'Количество упаковок packing1 внутри данной упаковки',
  `packing1_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id фасовки packing1',
  PRIMARY KEY (`id`),
  INDEX `fk_packing0_packing1_idx` (`packing1_id` ASC) VISIBLE,
  INDEX `fk_packing0_to_package_idx` (`package_id` ASC) VISIBLE,
  CONSTRAINT `fk_packing0_packing1`
    FOREIGN KEY (`packing1_id`)
    REFERENCES `sobzav`.`packing1` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_packing0_to_package`
    FOREIGN KEY (`package_id`)
    REFERENCES `sobzav`.`package` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`product_info`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_info` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_info` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` BLOB NULL,
  `image` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `product_info_to_product`
    FOREIGN KEY (`id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`product_kit`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_kit` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_kit` (
  `product_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `fk_product_kit_to_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Комплект товаров\nСам по себе является еденицей товара, поэтому имеет идентифицирующую связь с product.product_id\nСостоит из единиц товара, информация о том какие товары и в каком количестве присутствуют в данном комплекте хранится в product_kit_content';


-- -----------------------------------------------------
-- Table `sobzav`.`product_kit_content`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_kit_content` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_kit_content` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_kit_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  `count` INT NOT NULL COMMENT 'Количество единиц товара в комплекте',
  INDEX `fk_product_kit_content_product_idx` (`product_id` ASC) VISIBLE,
  INDEX `fk_product_kit_content_product_kit_idx` (`product_kit_id` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_product_kit_content_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_kit_content_product_kit`
    FOREIGN KEY (`product_kit_id`)
    REFERENCES `sobzav`.`product_kit` (`product_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Содержимое комплекта товаров\nИнформация о том какие товары (product_kit_content_product_id) и в каком количестве (product_kit_content_count) присутствуют в комплекте product_kit_content_product_kit_id';


-- -----------------------------------------------------
-- Table `sobzav`.`material`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`material` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`material` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'Природа материала\nМатериал из которого сделан товар, упаковка';


-- -----------------------------------------------------
-- Table `sobzav`.`product_single`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_single` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_single` (
  `product_id` INT UNSIGNED NOT NULL,
  `material_id` INT UNSIGNED NOT NULL COMMENT 'Материал из чего сделан данный штучный товар',
  PRIMARY KEY (`product_id`),
  INDEX `fk_product_single_to_materia_idx` (`material_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_single_to_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_single_to_material`
    FOREIGN KEY (`material_id`)
    REFERENCES `sobzav`.`material` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Категория продукта:\n	- штучный товар';


-- -----------------------------------------------------
-- Table `sobzav`.`product_simple`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_simple` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_simple` (
  `product_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `fk_product_simple_to_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Категория продукта:\n	- простое изделие';


-- -----------------------------------------------------
-- Table `sobzav`.`product_composite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_composite` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_composite` (
  `product_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `fk_product_composite_to_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Категория продукта:\n	- сложное изделие';


-- -----------------------------------------------------
-- Table `sobzav`.`product_profile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_profile` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_profile` (
  `product_id` INT UNSIGNED NOT NULL,
  `material_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`product_id`),
  INDEX `fk_product_profile_to_material_idx` (`material_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_profile_to_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_profile_to_material`
    FOREIGN KEY (`material_id`)
    REFERENCES `sobzav`.`material` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Категория продукта:\n	- профиль';


-- -----------------------------------------------------
-- Table `sobzav`.`product_simple_part`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`product_simple_part` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`product_simple_part` (
  `id` INT UNSIGNED NOT NULL,
  `product_material_id` INT UNSIGNED NOT NULL,
  `product_id` INT UNSIGNED NOT NULL,
  `product_simple_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_product_simple_part_product_material_idx` (`product_material_id` ASC) VISIBLE,
  INDEX `fk_product_simple_part_product_idx` (`product_id` ASC) VISIBLE,
  INDEX `fk_product_simple_part_to_product_simple_product_idx` (`product_simple_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_simple_part_product_material`
    FOREIGN KEY (`product_material_id`)
    REFERENCES `sobzav`.`material` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_simple_part_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `sobzav`.`product` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_simple_part_to_product_simple_product`
    FOREIGN KEY (`product_simple_id`)
    REFERENCES `sobzav`.`product_simple` (`product_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`legal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`legal` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`legal` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор плательщика (клиента) из таблицы payer',
  `tin` CHAR(10) NOT NULL COMMENT 'Tax Identification Number\nИдентификационный Номер Налогоплательщика',
  `name` VARCHAR(45) NOT NULL COMMENT 'Наименование юр. лица',
  `address_id` INT UNSIGNED NOT NULL,
  `account` VARCHAR(45) NOT NULL COMMENT 'Номер расчетного счета',
  `kpp` CHAR(9) NOT NULL COMMENT 'КПП',
  `bic` CHAR(9) NOT NULL COMMENT 'Bank Identification Code\nбанковский идентификационный код',
  `details_file` BLOB NULL COMMENT 'Файл реквизитов',
  `created` TIMESTAMP NOT NULL,
  `updated` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `tin_UNIQUE` (`tin` ASC) VISIBLE,
  UNIQUE INDEX `account_UNIQUE` (`account` ASC) VISIBLE,
  CONSTRAINT `fk_legal_to_payer`
    FOREIGN KEY (`id`)
    REFERENCES `sobzav`.`payer` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
COMMENT = 'Плательщик (Клиент) - Юридическое лицо';


-- -----------------------------------------------------
-- Table `sobzav`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`user` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NOT NULL,
  `passwd` VARCHAR(32) NOT NULL,
  `email` VARCHAR(32) NOT NULL,
  `created` TIMESTAMP NOT NULL,
  `updated` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` TIMESTAMP NULL,
  PRIMARY KEY (`id`))
COMMENT = 'Пользователи зарегистрированные в системе (на сайте)';


-- -----------------------------------------------------
-- Table `sobzav`.`user_payer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`user_payer` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`user_payer` (
  `user_id` INT UNSIGNED NOT NULL,
  `payer_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `payer_id`),
  INDEX `fk_to_user_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_payer_to_payer`
    FOREIGN KEY (`payer_id`)
    REFERENCES `sobzav`.`payer` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_user_payer_to_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `sobzav`.`user` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Связь пользователей зарегистрированных в системе с плательщиками (клиентами),\nзаведенными данными пользователями ';


-- -----------------------------------------------------
-- Table `sobzav`.`recipient`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`recipient` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`recipient` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `address_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'Получатель заказа';


-- -----------------------------------------------------
-- Table `sobzav`.`user_recipient`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`user_recipient` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`user_recipient` (
  `user_id` INT UNSIGNED NOT NULL,
  `recipient_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `recipient_id`),
  INDEX `fk_to_recipient_idx` (`recipient_id` ASC) VISIBLE,
  CONSTRAINT `fk_ user_recipient _to_recipient`
    FOREIGN KEY (`recipient_id`)
    REFERENCES `sobzav`.`recipient` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_ user_recipient _to_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `sobzav`.`user` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Связь пользователей зарегистрированных в системе (на сайте) с получателями заказа';


-- -----------------------------------------------------
-- Table `sobzav`.`place_prototype`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place_prototype` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place_prototype` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `package_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `sub_package_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `inrow` SMALLINT UNSIGNED NOT NULL DEFAULT 0,
  `x` DOUBLE UNSIGNED NOT NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y` DOUBLE UNSIGNED NOT NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  PRIMARY KEY (`id`),
  INDEX `fk_place_prototype_to_package_idx` (`package_id` ASC) VISIBLE,
  INDEX `fk_place_prototype_sub_to_package_idx` (`sub_package_id` ASC) VISIBLE,
  CONSTRAINT `fk_place_prototype_to_package`
    FOREIGN KEY (`package_id`)
    REFERENCES `sobzav`.`package` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_prototype_sub_to_package`
    FOREIGN KEY (`sub_package_id`)
    REFERENCES `sobzav`.`package` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`warehouse_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`warehouse_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`warehouse_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'номер склада',
  `name` VARCHAR(45) NOT NULL COMMENT 'Имя склада',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`zone_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`zone_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`zone_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `warehouse_id` INT UNSIGNED NOT NULL COMMENT 'Склад может иметь несколько Зон',
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_warehouse_to_zone_idx` (`warehouse_id` ASC) VISIBLE,
  CONSTRAINT `fk_zone_to_warehouse0`
    FOREIGN KEY (`warehouse_id`)
    REFERENCES `sobzav`.`warehouse_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`floor_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`floor_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`floor_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone_id` INT UNSIGNED NOT NULL COMMENT 'Зона имеет несколько этажей от 0 до ...',
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_floor_zone1_idx` (`zone_id` ASC) VISIBLE,
  CONSTRAINT `fk_floor_to_zone0`
    FOREIGN KEY (`zone_id`)
    REFERENCES `sobzav`.`zone_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`line_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`line_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`line_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `floor_id` INT UNSIGNED NOT NULL COMMENT 'Зона имеет несколько этажей',
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_line_floor1_idx` (`floor_id` ASC) VISIBLE,
  CONSTRAINT `fk_line_to_floor0`
    FOREIGN KEY (`floor_id`)
    REFERENCES `sobzav`.`floor_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`rack_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`rack_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`rack_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `line_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_rack_line1_idx` (`line_id` ASC) VISIBLE,
  CONSTRAINT ` fk_rack_to_line0`
    FOREIGN KEY (`line_id`)
    REFERENCES `sobzav`.`line_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`shelf_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`shelf_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`shelf_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `rack_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_shelf_to_rack` (`rack_id` ASC) VISIBLE,
  CONSTRAINT `fk_shelf_to_rack0`
    FOREIGN KEY (`rack_id`)
    REFERENCES `sobzav`.`rack_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`tray_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`tray_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`tray_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `shelf_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tray_shelf1_idx` (`shelf_id` ASC) VISIBLE,
  CONSTRAINT `fk_tray_to_shelf0`
    FOREIGN KEY (`shelf_id`)
    REFERENCES `sobzav`.`shelf_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`container_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`container_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`container_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tray_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_container_tray1_idx` (`tray_id` ASC) VISIBLE,
  CONSTRAINT `fk_container_to_tray0`
    FOREIGN KEY (`tray_id`)
    REFERENCES `sobzav`.`tray_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`cell_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`cell_type` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`cell_type` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `container_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cell_container1_idx` (`container_id` ASC) VISIBLE,
  CONSTRAINT `fk_cell_to_container0`
    FOREIGN KEY (`container_id`)
    REFERENCES `sobzav`.`container_type` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sobzav`.`place_relation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place_relation` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place_relation` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `place_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `sub_place_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  PRIMARY KEY (`id`),
  INDEX `fk_place_prototype_sub_to_package_idx` (`sub_place_id` ASC) VISIBLE,
  INDEX `fk_place_id_to_place_idx` (`place_id` ASC) VISIBLE,
  CONSTRAINT `fk_place_id_to_place`
    FOREIGN KEY (`place_id`)
    REFERENCES `sobzav`.`place` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_sub_place_id_to_place`
    FOREIGN KEY (`sub_place_id`)
    REFERENCES `sobzav`.`place` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Таблица хранит связи между местами хранения, поесть их вложенность друг в друга\nЕсли в таблице есть такие записи:\nplace_id 1,  sub_place 2\nplace_id 1,  sub_place 3\nТо место place_id=1 содержит в себе place_id=2 и place_id=3';


-- -----------------------------------------------------
-- Table `sobzav`.`addr_stage`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`addr_stage` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`addr_stage` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT 'Наименование упаковки\nКак пример:\n	- Пакет полиэтиленовый\n	- Ячейка пластикового контейнера\n	- Контейнер пластиковый\n	- Коробка картонная\n	- Ящик деревянный\n	- Контейнер металический\n	- Палета деревянная\n	- Площадка открытая для хранения Крупногабаритного товара\n	и т.д….',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'Содержит все возможные операции, выполняемые для складского адреса в порядке их выполнения \nId - идентификатор стадии\nname - наименование стадии';


-- -----------------------------------------------------
-- Table `sobzav`.`place_addr_stage`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place_addr_stage` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place_addr_stage` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `place_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id упаковки package',
  `addr_stage_id` INT UNSIGNED NOT NULL COMMENT 'Внешний ключ, указывающий на id операций над данным адресом',
  PRIMARY KEY (`id`),
  INDEX `fk_place_prototype_sub_to_package_idx` (`addr_stage_id` ASC) VISIBLE,
  INDEX `fk_place_id_to_place_idx` (`place_id` ASC) VISIBLE,
  CONSTRAINT `fk_place_addr_to_place`
    FOREIGN KEY (`place_id`)
    REFERENCES `sobzav`.`place` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_addr_stage_to_addr_stage`
    FOREIGN KEY (`addr_stage_id`)
    REFERENCES `sobzav`.`addr_stage` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB
COMMENT = 'Содержит историю операций со складским адресом для мест хранения\nId - связь 1:1 с таблицей place\nstage - номер стадии из таблицы addr_stage\ncreated - дата и время выполнения операции со складским адресом места хранения\nuser_id - связь с таблицей user для хранения id пользователя, который выполнил операцию';


-- -----------------------------------------------------
-- Table `sobzav`.`place_nature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place_nature` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place_nature` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'Фотографии упаковок';


-- -----------------------------------------------------
-- Table `sobzav`.`place_pattern`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sobzav`.`place_pattern` ;

CREATE TABLE IF NOT EXISTS `sobzav`.`place_pattern` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL COMMENT 'Наименование упаковки\nКак пример:\n	- Пакет полиэтиленовый\n	- Ячейка пластикового контейнера\n	- Контейнер пластиковый\n	- Коробка картонная\n	- Ящик деревянный\n	- Контейнер металический\n	- Палета деревянная\n	- Площадка открытая для хранения Крупногабаритного товара\n	и т.д….',
  `code` CHAR(7) NOT NULL COMMENT 'Обозначение\nУникальное сочетание букв и цифр для удобной и однозначной идентификации упаковки\nКак пример:\n	B001 - полиэтиленовый пакет №1 (размер h=2мм х w=50мм х l=100мм)\n	B002 - пластиковая ячейка контейнера (всего 25 ячеек 5 х 5, размер ячейки h=25мм х w=50мм х l=50мм)\n	и т.д….',
  `iwx` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внутренний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `iwy` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внутренний размер - Высота  элемента в положении режима эксплуатации в мм.',
  `iwz` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внутренний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `volume` DOUBLE GENERATED ALWAYS AS ((iwx * iwy * iwz)) STORED COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `payload` INT UNSIGNED NOT NULL COMMENT 'Грузоподъемность упаковки в граммах.',
  `nature_id` INT UNSIGNED NULL COMMENT 'Id природы места',
  `wx` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внешний размер - Ширина  элемента в положении режима эксплуатации в мм.',
  `wy` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внешний размер - Высота  элемента в положении реж - Высота  элемента в положении режима эксплуатации - Ширина  элемента в положении режима эксплуатацииима эксплуатации в мм.',
  `wz` MEDIUMINT UNSIGNED NOT NULL COMMENT 'Внешний размер - Глубина  элемента в положении режима эксплуатации в мм.',
  `iws1` MEDIUMINT GENERATED ALWAYS AS (least(`iwx`,`iwy`,`iwz`)) STORED COMMENT 'Внутренний размер, отсортированный по возрастанию в мм.',
  `iws2` MEDIUMINT GENERATED ALWAYS AS (((((`iwx` + `iwy`) + `iwz`) - least(`iwx`,`iwy`,`iwz`)) - greatest(`iwx`,`iwy`,`iwz`))) STORED COMMENT 'Внутренний размер, отсортированный по возрастанию в мм.',
  `iws3` MEDIUMINT GENERATED ALWAYS AS (greatest(`iwx`,`iwy`,`iwz`)) STORED COMMENT 'Внутренний размер, отсортированный по возрастанию в мм.',
  `archetype_id` INT UNSIGNED NULL COMMENT 'Id базового типа из этой же таблицы, на основе которого был создан не базовый тип',
  `bycoordinates` TINYINT UNSIGNED NULL DEFAULT 0,
  `color` CHAR(6) NOT NULL COMMENT 'Цвет упаковки на схеме в графическом интерфейсе',
  `depth` TINYINT UNSIGNED NULL DEFAULT 2 COMMENT '1 - элемент отобразит себя\\n2 - элемент отобразит себя и внутренние элементы\\n3 - элемент отобразит 2 уровня внутренних элементов',
  `turned` TINYINT UNSIGNED NULL DEFAULT 0 COMMENT '0 - элемент будет отображен как есть\\\\\\\\n1 - элемент будет отображен повернутым',
  `created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` TIMESTAMP NULL,
  `sub1_id` INT UNSIGNED NULL,
  `inrow1` TINYINT UNSIGNED NULL DEFAULT 0,
  `x1` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y1` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub2_id` INT UNSIGNED NULL,
  `inrow2` TINYINT UNSIGNED NULL DEFAULT 0,
  `x2` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y2` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub3_id` INT UNSIGNED NULL,
  `inrow3` TINYINT UNSIGNED NULL DEFAULT 0,
  `x3` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y3` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub4_id` INT UNSIGNED NULL,
  `inrow4` TINYINT UNSIGNED NULL DEFAULT 0,
  `x4` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y4` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub5_id` INT UNSIGNED NULL,
  `inrow5` TINYINT UNSIGNED NULL DEFAULT 0,
  `x5` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y5` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub6_id` INT UNSIGNED NULL,
  `inrow6` TINYINT UNSIGNED NULL DEFAULT 0,
  `x6` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y6` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub7_id` INT UNSIGNED NULL,
  `inrow7` TINYINT UNSIGNED NULL DEFAULT 0,
  `x7` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y7` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub8_id` INT UNSIGNED NULL,
  `inrow8` TINYINT UNSIGNED NULL DEFAULT 0,
  `x8` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y8` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  `sub9_id` INT UNSIGNED NULL,
  `inrow9` TINYINT UNSIGNED NULL DEFAULT 0,
  `x9` DOUBLE UNSIGNED NULL COMMENT 'Ряд в контейнере котором расположен данный тип места',
  `y9` DOUBLE UNSIGNED NULL COMMENT 'Столбец в контейнере котором расположен данный тип места',
  UNIQUE INDEX `code_UNIQUE` (`code` ASC) VISIBLE,
  INDEX `fk_place_pattern_to_place_pattern_idx` (`archetype_id` ASC) VISIBLE,
  INDEX `fk_place_pattern_to_place_nature_idx` (`nature_id` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  INDEX `fk_place_pattern_sub1_to_place_pattern_idx` (`sub1_id` ASC) VISIBLE,
  INDEX `fk_place_pattern_sub2_to_place_pattern_idx` (`sub2_id` ASC) VISIBLE,
  INDEX `fk_place_pattern_sub3_to_place_pattern_idx` (`sub3_id` ASC) VISIBLE,
  INDEX `fk_place_pattern_sub4_to_place_pattern_idx` (`sub4_id` ASC) VISIBLE,
  INDEX `fk_place_pattern_sub5_to_place_pattern_idx` (`sub5_id` ASC) VISIBLE,
  INDEX `fk_place_pattern_sub6_to_place_pattern_idx` (`sub6_id` ASC) VISIBLE,
  INDEX `fk_place_pattern_sub7_to_place_pattern_idx` (`sub7_id` ASC) VISIBLE,
  INDEX `fk_place_pattern_sub8_to_place_pattern_idx` (`sub8_id` ASC) VISIBLE,
  INDEX `fk_place_pattern_sub9_to_place_pattern_idx` (`sub9_id` ASC) VISIBLE,
  CONSTRAINT `fk_place_to_place_nature`
    FOREIGN KEY (`nature_id`)
    REFERENCES `sobzav`.`place_nature` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_pattern_to_place_pattern`
    FOREIGN KEY (`archetype_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_place_pattern_sub1_to_place_pattern`
    FOREIGN KEY (`sub1_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_place_pattern_sub2_to_place_pattern`
    FOREIGN KEY (`sub2_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_place_pattern_sub3_to_place_pattern`
    FOREIGN KEY (`sub3_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_place_pattern_sub4_to_place_pattern`
    FOREIGN KEY (`sub4_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_place_pattern_sub5_to_place_pattern`
    FOREIGN KEY (`sub5_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_place_pattern_sub6_to_place_pattern`
    FOREIGN KEY (`sub6_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_place_pattern_sub7_to_place_pattern`
    FOREIGN KEY (`sub7_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_place_pattern_sub8_to_place_pattern`
    FOREIGN KEY (`sub8_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_place_pattern_sub9_to_place_pattern`
    FOREIGN KEY (`sub9_id`)
    REFERENCES `sobzav`.`place_pattern` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'Упаковка места хранения или товара.\nИнформация о всех видах упаковок, их размерах, форме и материале из которого они сделана\nФото тары\nДанный справочник универсален и в нем хранится весь перечень упаковок для хранения на складе, упаковок единиц товара, упаковок комплектов и сборок, а так же и тары для комплектации заказов.\nКак пример:\n	- ';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
