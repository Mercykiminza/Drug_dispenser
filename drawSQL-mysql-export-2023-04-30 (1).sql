CREATE TABLE `contract_table`(
    `pc_name` VARCHAR(255) NOT NULL,
    `pharmacy_name` VARCHAR(255) NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `contract_text` VARCHAR(255) NOT NULL,
    `supervisor_ssn` INT NOT NULL,
    `supervisor_name` BIGINT NOT NULL
);
ALTER TABLE
    `contract_table` ADD PRIMARY KEY(`pc_name`);
ALTER TABLE
    `contract_table` ADD PRIMARY KEY(`pharmacy_name`);
CREATE TABLE `drug_pharmacy_table`(
    `trade_name` VARCHAR(255) NOT NULL,
    `pharmacy_name` VARCHAR(255) NOT NULL,
    `drug_price` DOUBLE NOT NULL
);
ALTER TABLE
    `drug_pharmacy_table` ADD PRIMARY KEY(`trade_name`);
ALTER TABLE
    `drug_pharmacy_table` ADD PRIMARY KEY(`pharmacy_name`);
CREATE TABLE `prescription_table`(
    `patient_ssn` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `doctor_ssn` INT NOT NULL,
    `prescription_code` INT NOT NULL,
    `prescription_date` BIGINT NOT NULL,
    `quantity` BIGINT NOT NULL,
    `trade_name` BIGINT NOT NULL
);
ALTER TABLE
    `prescription_table` ADD PRIMARY KEY(`patient_ssn`);
ALTER TABLE
    `prescription_table` ADD PRIMARY KEY(`doctor_ssn`);
ALTER TABLE
    `prescription_table` ADD PRIMARY KEY(`trade_name`);
CREATE TABLE `doctor_table`(
    `doctor_ssn` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `doctor_name` VARCHAR(255) NOT NULL,
    `speciality` VARCHAR(255) NOT NULL,
    `years_of_experience` INT NOT NULL
);
ALTER TABLE
    `doctor_table` ADD PRIMARY KEY(`doctor_ssn`);
CREATE TABLE `payment_table`(
    `patient_ssn` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `trade_name` VARCHAR(255) NOT NULL,
    `payment_id` INT NOT NULL,
    `delivery_cost` DOUBLE NOT NULL,
    `receipt_code` INT NOT NULL,
    `drug_cost` DOUBLE NOT NULL,
    `total_cost` DOUBLE NOT NULL
);
ALTER TABLE
    `payment_table` ADD PRIMARY KEY(`patient_ssn`);
ALTER TABLE
    `payment_table` ADD PRIMARY KEY(`payment_id`);
CREATE TABLE `delivery_table`(
    `delivery_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `patient_ssn` INT NOT NULL,
    `location` VARCHAR(255) NOT NULL,
    `delivery_cost` DOUBLE NOT NULL,
    `payment_id` INT NOT NULL
);
ALTER TABLE
    `delivery_table` ADD PRIMARY KEY(`delivery_id`);
CREATE TABLE `patient_table`(
    `patient_ssn` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `patient_name` VARCHAR(255) NOT NULL,
    `patient_age` INT NOT NULL,
    `patient_address` INT NOT NULL
);
ALTER TABLE
    `patient_table` ADD PRIMARY KEY(`patient_ssn`);
CREATE TABLE `drug_table`(
    `trade_name` VARCHAR(255) NOT NULL,
    `drug_formula` VARCHAR(255) NOT NULL,
    `pc_name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `drug_table` ADD PRIMARY KEY(`trade_name`);
CREATE TABLE `phamaceutical_company_table`(
    `pc_name` VARCHAR(255) NOT NULL,
    `phone_no` INT NOT NULL
);
ALTER TABLE
    `phamaceutical_company_table` ADD PRIMARY KEY(`pc_name`);
CREATE TABLE `pharmacy_table`(
    `pharmacy_name` VARCHAR(255) NOT NULL,
    `pharmacy_address` INT NOT NULL,
    `pharmacy_phone_no` BIGINT NOT NULL
);
ALTER TABLE
    `pharmacy_table` ADD PRIMARY KEY(`pharmacy_name`);
ALTER TABLE
    `phamaceutical_company_table` ADD CONSTRAINT `phamaceutical_company_table_pc_name_foreign` FOREIGN KEY(`pc_name`) REFERENCES `contract_table`(`pc_name`);
ALTER TABLE
    `patient_table` ADD CONSTRAINT `patient_table_patient_address_foreign` FOREIGN KEY(`patient_address`) REFERENCES `doctor_table`(`doctor_ssn`);
ALTER TABLE
    `pharmacy_table` ADD CONSTRAINT `pharmacy_table_pharmacy_address_foreign` FOREIGN KEY(`pharmacy_address`) REFERENCES `drug_pharmacy_table`(`pharmacy_name`);
ALTER TABLE
    `patient_table` ADD CONSTRAINT `patient_table_patient_age_foreign` FOREIGN KEY(`patient_age`) REFERENCES `doctor_table`(`doctor_name`);
ALTER TABLE
    `prescription_table` ADD CONSTRAINT `prescription_table_patient_ssn_foreign` FOREIGN KEY(`patient_ssn`) REFERENCES `patient_table`(`patient_ssn`);
ALTER TABLE
    `prescription_table` ADD CONSTRAINT `prescription_table_quantity_foreign` FOREIGN KEY(`quantity`) REFERENCES `doctor_table`(`doctor_ssn`);
ALTER TABLE
    `patient_table` ADD CONSTRAINT `patient_table_patient_name_foreign` FOREIGN KEY(`patient_name`) REFERENCES `payment_table`(`payment_id`);
ALTER TABLE
    `pharmacy_table` ADD CONSTRAINT `pharmacy_table_pharmacy_name_foreign` FOREIGN KEY(`pharmacy_name`) REFERENCES `prescription_table`(`trade_name`);
ALTER TABLE
    `drug_pharmacy_table` ADD CONSTRAINT `drug_pharmacy_table_trade_name_foreign` FOREIGN KEY(`trade_name`) REFERENCES `drug_table`(`trade_name`);
ALTER TABLE
    `delivery_table` ADD CONSTRAINT `delivery_table_location_foreign` FOREIGN KEY(`location`) REFERENCES `payment_table`(`patient_ssn`);
ALTER TABLE
    `pharmacy_table` ADD CONSTRAINT `pharmacy_table_pharmacy_address_foreign` FOREIGN KEY(`pharmacy_address`) REFERENCES `contract_table`(`pc_name`);