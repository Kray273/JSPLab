CREATE TABLE `product` (
	`product_code` BIGINT(20) NOT NULL,
	`product_name` VARCHAR(5000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`product_price` VARCHAR(1000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`product_amount` VARCHAR(1000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`product_desc` VARCHAR(1000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`product_img1` VARCHAR(1000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`product_img2` VARCHAR(1000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`product_img3` VARCHAR(1000) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`product_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	`product_launch` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	PRIMARY KEY (`product_code`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

