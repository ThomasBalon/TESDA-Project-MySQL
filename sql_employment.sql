/* CREATE TABLE IF NOT EXISTS employment_records (
	Id INT NOT NULL, 
    company_name VARCHAR(255) NULL, 
    company_address VARCHAR(255)  NULL, 
    job_title VARCHAR(255) NULL, 
    employment_status VARCHAR(255) NULL, 
    hired_date VARCHAR(50) NULL, 
    submitted_documents_date VARCHAR(50) NULL, 
    interview_date VARCHAR(50) NULL, 
    not_hired_reason VARCHAR(50) NULL, 
    FOREIGN KEY(Id) REFERENCES initial_records(Id)
    ON DELETE CASCADE
);
*/

-- DELETE FROM employment_records WHERE id = 1;
-- SELECT * FROM tesda_db.employment_records;

/*
DELIMITER //
CREATE PROCEDURE initialise_employment_record(IN _Id INT)
BEGIN
	INSERT INTO employment_records 
    VALUES (_Id, "", "", "", "", "", "", "", "");
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE retrieve_employment_record(IN _Id INT)
BEGIN
	SELECT company_name, company_address, job_title, employment_status, hired_date, submitted_documents_date, interview_date, not_hired_reason  
    FROM employment_records 
    WHERE Id = _Id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE update_employment_record(IN _id INT, IN _companyname VARCHAR(50), IN _address VARCHAR(255), IN _job_title VARCHAR(50), IN _empstatus VARCHAR(50), 
											IN _hired DATE, IN _submitdocs DATE, IN _interview DATE, IN _rsn_nothired VARCHAR(50))
BEGIN
	UPDATE employment_records 
    SET company_name = _companyname, address = _address, job_title = _job_title, employment_status = _empstatus, hired_date = _hired, 
		submit_docs_date = _submitdocs, interview_date = _interview, reason_not_hired = _rsn_nothired 
    WHERE id = _id;
END//
DELIMITER ;
*/

