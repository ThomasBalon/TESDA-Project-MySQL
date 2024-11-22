/* CREATE TABLE IF NOT EXISTS employment_records (
	id INT NOT NULL, 
    company_name VARCHAR(50), 
    address VARCHAR(255), 
    job_title VARCHAR(50), 
    employment_status VARCHAR(50), 
    hired_date DATE, 
    submit_docs_date DATE, 
    interview_date DATE, 
    reason_not_hired VARCHAR(50), 
    FOREIGN KEY(id) REFERENCES initial_records(id)
    ON DELETE CASCADE
);
*/

-- DELETE FROM employment_records WHERE id = 1;
-- SELECT * FROM tesda_db.employment_records;

/*
DELIMITER //
CREATE PROCEDURE initialise_employment_record(IN _id INT)
BEGIN
	INSERT INTO employment_records 
    VALUES (_id, "", "", "", "", null, null, null, "");
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE retrieve_employment_record(IN _id INT)
BEGIN
	SELECT company_name, address, job_title, employment_status, hired_date, submit_docs_date, interview_date, reason_not_hired 
    FROM employment_records 
    WHERE id = _id;
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

