CREATE TABLE `made` (
	`made_no` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`user_id` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`made_title` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`made_content` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`made_raw` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`made_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`made_no`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

