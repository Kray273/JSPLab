CREATE TABLE `ask` (
	`ask_no` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`ask_title` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`user_id` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`made_content` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`ask_sol` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`ask_sign` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`ask_status` VARCHAR(500) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`ask_day` TIMESTAMP NULL DEFAULT current_timestamp(),
	`made_date` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	PRIMARY KEY (`ask_no`) USING BTREE
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3
;


