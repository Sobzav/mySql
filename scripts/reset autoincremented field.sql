SET SQL_SAFE_UPDATES = 1;

SET @num := 0;

UPDATE place_prototype SET id = @num := (@num+1);

ALTER TABLE place_prototype AUTO_INCREMENT = 1;