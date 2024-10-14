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

/* DELIMITER //
CREATE PROCEDURE check_fullname(IN _last VARCHAR(50), IN _first VARCHAR(50))
BEGIN
	SELECT UPPER(last_name), UPPER(first_name) FROM scholarship_employment WHERE last_name = _last AND first_name = _first;
END//
DELIMITER ;
*/


/* DELIMITER //
CREATE PROCEDURE submit_data(IN _lastname VARCHAR(50), IN _firstname VARCHAR(50), IN _middleinitial CHAR(10), IN _suffix CHAR(10), IN _sex VARCHAR(50), IN _birthdate DATE, 
								IN _address VARCHAR(255), IN _qualification VARCHAR(255), IN _tviname VARCHAR(255), IN _district VARCHAR(255), IN _city VARCHAR(255), 
                                IN _scholarshiptype VARCHAR(255), IN _graduationyear INT)
BEGIN
	INSERT INTO scholarship_employment (last_name, first_name, middle_initial, suffix, sex, birthdate, address, qualification, tvi_name, district, city, scholarship_type, graduation_year) 
    VALUES (_lastname, _firstname, _middleinitial, _suffix, _sex, _birthdate, _address, _qualification, _tviname, _district, _city, _scholarshiptype, _graduationyearsubmit_data);
END//
DELIMITER ;
*/

-- TRUNCATE TABLE scholarship_employment;
-- DROP TABLE scholarship_employment;