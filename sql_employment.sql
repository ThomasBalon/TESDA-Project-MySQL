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

/*
DELIMITER //
CREATE PROCEDURE initialise_employment_record(IN _id INT)
BEGIN
	INSERT INTO employment_records 
    VALUES (_id, null, null, null, null, null, null, null, null);
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE submit_employment_record(IN _id INT, IN _companyname VARCHAR(50), IN _address VARCHAR(255), IN _job_title VARCHAR(50), IN _empstatus VARCHAR(50), 
											IN _hired DATE, IN _submitdocs DATE, IN _interview DATE, IN _rsn_nothired VARCHAR(50))
BEGIN
	INSERT INTO employment_records 
    VALUES (_id, _companyname, _address, _job_title, _empstatus, _hired, _submitdocs, _interview, _rsn_nothired);
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE read_employment_records()
BEGIN
	SELECT employment_status 
    FROM employment_records;
END//
DELIMITER ;
*/

-- DELETE FROM employment_records WHERE id = 1;

-- SELECT * FROM tesda_db.employment_records;