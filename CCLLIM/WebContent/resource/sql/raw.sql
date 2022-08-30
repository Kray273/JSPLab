CREATE TABLE `raw` (
	`raw_code` BIGINT(20) NOT NULL DEFAULT '0',
	`raw_name` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`raw_amout` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`raw_image` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`raw_location` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`raw_date` DATETIME NULL DEFAULT NULL,
	PRIMARY KEY (`raw_code`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

