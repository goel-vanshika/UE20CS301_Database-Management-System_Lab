DELIMITER $$
CREATE TRIGGER BeforeDelete
BEFORE DELETE
ON TICKET_484 FOR EACH ROW
BEGIN
  INSERT INTO BACKUP_TABLE_PAYMENT_484
  SELECT * FROM PAYMENT_INFO_484 WHERE Pnr=old.Pnr;
  DELETE FROM PAYMENT_INFO_484 WHERE Pnr = old.Pnr;
END $$
DELIMITER ;


DELETE FROM TICKET_484 WHERE Pnr='PNR001';
SELECT * FROM BACKUP_TABLE_PAYMENT_484;
SELECT * FROM TICKET_484 WHERE Pnr='PNR001';
SELECT * FROM PAYMENT_INFO_484 WHERE Pnr='PNR001';