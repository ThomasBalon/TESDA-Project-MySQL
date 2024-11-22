/* CREATE TABLE IF NOT EXISTS initial_records (
	id INT AUTO_INCREMENT, 
	last_name VARCHAR(50), 
    first_name VARCHAR(50), 
    middle_name VARCHAR(50), 
    extension_name CHAR(10), 
    sex VARCHAR(50), 
    birthdate DATE, 
    contact_number VARCHAR(12), 
    address VARCHAR(255), 
    email VARCHAR(50), 
    sector VARCHAR(50), 
    qualification VARCHAR(50), 
    tvi VARCHAR(50), 
    district VARCHAR(50), 
    city VARCHAR(50), 
    scholarship_type VARCHAR(50), 
    graduation_year INT, 
    PRIMARY KEY(id)
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
CREATE PROCEDURE check_fullname(IN _last VARCHAR(50), IN _first VARCHAR(50), IN _middle CHAR(10), IN _extn CHAR(10))
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
CREATE PROCEDURE get_new_record_id(IN _lastname VARCHAR(50), IN _firstname VARCHAR(50))
BEGIN
	SELECT id FROM initial_records 
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
	SELECT initial_records.id, last_name, first_name, middle_name, extension_name, employment_status, graduation_year, qualification 
    FROM initial_records 
	LEFT JOIN employment_records ON initial_records.id = employment_records.id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE retrieve_initial_record(IN _id INT)
BEGIN
	SELECT * FROM initial_records 
    WHERE id = _id;
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
CREATE PROCEDURE submit_data(IN _lastname VARCHAR(50), IN _firstname VARCHAR(50), IN _middleinitial CHAR(10), IN _suffix CHAR(10), IN _sex VARCHAR(50), IN _birthdate DATE, 
								IN _address VARCHAR(255), IN _qualification VARCHAR(255), IN _tviname VARCHAR(255), IN _district VARCHAR(255), IN _city VARCHAR(255), 
                                IN _scholarshiptype VARCHAR(255), IN _graduationyear INT)
BEGIN
	INSERT INTO initial_records (last_name, first_name, middle_initial, suffix, sex, birthdate, address, qualification, tvi_name, district, city, scholarship_type, graduation_year) 
    VALUES (_lastname, _firstname, _middleinitial, _suffix, _sex, _birthdate, _address, _qualification, _tviname, _district, _city, _scholarshiptype, _graduationyear);
END//
DELIMITER ;
*/

