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
    extension_name CHAR(10) NULL, 
    full_name VARCHAR(255) NULL, 
    sex VARCHAR(50) NULL, 
    birthdate VARCHAR(50) NULL, 
    contact_number VARCHAR(12) NULL, 
    email VARCHAR(255) NULL, 
    scholarship_type VARCHAR(50) NULL, 
    training_status VARCHAR(50) NULL, 
    assessment_result VARCHAR(50) NULL, 
    employment_before_training VARCHAR(50) NULL, 
    occupation VARCHAR(255) NULL, 
    employer_name VARCHAR(255) NULL, 
    employment_type VARCHAR(255) NULL, 
    address VARCHAR(255) NULL, 
    date_hired VARCHAR(50) NULL, 
    allocation VARCHAR(50) NULL, 
    PRIMARY KEY(Id)
);
*/

-- CALL read_all_records();

-- CALL clear_all_records();
-- TRUNCATE TABLE initial_records;
-- DROP TABLE initial_records;

-- SET AUTOCOMMIT = ON;

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
CREATE PROCEDURE check_fullname(IN _last VARCHAR(255), IN _first VARCHAR(255), IN _middle VARCHAR(255), IN _extn CHAR(10))
BEGIN
	SELECT UPPER(last_name), UPPER(first_name), UPPER(middle_name), UPPER(extension_name) FROM initial_records 
    WHERE last_name = _last AND first_name = _first AND middle_name = _middle AND extension_name = _extn;
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
    SET FOREIGN_KEY_CHECKS = 1;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE delete_record(IN _id INT)
BEGIN
	DELETE FROM initial_records WHERE id = _id;
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
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, sex, birthdate, contact_number, initial_records.address, email, sector, qualification, tvi, district, 
		city, scholarship_type, graduation_year, verif_means, verif_date, verif_status, response_type, refer_to_company, referral_date, reason_no_referral, reason_not_interested, 
        follow_up_1, follow_up_2, invalid_contact, company_name, employment_records.address, job_title, employment_status, hired_date, submit_docs_date, interview_date, 
        reason_not_hired
	FROM ((initial_records 
	LEFT JOIN verification_records ON initial_records.id = verification_records.id) 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id);
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE refresh_records()
BEGIN
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.Id = employment_records.Id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE retrieve_initial_record(IN _Id INT)
BEGIN
	SELECT last_name, first_name, middle_name, extension_name, sex, birthdate, contact_number, address, email, sector, qualification_title, tvi, district, city, 
			scholarship_type, allocation 
    FROM initial_records 
    WHERE Id = _Id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_employment_status(IN _status VARCHAR(50))
BEGIN
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, graduation_year, qualification 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id 
    WHERE employment_status = _status;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_extension_name(IN _name VARCHAR(50))
BEGIN
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, graduation_year, qualification 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id 
    WHERE extension_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_firstname(IN _name VARCHAR(50))
BEGIN
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, graduation_year, qualification 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id 
    WHERE first_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_graduation_year(IN _year INT)
BEGIN
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, graduation_year, qualification 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id 
    WHERE graduation_year = _year;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_id(IN _id INT)
BEGIN
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, graduation_year, qualification 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id 
    WHERE initial_records.id = _id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_lastname(IN _name VARCHAR(50))
BEGIN
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, graduation_year, qualification 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id 
    WHERE last_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_middlename(IN _name VARCHAR(50))
BEGIN
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, graduation_year, qualification 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id 
    WHERE middle_name = _name;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_qualification_title(IN _title VARCHAR(50))
BEGIN
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, graduation_year, qualification 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id 
    WHERE qualification = _title;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE submit_record_data(IN _district VARCHAR(50), IN _city VARCHAR(50), IN _tvi VARCHAR(255), IN _qualification VARCHAR(255), 
								IN _sector VARCHAR(255), IN _lastname VARCHAR(255), IN _firstname VARCHAR(255), IN _middlename VARCHAR(255), IN _extname CHAR(10), 
                                IN _fullname VARCHAR(255), IN _sex VARCHAR(50), IN _birthdate VARCHAR(50), IN _contactnum VARCHAR(12), IN _email VARCHAR(255), 
                                IN _scholarship VARCHAR(50), IN _address VARCHAR(255), IN _allocation VARCHAR(50))
BEGIN
	INSERT INTO initial_records (district, city, tvi, qualification_title, sector, last_name, first_name, middle_name, extension_name, full_name, sex, 
									birthdate, contact_number, email, scholarship_type, training_status, assessment_result, employment_before_training, 
                                    occupation, employer_name, employment_type, address, date_hired, allocation) 
    VALUES (_district, _city, _tvi, _qualification, _sector, _lastname, _firstname, _middlename, _extname, _fullname, _sex, _birthdate, _contactnum, _email, 
			_scholarship, "", "", "", "", "", "", _address, "", _allocation);
END//
DELIMITER ;
*/

