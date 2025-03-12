-- CALL read_all_records();
-- CALL clear_all_records();
-- SET AUTOCOMMIT = ON;

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
CREATE PROCEDURE `create_user`(IN _username VARCHAR(255), IN _password CHAR(255))
BEGIN
	INSERT INTO users (username, password) 
    VALUES (_username, _password);
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
CREATE PROCEDURE delete_record(IN _id INT)
BEGIN
	DELETE FROM graduates WHERE id = _id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE delete_records_all()
BEGIN
	TRUNCATE `tesda_etrak_db`.`graduates`;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE `import_records`(IN _created TIMESTAMP, IN _updated TIMESTAMP, IN _district VARCHAR(50), IN _city VARCHAR(50), IN _tvi VARCHAR(255), 
									IN _qualification VARCHAR(255), IN _sector VARCHAR(255), IN _lastname VARCHAR(255), IN _firstname VARCHAR(255), IN _middlename VARCHAR(255), 
                                    IN _extname VARCHAR(50), IN _fullname VARCHAR(255), IN _sex VARCHAR(50), IN _birthdate VARCHAR(50), IN _contactnum VARCHAR(16), 
                                    IN _email VARCHAR(255), IN _address VARCHAR(255), IN _scholarship VARCHAR(50), IN _training VARCHAR(255), IN _assessment VARCHAR(255), 
                                    IN _emp_before_training VARCHAR(255), IN _occupation VARCHAR(255), IN _employer VARCHAR(255), IN _emp_type VARCHAR(255), IN _work_address VARCHAR(255), 
                                    IN _date_hired VARCHAR(255), IN _allocation VARCHAR(50), IN _verify_means VARCHAR(50), IN _verify_date VARCHAR(50), IN _verify_status VARCHAR(50), 
                                    IN _followup_1 VARCHAR(50), IN _followup_2 VARCHAR(50), IN _response VARCHAR(50), IN _not_interested VARCHAR(255), IN _referral_status CHAR(10), 
                                    IN _referral_date VARCHAR(50), IN _no_referral VARCHAR(255), IN _invalid_contact CHAR(10), IN _company_name VARCHAR(255), IN _company_address VARCHAR(255), 
                                    IN _job_title VARCHAR(255), IN _application VARCHAR(255), IN _withdrawn VARCHAR(255), IN _emp_status VARCHAR(255), IN _hired VARCHAR(50), 
                                    IN _submit_docs VARCHAR(50), IN _interview VARCHAR(50), IN _not_hired VARCHAR(50), IN _count CHAR(10), IN _graduates CHAR(10), 
                                    IN _employed CHAR(10), IN _verification VARCHAR(50), IN _job_vacancies CHAR(10))
BEGIN
	INSERT INTO graduates (created_at, updated_at, district, city, tvi, 
							qualification_title, sector, last_name, first_name, middle_name, 
                            extension_name, full_name, sex, birthdate, contact_number, 
                            email, address, scholarship_type, training_status, assessment_result, 
                            employment_before_training, occupation, employer_name, employment_type, work_address, 
                            date_hired, allocation, verification_means, verification_date, verification_status, 
                            follow_up_date_1, follow_up_date_2, response_status, not_interested_reason, referral_status, 
                            referral_date, no_referral_reason, invalid_contact, company_name, company_address, 
                            job_title, application_status, withdrawn_reason, employment_status, hired_date, 
                            submitted_documents_date, interview_date, not_hired_reason, count, no_of_graduates, 
                            no_of_employed, verification, job_vacancies) 
    VALUES (_created, _updated, _district, _city, _tvi, 
			_qualification, _sector, _lastname, _firstname, _middlename, 
			_extname, _fullname, _sex, _birthdate, _contactnum, 
			_email, _address, _scholarship, _training, _assessment, 
			_emp_before_training, _occupation, _employer, _emp_type, _work_address, 
			_date_hired, _allocation, _verify_means, _verify_date, _verify_status, 
			_followup_1, _followup_2, _response, _not_interested, _referral_status, 
			_referral_date, _no_referral, _invalid_contact, _company_name, _company_address, 
			_job_title, _application, _withdrawn, _emp_status, _hired, 
			_submit_docs, _interview, _not_hired, _count, _graduates, 
			_employed, _verification, _job_vacancies);
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE login_user(IN _username VARCHAR(255))
BEGIN
	SELECT id, password, created 
    FROM users 
    WHERE username = _username;
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
    WHERE id = _id;
END//
DELIMITER ;
*/

/*
DELIMITER $$
CREATE PROCEDURE read_records()
BEGIN
	SELECT id, last_name, first_name, middle_name, extension_name, employment_status, allocation, qualification_title
    FROM graduates;
END$$
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE update_record(IN _id INT, IN verif_means VARCHAR(50), IN verif_date VARCHAR(50), IN verif_status VARCHAR(50), IN fwup_date1 VARCHAR(50), 
								IN fwup_date2 VARCHAR(50), IN response VARCHAR(50), IN not_interested VARCHAR(255), IN ref_status CHAR(10), IN ref_date VARCHAR(50), 
                                IN no_referral VARCHAR(255), IN invalid_con CHAR(10), IN comp_name VARCHAR(255), IN comp_address VARCHAR(255), IN job VARCHAR(255), 
                                IN emp_status VARCHAR(255), IN hired VARCHAR(50), IN submitted_documents VARCHAR(50), IN interview VARCHAR(50), IN not_hired VARCHAR(50))
BEGIN
	UPDATE graduates 
    SET verification_means = verif_means, verification_date = verif_date, verification_status = verif_status, follow_up_date_1 = fwup_date1, follow_up_date_2 = fwup_date2, 
		response_status = response, not_interested_reason = not_interested, referral_status = ref_status, referral_date = ref_date, no_referral_reason = no_referral, 
        invalid_contact = invalid_con, company_name = comp_name, company_address = comp_address, job_title = job, employment_status = emp_status, 
        hired_date = hired, submitted_documents_date = submitted_documents, interview_date = interview, not_hired_reason = not_hired 
    WHERE id = _id;
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
