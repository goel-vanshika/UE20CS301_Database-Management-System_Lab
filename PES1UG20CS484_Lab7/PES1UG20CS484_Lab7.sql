---TASK1:
SELECT T.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T NATURAL JOIN USER_484 AS U WHERE T.Departure='Bengaluru' AND T.Arrival='Chennai' AND MONTH(T.Travel_date)=10 AND YEAR(T.Travel_date)=2021 UNION SELECT T.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T NATURAL JOIN USER_484 AS U WHERE T.Departure='Bengaluru' AND T.Arrival='Chennai' AND MONTH(T.Travel_date)=8 AND YEAR(T.Travel_date)=2022 ;
    
---TASK2:    
SELECT T1.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T1 NATURAL JOIN USER_484 AS U WHERE T1.Arrival='Bengaluru' AND T1.Departure='Chennai' AND MONTH(T1.Travel_date)=10 AND YEAR(T1.Travel_date)=2021 AND EXISTS (SELECT T2.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T2 NATURAL JOIN USER_484 AS U WHERE T2.Arrival='Bengaluru' AND T2.Departure='Chennai' AND MONTH(T2.Travel_date)=8 AND YEAR(T2.Travel_date)=2022 AND T1.User_id=T2.User_id);
        
---TASK3:
SELECT T1.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T1 NATURAL JOIN USER_484 AS U WHERE T1.Arrival='Bengaluru' AND T1.Departure='Chennai' AND MONTH(T1.Travel_date)=8 AND YEAR(T1.Travel_date)=2022 AND NOT EXISTS (SELECT T2.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T2 NATURAL JOIN USER_484 AS U WHERE T2.Arrival='Bengaluru' AND T2.Departure='Chennai' AND MONTH(T2.Travel_date)=10 AND YEAR(T2.Travel_date)=2021 AND T1.User_id=T2.User_id);

---TASK4:
SELECT T1.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T1 NATURAL JOIN USER_484 AS U WHERE T1.Arrival='Bengaluru' AND T1.Departure='Chennai' AND EXISTS (SELECT T2.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T2 NATURAL JOIN USER_484 AS U  WHERE T2.Departure='Bengaluru' AND T2.Arrival='Chennai' AND DAY(T1.Travel_date)+7>=DAY(T2.Travel_date) AND T1.User_id=T2.User_id);

---TASK5:
SELECT T.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T NATURAL JOIN USER_484 AS U WHERE T.Departure='Bengaluru' AND T.Arrival='Chennai' EXCEPT SELECT T.User_id, U.User_type, U.Fname, U.Lname FROM TICKET_484 AS T NATURAL JOIN USER_484 AS U WHERE T.Arrival='Bengaluru' AND T.Departure='Chennai';