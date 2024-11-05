/* CREATE TABLE IF NOT EXISTS scholarship_employment (
	id INT AUTO_INCREMENT, 
	last_name VARCHAR(50) NOT NULL, 
    first_name VARCHAR(50) NOT NULL, 
    middle_initial CHAR(10), 
    suffix CHAR(10), 
    sex VARCHAR(50) NOT NULL, 
    birthdate DATE, 
    address VARCHAR(255), 
    qualification VARCHAR(255) NOT NULL, 
    tvi_name VARCHAR(255) NOT NULL, 
    district VARCHAR(255) NOT NULL, 
    city VARCHAR(255) NOT NULL, 
    scholarship_type VARCHAR(255) NOT NULL, 
    graduation_year INT NOT NULL, 
    PRIMARY KEY(id)
);
*/

/*
DELIMITER //
CREATE PROCEDURE check_fullname(IN _last VARCHAR(50), IN _first VARCHAR(50), IN _middle CHAR(10), IN _suffix CHAR(10))
BEGIN
	SELECT UPPER(last_name), UPPER(first_name), UPPER(middle_initial), UPPER(suffix) FROM scholarship_employment 
    WHERE last_name = _last AND first_name = _first AND middle_initial = _middle AND suffix = _suffix;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE submit_data(IN _lastname VARCHAR(50), IN _firstname VARCHAR(50), IN _middleinitial CHAR(10), IN _suffix CHAR(10), IN _sex VARCHAR(50), IN _birthdate DATE, 
								IN _address VARCHAR(255), IN _qualification VARCHAR(255), IN _tviname VARCHAR(255), IN _district VARCHAR(255), IN _city VARCHAR(255), 
                                IN _scholarshiptype VARCHAR(255), IN _graduationyear INT)
BEGIN
	INSERT INTO scholarship_employment (last_name, first_name, middle_initial, suffix, sex, birthdate, address, qualification, tvi_name, district, city, scholarship_type, graduation_year) 
    VALUES (_lastname, _firstname, _middleinitial, _suffix, _sex, _birthdate, _address, _qualification, _tviname, _district, _city, _scholarshiptype, _graduationyear);
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE update_data(IN _id INT, IN _lastname VARCHAR(50), IN _firstname VARCHAR(50), IN _middleinitial CHAR(10), IN _suffix CHAR(10), IN _sex VARCHAR(50), IN _birthdate DATE, 
								IN _address VARCHAR(255), IN _qualification VARCHAR(255), IN _tviname VARCHAR(255), IN _district VARCHAR(255), IN _city VARCHAR(255), 
                                IN _scholarshiptype VARCHAR(255), IN _graduationyear INT, IN _verificationstatus VARCHAR(50), IN _employmentstatus VARCHAR(50))
BEGIN
	UPDATE scholarship_employment 
    SET last_name = _lastname, first_name = _firstname, middle_initial = _middleinitial, suffix = _suffix, sex = _sex, birthdate = _birthdate, address = _address, 
		qualification = _qualification, tvi_name = _tviname, district = _district, city = _city, scholarship_type = _scholarshiptype, graduation_year = _graduationyear, 
        verification_status = _verificationstatus, employment_status = _employmentstatus
	WHERE id = _id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE search_id(IN _input INT)
BEGIN
	SELECT * FROM scholarship_employment WHERE id = _input;
END//

CREATE PROCEDURE search_lastname(IN _input VARCHAR(50))
BEGIN
	SELECT * FROM scholarship_employment WHERE last_name = _input;
END//

CREATE PROCEDURE search_firstname(IN _input VARCHAR(50))
BEGIN
	SELECT * FROM scholarship_employment WHERE first_name = _input;
END//

CREATE PROCEDURE search_middleinitial(IN _input CHAR(10))
BEGIN
	SELECT * FROM scholarship_employment WHERE middle_initial = _input;
END//

CREATE PROCEDURE search_suffix(IN _input CHAR(10))
BEGIN
	SELECT * FROM scholarship_employment WHERE suffix = _input;
END//
DELIMITER ;
*/

/*
ALTER TABLE scholarship_employment ADD verification_status VARCHAR(50);
ALTER TABLE scholarship_employment ADD employment_status VARCHAR(50);
ALTER TABLE scholarship_employment ADD contact_number INT AFTER birthdate;
ALTER TABLE scholarship_employment ADD email VARCHAR(50) AFTER address;
ALTER TABLE scholarship_employment DROP COLUMN verification_status;
ALTER TABLE scholarship_employment DROP COLUMN employment_status;
ALTER TABLE scholarship_employment CHANGE middle_initial middle_name VARCHAR(50);
ALTER TABLE scholarship_employment MODIFY COLUMN qualification VARCHAR(50);
*/

-- CALL update_data(1, "Solayao", "Dave Andrew", "A.", "", "Male", "2001-07-03", "Blk. 21 Lot 15, Berkeley Heights Subd., Brgy. Pulong Sta. Cruz, Sta. Rosa City, Laguna", "BSIT", "STI College Sta. Rosa", "N/A", "Santa Rosa", "PWSP", 2024);

-- TRUNCATE TABLE scholarship_employment;
-- DROP TABLE scholarship_employment;

-- SET AUTOCOMMIT = ON;