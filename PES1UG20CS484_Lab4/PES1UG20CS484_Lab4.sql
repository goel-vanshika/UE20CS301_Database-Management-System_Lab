INSERT INTO TICKET_484('Pnr', 'Train_no', 'Travel_date', 'Departure', 'Arrival', 'Departure_time', 'Arrival_time', 'User_id', 'Train_type', 'Compartment_type', 'Compartment_number') VALUES
('PNR001', 62621, '2022-08-07', 'Bengaluru', 'Chennai', '16:00:00', '20:30:00', 'ADM_001', 'Superfast', 'I Class', 'F01'),
('PNR002', 62620, '2022-08-14', 'Chennai', 'Bengaluru', '08:00:00', '12:25:00', 'ADM_001', 'Superfast', 'I Class', 'F02'),
('PNR003', 25261, '2022-08-01', 'Chennai', 'Mangaluru', '18:00:00', '07:30:00', 'ADM_003', 'Mail', 'III Class', 'G02'),
('PNR004', 25260, '2022-08-15', 'Mangaluru', 'Chennai', '19:15:00', '08:00:00', 'ADM_003', 'Mail', 'II Class', 'S02'),
('PNR005', 58451, '2022-08-03', 'Bengaluru', 'Mangaluru', '06:00:00', '14:00:00', 'USR_002', 'Fast', 'III Class', 'G01'),
('PNR006', 58450, '2033-08-04', 'Mangaluru', 'Bengaluru', '08:00:00', '10:15:00', 'USR_002', 'Fast', 'II Class', 'S01'),
('PNR007', 62621, '2022-08-07', 'Bangarpet', 'Chennai', '18:00:00', '20:30:00', 'ADM_002', 'Superfast', 'II Class', 'S01'),
('PNR008', 62620, '2022-08-02', 'Chennai', 'Bangarpet', '08:00:00', '09:00:00', 'ADM_002', 'Superfast', 'I Class', 'F01'),
('PNR010', 25260, '2022-08-19', 'Mangaluru', 'Kannur', '19:15:00', '23:15:00', 'USR_007', 'Mail', 'II Class', 'S01'),
('PNR011', 62621, '2022-08-22', 'Katapadi', 'Chennai', '19:00:00', '20:30:00', 'USR_008', 'Superfast', 'I Class', 'F01'),
('PNR012', 58451, '2022-08-11', 'Subramanya', 'Mangaluru', '11:00:00', '14:00:00', 'USR_009', 'Fast', 'I Class', 'F01'),
('PNR014', 25260, '2022-08-17', 'Kannur', 'Palakkad', '23:15:00', '04:30:00', 'USR_010', 'Mail', 'II Class', 'S01'),
('PNR015', 25260, '2022-08-05', 'Palakkad', 'Chennai', '04:30:00', '08:00:00', 'USR_012', 'Mail', 'II Class', 'S01');


INSERT INTO TRAIN_484('Train_no', 'Train_name', 'Train_type', 'Source', 'Destination', 'Availibility') VALUES
(25260, 'Chennai Mail', 'Mail', 'Mangaluru', 'Chennai', 'Yes'),
(25261, 'Managaluru Mail', 'Mail', 'Chennai ', 'Mangaluru', 'Yes'),
(58450, 'MAN-BEN Express', 'Fast', 'Mangaluru', 'Bengaluru', 'yes'),
(58451, 'BEN-MAN Express', 'Fast', 'Bengaluru', 'Mangaluru', 'yes'),
(62620, 'CHE-BEN Shatabdi', 'Superfast', 'Chennai ', 'Bengaluru', 'No'),
(62621, 'BEN-CHE Shatabdi', 'Superfast', 'Bengaluru', 'Chennai', 'yes');


INSERT INTO COMPARTMENT_484(Compartment_number, Compartment_type, Compartment_capacity, Compartment_availibility, Train_no) VALUES
('F01', 'I Class', 16, 0, 25260),
('F01', 'I Class', 16, 0, 25261),
('F01', 'I Class', 16, 4, 58450),
('F01', 'I Class', 16, 5, 58451),
('F01', 'I Class', 16, 15, 62620),
('F01', 'I Class', 16, 6, 62621),
('F02', 'I Class', 16, 0, 62620),
('G01', 'III Class', 60, 33, 25261),
('G01', 'III Class', 60, 2, 58450),
('G01', 'III Class', 60, 40, 58451),
('G01', 'III Class', 60, 10, 62621),
('G02', 'III Class', 60, 45, 25261),
('G02', 'III Class', 60, 12, 62621),
('S01', 'II Class', 30, 15, 25260),
('S01', 'II Class', 30, 15, 25261),
('S01', 'II Class', 30, 5, 58450),
('S01', 'II Class', 30, 4, 62621),
('S02', 'II Class', 30, 17, 25260),
('S02', 'II Class', 30, 3, 58450),
('S02', 'II Class', 30, 6, 62621);


