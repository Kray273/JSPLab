CREATE TABLE `user` (
	`user_id` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`user_no` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`user_pw` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`user_tel` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`user_email` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`user_addr` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`user_level` VARCHAR(50) NOT NULL DEFAULT '5' COLLATE 'utf8_general_ci',
	`user_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`user_id`) USING BTREE,
	UNIQUE INDEX `user_no` (`user_no`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

