/* CREATE TABLE IF NOT EXISTS verification_records (
	id INT NOT NULL, 
    verif_means VARCHAR(50), 
    verif_date DATE, 
    verif_status VARCHAR(50), 
    referral_status BOOLEAN, 
    company_name VARCHAR(50), 
    responded_reason VARCHAR(255), 
    follow_up_date DATE, 
    not_interested_reason VARCHAR(255), 
    FOREIGN KEY(id) REFERENCES initial_records(id)
);
*/

/*
DELIMITER //
CREATE PROCEDURE update_record(IN _id INT, IN _means VARCHAR(50), IN _date DATE, IN _status VARCHAR(50), IN _refstatus BOOLEAN, IN _companyname VARCHAR(50), 
								IN _respondedrsn VARCHAR(255), IN _followup_date DATE, IN _notinterested_rsn VARCHAR(255))
BEGIN
	INSERT INTO verification_records 
    VALUES (_id, _means, _date, _status, _refstatus, _companyname, _respondedrsn, _followup_date, _notinterested_rsn);
END//
DELIMITER ;
*/