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
    count INT NULL, 
    no_of_graduates INT NULL, 
    no_of_employed INT NULL, 
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
    VALUES (_Id, "", "", "", "", "", "", "", "", null, null, null, "", "");
END//
DELIMITER ;
*/