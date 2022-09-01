CREATE TABLE `raw` (
	`raw_code` VARCHAR(50) NOT NULL DEFAULT '0' COLLATE 'utf8mb3_general_ci',
	`raw_name` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`raw_amount` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`raw_image` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`raw_location` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`raw_date` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`raw_code`) USING BTREE
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;

