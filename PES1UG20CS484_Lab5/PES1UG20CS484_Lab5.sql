---Q1:
CREATE VIEW COMPUTE_PRICE AS SELECT TICKET_484.Pnr, TICKET_484.Train_no, TICKET_484.Departure, TICKET_484.Arrival, ROUTE_INFO_484.Distance, FARE_TABLE_484.Far_per_km FROM TICKET_484, ROUTE_INFO_484, FARE_TABLE_484 WHERE (TICKET_484.Train_no=ROUTE_INFO_484.Train_no AND TICKET_484.Arrival=ROUTE_INFO_484.To_station_name AND FARE_TABLE_484.Train_type=TICKET_484.Train_type AND FARE_TABLE_484.Compartment_type=TICKET_484.Compartment_type);
    
CREATE VIEW PASSENGER_NUMBER AS  SELECT Pnr, COUNT(Pnr) as Numbers  FROM TICKET_PASSENGER_484 GROUP BY Pnr;
    
UPDATE PAYMENT_INFO_484 AS P INNER JOIN COMPUTE_PRICE AS CS ON P.Pnr=CS.Pnr INNER JOIN PASSENGER_NUMBER AS PN ON CS.Pnr=PN.Pnr SET P.Price=CS.Distance*CS.Far_per_km*PN.Numbers;
    
SELECT * FROM PAYMENT_INFO_484;

---Q2:
SELECT T.Train_no, T.Train_name, R.From_station_no, R.To_station_no, R.From_station_name, R.To_station_name FROM TRAIN_484 AS T NATURAL JOIN ROUTE_INFO_484 AS R WHERE R.To_station_no-R.From_station_no=1;
    
---Q3:
SELECT DISTINCT R.Train_no FROM COMPARTMENT_484 AS C INNER JOIN ROUTE_INFO_484 AS R ON C.Train_no=R.Train_no WHERE R.To_station_name='Chennai' AND R.From_station_name='Bengaluru' AND C.Compartment_availibility>10 ;

---Q4:
SELECT Fname,Lname  FROM USER_484 AS U INNER JOIN TICKET_484 AS T INNER JOIN PAYMENT_INFO_484 AS P WHERE U.User_id=T.User_id AND P.Pnr=T.Pnr and P.Price>500 ;

---Q5:
SELECT U.Fname,U.Lname, U.Date_of_birth FROM USER_484 AS U LEFT OUTER JOIN TICKET_484 AS T ON T.Pnr ;
    
---Q6:
SELECT DISTINCT U.Fname,U.Lname FROM USER_484 AS U LEFT OUTER JOIN TICKET_484 AS T ON T.User_id!=U.User_id ;
    
---Q7:
SELECT T.Pnr, T.Train_no, T.Travel_date, U.Fname, U.Lname FROM TICKET_484 AS T RIGHT OUTER JOIN USER_484 AS U  ON T.User_id=U.User_id ;
    
---Q8:
SELECT T.User_id, N.Train_no, N.Source FROM TICKET_484 AS T RIGHT OUTER JOIN TRAIN_484 AS N ON T.Train_no=N.Train_no ;

---Q9:
SELECT T.Train_no  FROM TICKET_484 AS T WHERE T.Train_no  IN (SELECT T.Train_no FROM TICKET_484 AS T  JOIN TRAIN_484 AS N ON T.Train_no=N.Train_no WHERE N.Destination!='Mangaluru') ;

---Q10:
SELECT T.User_id FROM TICKET_484 AS T WHERE T.Pnr  IN (SELECT P.Pnr FROM PAYMENT_INFO_484 AS P  WHERE P.Price>(SELECT AVG(Price) FROM PAYMENT_INFO_484)) ;

        