INSERT INTO PAYMENT_INFO_484('Transaction_id', 'Bank', 'Card_number', 'Price', 'Pnr') VALUES
(146445, 'HDFC', '1.23433E+15', NULL, 'PNR006'),
(243535, 'UNION BANK', '2.43647E+15', NULL, 'PNR012'),
(342344, 'IOB', '5.62357E+15', NULL, 'PNR001'),
(354364, 'CANARA BANK', '5.76879E+15', NULL, 'PNR014'),
(531343, 'SBI', '8.95327E+15', NULL, 'PNR004'),
(576768, 'ICICI', '7.56356E+15', NULL, 'PNR007'),
(676756, 'CANARA BANK', '7.36756E+15', NULL, 'PNR002'),
(746745, 'KOTAK', '2.54564E+15', NULL, 'PNR008'),
(758900, 'UNION BANK', '2.43266E+15', NULL, 'PNR015'),
(867546, 'UNION BANK', '4.65769E+15', NULL, 'PNR010'),
(867547, 'SBI', '7.46635E+15', NULL, 'PNR011'),
(978098, 'INDIAN BANK', '9.88733E+15', NULL, 'PNR005'),
(978776, 'UNION BANK', '1I54978597435874', NULL, 'PNR003');


INSERT INTO USER_484('User_id', 'User_type', 'Fname', 'Lname', 'Age', 'Date_of_birth', 'Pincode', 'Street_no') VALUES  
('ADM_001', 'ADMIN', 'Narendra ', 'Modi', NULL, '1989-04-14', '600047', 'Old Jail Road'),
('ADM_002', 'ADMIN', 'Droupadi', 'Murmu', NULL, '1990-04-14', '640012', 'High Street'),
('ADM_003', 'ADMIN', 'Manmohan ', 'Singh', NULL, '1991-04-08', '575003', 'Pumpwell Road'),
('USR_001', 'PSGR', '  Ajit', 'Ullal', NULL, '1971-01-01', '560001', '10, Janpath'),
('USR_002', 'PSGR', 'Muhammed ', 'Ali', NULL, '2000-10-09', '560003', '10, Downing'),
('USR_003', 'PSGR', 'Sai Deepak', 'Reddy', NULL, '1996-12-12', '600001', '14, Kailsh Marg'),
('USR_004', 'PSGR', 'Rudra', 'Agarwal', NULL, '1996-12-13', '600042', '5, Lohia Garden'),
('USR_005', 'PSGR', 'Rahul', 'Khanna', NULL, '1997-12-14', '600067', '1, Pink Street'),
('USR_006', 'PSGR', 'Nirmala', 'Seturaman', NULL, '1998-12-15', '560105', '3, Blue Avenue'),
('USR_007', 'PSGR', 'Smriti', 'Irani', NULL, '1999-12-16', '575014', '4, Banyan Avenie'),
('USR_008', 'PSGR', 'Ajit', 'Sethi', NULL, '1966-04-14', '575001', '6, Poes Garden'),
('USR_009', 'PSGR', 'Arjun', 'Allu', NULL, '1967-04-08', '575020', '7, Dhamaka street'),
('USR_010', 'PSGR', 'Samanta', 'Prabhu', NULL, '1968-04-14', '600042', '8, Clone Colony'),
('USR_011', 'PSGR', 'Kiran ', 'Bedi', NULL, '1969-04-14', '560003', '56, Brigade Road'),
('USR_012', 'PSGR', 'Rahul ', 'Gandhi', NULL, '1970-04-08', '475001', 'Mirza road'),
('USR_013', 'PSGR', 'Rashkit ', 'Shetty', NULL, '1971-04-14', '560009', 'JC Road'),
('USR_014', 'PSGR', 'Rishi', 'Sunak', NULL, '1972-04-14', '600034', 'Anna Sali'),
('USR_015', 'PSGR', 'Vedavalli', 'Srinath', NULL, '1973-04-14', '560054', 'Church Street, Bangalore'),
('USR_016', 'PSGR', 'Subbu', 'Saravana', NULL, '1974-04-14', '600043', 'American Street'),
('USR_017', 'PSGR', 'Sheela', 'Dixit', NULL, '1975-04-08', '560048', 'Kasturba Road'),
('USR_018', 'PSGR', 'Margaret', 'Alva', NULL, '1976-04-14', '560008', 'New BEL Road'),
('USR_019', 'PSGR', 'Arun', 'Kumar', NULL, '1977-04-14', '600046', 'Mint Street'),
('USR_020', 'PSGR', 'Anshu', 'Bhardwaj', NULL, '1978-04-14', '575001', 'KSR Road'),
('USR_021', 'PSGR', 'Suma', 'Sampat', NULL, '1979-04-08', '560012', 'Old Airport Road, Bangalore'),
('USR_022', 'PSGR', 'Srihari', 'Udupa', NULL, '1980-04-14', '560015', 'Suranjan Das Road'),
('USR_023', 'PSGR', 'Satish', 'Kotian', NULL, '1981-04-14', '600044', 'T Nagar'),
('USR_024', 'PSGR', 'Shradha', 'Nayar', NULL, '1982-04-08', '560006', 'M G Road, Bangalore'),
('USR_025', 'PSGR', 'Manisha', 'Solanki', NULL, '1983-04-08', '575030', 'M G Road'),
('USR_026', 'PSGR', 'Bharti', 'Devgan', NULL, '1984-04-14', '560059', 'NAL Wind Tunnel Road'),
('USR_027', 'PSGR', 'Roopa', 'Ram', NULL, '1985-04-14', '575023', 'Bunder Road'),
('USR_028', 'PSGR', 'Pallavi', 'Ram', NULL, '1986-04-08', '560044', 'Lavelle Road'),
('USR_029', 'PSGR', 'Ravi', 'Naik', NULL, '1987-04-14', '600045', 'Thiru V ka Salai'),
('USR_030', 'PSGR', 'Virat', 'Murthy', NULL, '1988-04-14', '575011', 'Bejai New Road');


