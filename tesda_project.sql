/* CREATE TABLE `graduates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `district` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `tvi` varchar(255) DEFAULT NULL,
  `qualification_title` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `extension_name` varchar(50) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `birthdate` varchar(50) DEFAULT NULL,
  `contact_number` varchar(16) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `scholarship_type` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `allocation` varchar(50) DEFAULT NULL,
  `verification_means` varchar(50) DEFAULT NULL,
  `verification_date` varchar(50) DEFAULT NULL,
  `verification_status` varchar(50) DEFAULT NULL,
  `follow_up_date_1` varchar(50) DEFAULT NULL,
  `follow_up_date_2` varchar(50) DEFAULT NULL,
  `response_status` varchar(50) DEFAULT NULL,
  `not_interested_reason` varchar(255) DEFAULT NULL,
  `referral_status` char(10) DEFAULT NULL,
  `referral_date` varchar(50) DEFAULT NULL,
  `no_referral_reason` varchar(255) DEFAULT NULL,
  `invalid_contact` char(10) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `employment_status` varchar(255) DEFAULT NULL,
  `hired_date` varchar(50) DEFAULT NULL,
  `submitted_documents_date` varchar(50) DEFAULT NULL,
  `interview_date` varchar(50) DEFAULT NULL,
  `not_hired_reason` varchar(50) DEFAULT NULL,
  `training_status` varchar(50) DEFAULT NULL,
  `assessment_result` varchar(255) DEFAULT NULL,
  `employment_before_training` varchar(50) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `employer_name` varchar(255) DEFAULT NULL,
  `employment_type` varchar(255) DEFAULT NULL,
  `date_hired` varchar(50) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `count` char(10) DEFAULT NULL,
  `no_of_graduates` char(10) DEFAULT NULL,
  `no_of_employed` char(10) DEFAULT NULL,
  `verification` varchar(50) DEFAULT NULL,
  `job_vacancies` char(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
*/

-- CALL read_all_records();
-- CALL clear_all_records();
-- SET AUTOCOMMIT = ON;
-- INSERT INTO graduates (last_name, first_name, middle_name, extension_name, full_name) VALUE ("Dela Cruz", "Juan", "Antonio", "Sr.", "Dela Cruz Sr., Juan Antonio");

/*
RENAME TABLE scholarship_employment TO graduates;
ALTER TABLE graduates ADD verification_status VARCHAR(50);
ALTER TABLE graduates ADD contact_number INT AFTER birthdate;
ALTER TABLE graduates DROP COLUMN verification_status;
ALTER TABLE graduates CHANGE middle_initial middle_name VARCHAR(50);
ALTER TABLE graduates MODIFY COLUMN qualification VARCHAR(50);
DELETE FROM graduates WHERE id = 1;
*/

/*
DELIMITER //
CREATE PROCEDURE `check_fullname`(IN _name VARCHAR(255))
BEGIN
	SELECT full_name FROM graduates 
    WHERE full_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE `create_entry`(IN _district VARCHAR(50), IN _city VARCHAR(50), IN _tvi VARCHAR(255), IN _qualification VARCHAR(255), IN _sector VARCHAR(255), 
									IN _lastname VARCHAR(255), IN _firstname VARCHAR(255), IN _middlename VARCHAR(255), IN _extname VARCHAR(50), IN _fullname VARCHAR(255), 
                                    IN _sex VARCHAR(50), IN _birthdate VARCHAR(50), IN _contactnum VARCHAR(16), IN _email VARCHAR(255), IN _scholarship VARCHAR(50), 
									IN _address VARCHAR(255), IN _allocation VARCHAR(50))
BEGIN
	INSERT INTO graduates (district, city, tvi, qualification_title, sector, last_name, first_name, middle_name, extension_name, full_name, 
							sex, birthdate, contact_number, email, scholarship_type, address, allocation) 
    VALUES (_district, _city, _tvi, _qualification, _sector, _lastname, _firstname, _middlename, _extname, _fullname, 
			_sex, _birthdate, _contactnum, _email, _scholarship, _address, _allocation);
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE `clear_all_records`()
BEGIN
	SET FOREIGN_KEY_CHECKS = 0;
	TRUNCATE TABLE graduates;
    SET FOREIGN_KEY_CHECKS = 1;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE delete_record(IN _Id INT)
BEGIN
	DELETE FROM initial_records WHERE Id = _Id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE get_new_record_id(IN _lastname VARCHAR(255), IN _firstname VARCHAR(255))
BEGIN
	SELECT Id FROM initial_records 
    WHERE last_name = _lastname AND first_name = _firstname;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE read_details(IN _id INT)
BEGIN
	SELECT district, city, tvi, qualification_title, sector, last_name, first_name, middle_name, extension_name, full_name, 
			sex, birthdate, contact_number, email, scholarship_type, address, allocation, verification_means, verification_date, verification_status, 
			follow_up_date_1, follow_up_date_2, response_status, not_interested_reason, referral_status, referral_date, no_referral_reason, invalid_contact, company_name, company_address, 
            job_title, employment_status, hired_date, submitted_documents_date, interview_date, not_hired_reason, training_status, assessment_result, employment_before_training, occupation, 
            employer_name, employment_type, date_hired, remarks, count, no_of_graduates, no_of_employed, verification, job_vacancies 
    FROM graduates 
    WHERE Id = _id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE refresh_records()
BEGIN
	SELECT initial_records.Id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE retrieve_initial_record(IN _Id INT)
BEGIN
	SELECT last_name, first_name, middle_name, extension_name, sex, birthdate, contact_number, address, email, sector, qualification_title, tvi, 
			district, city, scholarship_type, allocation 
    FROM initial_records 
    WHERE Id = _Id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_employment_status(IN _status VARCHAR(255))
BEGIN
	SELECT initial_records.Id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id 
    WHERE employment_status = _status;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_extension_name(IN _name VARCHAR(50))
BEGIN
	SELECT initial_records.Id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id 
    WHERE extension_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_firstname(IN _name VARCHAR(255))
BEGIN
	SELECT initial_records.Id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id 
    WHERE first_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_graduation_year(IN _year VARCHAR(50))
BEGIN
	SELECT initial_records.Id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id 
    WHERE allocation = _year;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_Id(IN _Id INT)
BEGIN
	SELECT initial_records.Id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id 
    WHERE initial_records.Id = _Id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_lastname(IN _name VARCHAR(255))
BEGIN
	SELECT initial_records.Id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id
    WHERE last_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_middlename(IN _name VARCHAR(255))
BEGIN
	SELECT initial_records.Id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id 
    WHERE middle_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_qualification_title(IN _title VARCHAR(255))
BEGIN
	SELECT initial_records.Id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id 
    WHERE qualification_title = _title;
END//
DELIMITER ;
*/

