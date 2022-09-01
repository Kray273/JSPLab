CREATE TABLE `delivery` (
	`delivery_no` BIGINT(20) NOT NULL DEFAULT '0',
	`product_code` VARCHAR(2000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`product_name` VARCHAR(2000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`product_amout` VARCHAR(2000) NULL DEFAULT '20' COLLATE 'utf8mb3_general_ci',
	`user_id` VARCHAR(2000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`user_addr` VARCHAR(2000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`user_tel` VARCHAR(2000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`user_email` VARCHAR(2000) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`delivery_status` VARCHAR(2000) NULL DEFAULT '1' COLLATE 'utf8mb3_general_ci',
	`delivery_done` VARCHAR(2000) NULL DEFAULT '1' COLLATE 'utf8mb3_general_ci',
	`delivery_date` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`delivery_no`) USING BTREE
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;


