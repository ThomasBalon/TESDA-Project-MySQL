/* CREATE TABLE IF NOT EXISTS verification_records (
	id INT NOT NULL, 
    verif_means VARCHAR(50), 
    verif_date DATE, 
    verif_status VARCHAR(50), 
    response_type VARCHAR(50),  
    refer_to_company BOOLEAN, 
    referral_date DATE, 
    reason_no_referral VARCHAR(255), 
    reason_not_interested VARCHAR(255), 
    follow_up_1 DATE, 
    follow_up_2 DATE, 
    invalid_contact BOOLEAN, 
    FOREIGN KEY(id) REFERENCES initial_records(id)
    ON DELETE CASCADE
);
*/

/*
DELIMITER //
CREATE PROCEDURE initialise_verification_record(IN _id INT)
BEGIN
	INSERT INTO verification_records 
    VALUES (_id, null, null, null, null, null, null, null, null, null, null, null);
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE retrieve_verification_record(IN _id INT)
BEGIN
	SELECT verif_means, verif_date, verif_status, response_type, refer_to_company, referral_date, reason_no_referral, reason_not_interested, 
			follow_up_1, follow_up_2, invalid_contact 
    FROM verification_records 
    WHERE id = _id;
END//
DELIMITER ;
*/

/*
DELIMITER //
CREATE PROCEDURE submit_verification_record(IN _id INT, IN _means VARCHAR(50), IN _date DATE, IN _status VARCHAR(50), IN _responsetype VARCHAR(50), IN _canrefer BOOLEAN, IN _refdate DATE, 
								IN _rsn_noref VARCHAR(255), IN _rsn_notint VARCHAR(255), IN _fwp_date_1 DATE, IN _fwup_date_2 DATE, IN _invalidcontact BOOLEAN)
BEGIN
	INSERT INTO verification_records 
    VALUES (_id, _means, _date, _status, _responsetype, _canrefer, _refdate, _rsn_noref, _rsn_notint, _fwp_date_1, _fwup_date_2, _invalidcontact);
END//
DELIMITER ;
*/

-- DELETE FROM verification_records WHERE id = 1;
-- SELECT * FROM tesda_db.verification_records;