DELIMITER $$
CREATE FUNCTION ticketsPurchase(User varchar(255))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE result VARCHAR(50);
	DECLARE count_tickets INT;
SELECT COUNT(Pnr) INTO count_tickets
	FROM TICKET_484
	WHERE User_id=User AND YEAR(Travel_date)=YEAR(sysdate()) AND MONTH(Travel_date)=MONTH(sysdate());
IF count_tickets > 3 THEN
	SET result='Cannot purchase ticket. Current Limit is over';
ELSE
	SET result='Can purchase ticket.';
END IF;
RETURN result;
END $$;
DELIMITER ;


SELECT User_id, ticketsPurchase(User_id) FROM USER_484;