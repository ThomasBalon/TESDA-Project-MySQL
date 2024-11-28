/* CREATE TABLE IF NOT EXISTS verification_records (
	Id INT NOT NULL, 
    verification_means VARCHAR(50) NULL, 
    verification_date VARCHAR(50) NULL, 
    verification_status VARCHAR(50) NULL, 
    follow_up_date_1 VARCHAR(50) NULL, 
    follow_up_date_2 VARCHAR(50) NULL, 
    response_status VARCHAR(50) NULL, 
    not_interested_reason VARCHAR(255) NULL, 
    referral_status CHAR(10) NULL, 
    referral_date VARCHAR(50) NULL, 
    no_referral_reason VARCHAR(255) NULL, 
    invalid_contact CHAR(10) NULL, 
    FOREIGN KEY(Id) REFERENCES initial_records(Id)
    ON DELETE CASCADE
);
*/

-- ALTER TABLE verification_records MODIFY COLUMN refer_to_company TINYINT;
-- DELETE FROM verification_records WHERE id = 1;
-- SELECT * FROM tesda_db.verification_records;

/*
DELIMITER //
CREATE PROCEDURE initialise_verification_record(IN _Id INT)
BEGIN
	INSERT INTO verification_records 
    VALUES (_Id, "", "", "", "", "", "", "", "", "", "", "");
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE retrieve_verification_record(IN _Id INT)
BEGIN
	SELECT verification_means, verification_date, verification_status, follow_up_date_1, follow_up_date_2, response_status, not_interested_reason, 
			referral_status, referral_date, no_referral_reason, invalid_contact 
    FROM verification_records 
    WHERE Id = _Id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE update_verification_record(IN _Id INT, IN _means VARCHAR(50), IN _date VARCHAR(50), IN _status VARCHAR(50), 
				IN _followup_1 VARCHAR(50), IN _followup_2 VARCHAR(50), IN _response VARCHAR(50), IN _notinterested VARCHAR(255), IN _referralstatus CHAR(10), 
                IN _referraldate VARCHAR(50), IN _noreferral VARCHAR(255), IN _invalidcontact CHAR(10))
BEGIN
	UPDATE verification_records 
    SET verification_means = _means, verification_date = _date, verification_status = _status, follow_up_date_1 = _followup_1, follow_up_date_2 = _followup_2, 
		response_status = _response, not_interested_reason = _notinterested, referral_status = _referralstatus, referral_date = _referraldate, 
        no_referral_reason = _noreferral, invalid_contact = _invalidcontact 
    WHERE Id = _Id;
END//
DELIMITER ;
*/

