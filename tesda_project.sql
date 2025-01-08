/* CREATE TABLE IF NOT EXISTS initial_records (
	Id INT AUTO_INCREMENT, 
    district VARCHAR(50) NULL, 
    city VARCHAR(50) NULL, 
    tvi VARCHAR(255) NULL, 
    qualification_title VARCHAR(255) NULL, 
    sector VARCHAR(255) NULL, 
    last_name VARCHAR(255) NOT NULL, 
    first_name VARCHAR(255) NOT NULL, 
    middle_name VARCHAR(255) NULL, 
    extension_name VARCHAR(50) NULL, 
    full_name VARCHAR(255) NULL, 
    sex VARCHAR(50) NULL, 
    birthdate VARCHAR(50) NULL, 
    contact_number VARCHAR(16) NULL, 
    email VARCHAR(255) NULL, 
    scholarship_type VARCHAR(50) NULL, 
    address VARCHAR(255) NULL, 
    allocation VARCHAR(50) NULL, 
    PRIMARY KEY(Id)
);
*/

-- CALL read_all_records();
-- CALL clear_all_records();
-- SET AUTOCOMMIT = ON;
-- INSERT INTO initial_records (last_name, first_name, full_name) VALUE ("Dela Cruz", "Juan", "Dela Cruz, Juan");

/*
RENAME TABLE scholarship_employment TO initial_records;
ALTER TABLE initial_records ADD verification_status VARCHAR(50);
ALTER TABLE initial_records ADD contact_number INT AFTER birthdate;
ALTER TABLE initial_records DROP COLUMN verification_status;
ALTER TABLE initial_records CHANGE middle_initial middle_name VARCHAR(50);
ALTER TABLE initial_records MODIFY COLUMN qualification VARCHAR(50);
*/

/*
DELETE FROM initial_records WHERE id = 1;
DELETE FROM verification_records WHERE id = 1;
DELETE FROM employment_records WHERE id = 1;
*/

/*
DELIMITER //
CREATE PROCEDURE check_fullname(IN _name VARCHAR(255))
BEGIN
	SELECT full_name FROM initial_records 
    WHERE full_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE clear_all_records()
BEGIN
	SET FOREIGN_KEY_CHECKS = 0;
	TRUNCATE TABLE initial_records;
    TRUNCATE TABLE verification_records;
    TRUNCATE TABLE employment_records;
    TRUNCATE TABLE external_records;
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
CREATE PROCEDURE read_all_records()
BEGIN
	SELECT initial_records.Id, district, city, tvi, qualification_title, sector, last_name, first_name, middle_name, extension_name, full_name, 
			contact_number, email, scholarship_type, training_status, assessment_result, employment_before_training, occupation, employer_name, 
            employment_type, address, date_hired, allocation, verification_means, verification_date, verification_status, follow_up_date_1, 
            response_status, not_interested_reason, referral_status, company_name, company_address, job_title, employment_status, hired_date, remarks, 
            count, no_of_graduates, no_of_employed, verification, job_vacancies 
    FROM ((initial_records LEFT JOIN verification_records ON initial_records.Id = verification_records.Id) 
    LEFT JOIN employment_records ON initial_records.Id = employment_records.Id) 
    LEFT JOIN external_records ON initial_records.Id = external_records.Id;
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

/*
DELIMITER //
CREATE PROCEDURE PROCEDURE `submit_record_data`(IN _district VARCHAR(50), IN _city VARCHAR(50), IN _tvi VARCHAR(255), 
								IN _qualification VARCHAR(255), IN _sector VARCHAR(255), IN _lastname VARCHAR(255), IN _firstname VARCHAR(255), 
                                IN _middlename VARCHAR(255), IN _extname VARCHAR(50), IN _fullname VARCHAR(255), IN _sex VARCHAR(50), 
                                IN _birthdate VARCHAR(50), IN _contactnum VARCHAR(16), IN _email VARCHAR(255), IN _scholarship VARCHAR(50), 
                                IN _address VARCHAR(255), IN _allocation VARCHAR(50))
BEGIN
	INSERT INTO initial_records (district, city, tvi, qualification_title, sector, last_name, first_name, middle_name, extension_name, full_name, sex, 
								birthdate, contact_number, email, scholarship_type, address, allocation) 
    VALUES (_district, _city, _tvi, _qualification, _sector, _lastname, _firstname, _middlename, _extname, _fullname, _sex, _birthdate, _contactnum, 
			_email, _scholarship, _address, _allocation);
END//
DELIMITER ;
*/

