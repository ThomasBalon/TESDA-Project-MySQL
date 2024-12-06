/* CREATE TABLE IF NOT EXISTS external_records (
	Id INT NOT NULL, 
    training_status VARCHAR(50) NULL, 
    assessment_result VARCHAR(255)  NULL, 
    employment_before_training VARCHAR(50) NULL, 
    occupation VARCHAR(255) NULL, 
    employer_name VARCHAR(255) NULL, 
    employment_type VARCHAR(255) NULL, 
    date_hired VARCHAR(50) NULL, 
    remarks VARCHAR(255) NULL, 
    count CHAR(10) NULL, 
    no_of_graduates CHAR(10) NULL, 
    no_of_employed CHAR(10) NULL, 
    verification VARCHAR(50) NULL, 
    job_vacancies CHAR(10) NULL, 
    FOREIGN KEY(Id) REFERENCES initial_records(Id)
    ON DELETE CASCADE
);
*/

/*
DELIMITER //
CREATE PROCEDURE initialise_external_record (IN Id INT) 
BEGIN
	INSERT INTO external_records 
    VALUES (_Id, "", "", "", "", "", "", "", "", "", "", "", "", "");
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE exceldata_import(IN _Id INT, IN _verifmeans VARCHAR(50), IN _verifdate VARCHAR(50), 
								IN _verifstatus VARCHAR(50), IN _followupdate_1 VARCHAR(50), IN _followupdate_2 VARCHAR(50), IN _response VARCHAR(50), 
                                IN _notinterested VARCHAR(255), IN _refstatus CHAR(10), IN _refdate VARCHAR(50), IN _norefreason VARCHAR(255), 
                                IN _invalidcontact CHAR(10), IN _companyname VARCHAR(255), IN _companyaddress VARCHAR(255), IN _jobtitle VARCHAR(255), 
                                IN _empstatus VARCHAR(255), IN _hireddate VARCHAR(50), IN _submitdocsdate VARCHAR(50), IN _interviewdate VARCHAR(50), 
                                IN _nothiredreason VARCHAR(50), IN _training VARCHAR(50), IN _assessment VARCHAR(255), IN _empbeforetraining VARCHAR(50), 
                                IN _occupation VARCHAR(255), IN _employer VARCHAR(255), IN _emptype VARCHAR(255), IN _datehired VARCHAR(50), 
                                IN _remarks VARCHAR(255), IN _count CHAR(10), IN _graduates CHAR(10), IN _employed CHAR(10), 
                                IN _verification VARCHAR(50), IN _jobvacancies CHAR(10))
BEGIN
	INSERT INTO verification_records 
    VALUES (_Id, _verifmeans, _verifdate, _verifstatus, _followupdate_1, _followupdate_2, _response, _notinterested, _refstatus, _refdate, _norefreason, 
			_invalidcontact);
    INSERT INTO employment_records 
    VALUES (_Id, _companyname, _companyaddress, _jobtitle, _empstatus, _hireddate, _submitdocsdate, _interviewdate, _nothiredreason);
    INSERT INTO external_records 
    VALUES (_Id, _training, _assessment, _empbeforetraining, _occupation, _employer, _emptype, _datehired, _remarks, _count, _graduates, _employed, 
			_verification, _jobvacancies);
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE exceldata_readall()
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