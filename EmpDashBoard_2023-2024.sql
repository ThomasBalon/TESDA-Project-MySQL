/* CREATE TABLE IF NOT EXISTS empdashboard_2023_2024 (
	Id INT AUTO_INCREMENT, 
    District VARCHAR(50), 
    City VARCHAR(50), 
    TVI VARCHAR(50), 
    Qualification VARCHAR(50), 
    Sector VARCHAR(50), 
    Last_Name VARCHAR(50), 
    First_Name VARCHAR(50), 
    Middle_Name VARCHAR(50), 
    Extension_Name VARCHAR(50), 
    Full_Name VARCHAR(200), 
    Scholarship_Type VARCHAR(50), 
    Training_Status VARCHAR(50), 
    Assessment_Result VARCHAR(50), 
    Emp_Before_Training VARCHAR(50), 
    Occupation VARCHAR(50), 
    Employer VARCHAR(200), 
    Emp_Type VARCHAR(50), 
    Allocation INT, 
    Verif_Status VARCHAR(50), 
    Verif_Date DATE, 
    Referral_Status CHAR(10), 
    Company VARCHAR(255), 
    Address VARCHAR(255), 
    Job_Title VARCHAR(50), 
    Emp_Date DATE, 
    Emp_Status VARCHAR(50), 
    Response_Type VARCHAR(50), 
    Follow_Up DATE, 
    Answered CHAR(10), 
    Reason_Not_Applying VARCHAR(50), 
    PRIMARY KEY(Id)
);
*/

/*
DELIMITER //
CREATE PROCEDURE Insert_Data(IN district VARCHAR(50), IN city VARCHAR(50), IN tvi VARCHAR(50), IN qualification VARCHAR(50), IN sector VARCHAR(50), IN last_name VARCHAR(50), 
							IN first_name VARCHAR(50), IN middle_name VARCHAR(50), IN extension_name VARCHAR(50), IN full_name VARCHAR(200), IN scholarship_type VARCHAR(50), 
							IN training_status VARCHAR(50), IN assessment_result VARCHAR(50), IN emp_before_training VARCHAR(50), IN occupation VARCHAR(50), IN employer VARCHAR(200), 
                            IN emp_type VARCHAR(50), IN allocation INT, IN verif_status VARCHAR(50), IN verif_date DATE, IN referral_status CHAR(10), IN company VARCHAR(255), 
                            IN address VARCHAR(255), IN job_title VARCHAR(50), IN emp_date DATE, IN emp_status VARCHAR(50), IN response_type VARCHAR(50), IN follow_up DATE, 
                            IN answered CHAR(10), IN reason_not_applying VARCHAR(50))
BEGIN
	INSERT INTO empdashboard_2023_2024 (District, City, TVI, Qualification, Sector, Last_Name, First_Name, Middle_Name, Extension_Name, Full_Name, Scholarship_Type, Training_Status, 
										Assessment_Result, Emp_Before_Training, Occupation, Employer, Emp_Type, Allocation, Verif_Status, Verif_Date, Referral_Status, Company, Address, 
                                        Job_Title, Emp_Date, Emp_Status, Response_Type, Follow_Up, Answered, Reason_Not_Applying) 
	VALUES (district, city, tvi, qualification, sector, last_name, first_name, middle_name, extension_name, full_name, scholarship_type, training_status, assessment_result, 
			emp_before_training, occupation, employer, emp_type, allocation, verif_status, verif_date, referral_status, company, address, job_title, emp_date, emp_status, response_type, 
            follow_up, answered, reason_not_applying);
                                        
END//
DELIMITER ;
*/