LOAD DATA LOCAL INFILE
'/Users/vanshikagoel/Desktop/DBMS/Lab/Lab4/data/FareTable.csv'
INTO TABLE FARE_TABLE_484
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"    
IGNORE 1 LINES;


LOAD DATA LOCAL INFILE
'/Users/vanshikagoel/Desktop/DBMS/Lab/Lab4/data/RouteInfo.csv'
INTO TABLE ROUTE_INFO_484
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"    
IGNORE 1 LINES;


LOAD DATA LOCAL INFILE
'/Users/vanshikagoel/Desktop/DBMS/Lab/Lab4/data/Ticket-Passenger.csv'
INTO TABLE TICKET_PASSENGER_484
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"
IGNORE 1 LINES;


LOAD DATA LOCAL INFILE
'/Users/vanshikagoel/Desktop/DBMS/Lab/Lab4/data/User-Phone.csv'
INTO TABLE USER_PHONE_484
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"    
IGNORE 1 LINES;


LOAD DATA LOCAL INFILE
'/Users/vanshikagoel/Desktop/DBMS/Lab/Lab4/data/User-Train.csv'
INTO TABLE USER_TRAIN_484
COLUMNS TERMINATED BY ","
OPTIONALLY ENCLOSED BY ""
ESCAPED BY ""
LINES TERMINATED BY "\n"
IGNORE 1 LINES;

UPDATE USER_484 SET Age = DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),Date_of_birth)), '%Y') + 0;


SELECT * FROM ROUTE_INFO_484 WHERE Distance BETWEEN 70 AND 150;


SELECT * FROM ROUTE_INFO_484 WHERE (From_station_name='Chennai' AND To_station_name='Sholingur' OR From_station_name='Sholingur' AND To_station_name='Chennai');


SELECT * FROM TRAIN_484 WHERE Train_type <> 'Mail';


SELECT Train_name FROM TRAIN_484 WHERE (Source='Bengaluru' AND Destination='Chennai');


SELECT * FROM TICKET_484 WHERE (Departure='Chennai' AND Departure_time>'08:00:00');


SELECT * FROM USER_484 WHERE YEAR(Date_of_birth) BETWEEN '1980' AND '1990';


SELECT * FROM USER_484 WHERE Fname like "S%";


SELECT Compartment_availibility FROM COMPARTMENT_484 WHERE Compartment_type ='I Class' AND Train_no=62621;


SELECT Pnr, Transaction_id FROM PAYMENT_INFO_484 WHERE Bank='Union Bank';


GRANT ALL PRIVILEGES ON PES1UG20CS484_RAILWAY_RESERVATION.USER_484 TO 'user1'@'localhost';

GRANT SELECT, UPDATE, INSERT, DELETE ON PES1UG20CS484_RAILWAY_RESERVATION.TRAIN_484 TO 'user1'@'localhost';

GRANT ALL PRIVILEGES ON PES1UG20CS484_RAILWAY_RESERVATION.TICKET_484 TO 'user1'@'localhost';

SHOW GRANTS FOR 'user1'@'localhost';


REVOKE SELECT, UPDATE, INSERT, DELETE ON PES1UG20CS484_RAILWAY_RESERVATION.TICKET_484 FROM 'user1'@'localhost';

SELECT * FROM TICKET_484;

DELETE FROM TICKET_484 WHERE Departure='Bengaluru';


SET autocommit=1;

START TRANSACTION;

INSERT INTO USER_PHONE_484(User_id,Phone_no) VALUES('ADM004','9981291212');

COMMIT;


SET autocommit=0;

SAVEPOINT SP1;

INSERT INTO FARE_TABLE_484 VALUES('Mail','IV Class',3);

SELECT * FROM FARE_TABLE_484 WHERE Compartment_type='IV Class';

SAVEPOINT SP2;

ROLLBACK TO SAVEPOINT SP1;

SELECT * FROM FARE_TABLE_484 WHERE Compartment_type='IV Class';
