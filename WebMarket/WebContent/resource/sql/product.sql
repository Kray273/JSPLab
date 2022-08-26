CREATE TABLE `product` (
	`pno` INT(11) NOT NULL AUTO_INCREMENT,
	`pid` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pname` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pprice` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pdesc` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`iname1` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`iname2` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`iname3` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`pdate` TIMESTAMP NULL DEFAULT current_timestamp(),
	PRIMARY KEY (`pno`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=15
;
