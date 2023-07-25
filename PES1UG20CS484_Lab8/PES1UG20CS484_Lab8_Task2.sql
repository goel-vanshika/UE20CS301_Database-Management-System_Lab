DELIMITER $$
CREATE PROCEDURE update_age(IN User_id varchar(255), IN Date_of_birth date)
BEGIN
	DECLARE age_new INT;
	SET age_new=FLOOR(DATEDIFF(CURRENT_DATE,Date_of_birth)/365);
	UPDATE USER_484 SET Age=age_new WHERE User_id=User_id;
END;$$
DELIMITER ;


SELECT * FROM USER_484 WHERE User_id='ADM_001';
CALL update_age('ADM_001','1989-04-14');
SELECT * FROM USER_484 WHERE User_id='ADM_001';
