---TASK1:
SELECT AVG(Distance), Train_no FROM ROUTE_INFO_484 GROUP BY Train_no;

---TASK2:
SELECT AVG(Distance) as Average_distance, Train_no  FROM ROUTE_INFO_484 GROUP BY Train_no ORDER BY Average_distance DESC;
    
---TASK3:    
SELECT SUM(Distance) as Total_distance, Train_no FROM ROUTE_INFO_484 GROUP BY Train_no ORDER BY Total_distance;

---TASK4:
CREATE VIEW Temporary AS SELECT Train_no, COUNT(Compartment_number) AS No_of_compartments FROM COMPARTMENT_484 GROUP BY Train_no; 
SELECT MAX(No_of_compartments) FROM Temporary;
SELECT MIN(No_of_compartments) FROM Temporary;

---TASK5:
SELECT COUNT(Phone_no), User_id FROM USER_PHONE_484 WHERE User_id IN ('ADM_001', 'USR_006','USR_10') GROUP BY User_id;
    
---TASK6:    
SELECT Train_type, AVG(Far_per_km) AS Avg_Fare FROM FARE_TABLE_484 GROUP BY Train_type  ORDER BY Avg_Fare DESC;
    
---TASK7:    
SELECT * FROM TICKET_PASSENGER_484 WHERE Age IN (SELECT MAX(Age) FROM TICKET_PASSENGER_484);

---TASK8:
SELECT COUNT(Pnr) FROM TICKET_PASSENGER_484 WHERE Name LIKE "%Ullal%";