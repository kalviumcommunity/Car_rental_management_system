-- CREATE DATABASE car_rental_management_system_dml_;
-- use car_rental_management_system_dml_;

-- Insert a new customer
INSERT INTO Customer (address, fname, lname, gender, age, cust_email, cust_pass)
VALUES 
('123 Main St', 'John', 'Doe', 'Male', 30, 'johndoe@example.com', 'password123'),
('123 Main SRt', 'John', 'wick', 'Male', 36, 'johnwick@example.com', 'password423'),
('123 Bazar SJYFt', 'John', 'D', 'Male', 32, 'johnd@example.com', 'password623'),
('193 Main STYt', 'John', 'son', 'Male', 34, 'johnson@example.com', 'password023'),
('12433 Main YIYSt', 'John', 'mickal', 'Male', 36, 'johnmickal@example.com', 'password423'),
('1323 Main SKJt', 'John', 'sir', 'Male', 39, 'johnsir@example.com', 'password323');

-- Insert a new admin
INSERT INTO Admin (address, fname, lname, gender, age, admin_email, admin_pass)
VALUES 
('789 Oak St', 'Admin', 'User', 'Male', 37, 'admin@example.com', 'adminpass123'),
('789 JHGJHG St', 'Admin', 'User', 'Male', 32, 'adminsdj@example.com', 'adminpass523'),
('789 MVM St', 'Admin', 'User', 'Male', 31, 'adminjsadf@example.com', 'adminpass623'),
('789 YRU St', 'Admin', 'User', 'Male', 39, 'adminamsjdfh@example.com', 'adminpass923'),
('789 UHV St', 'Admin', 'User', 'Male', 35, 'adminakjsfh@example.com', 'adminpass423');




-- Insert a new driver
INSERT INTO Driver (driving_license, driver_name, contact_no)
VALUES 
('DL123456', 'Driver One', 1234567890),
('PB123456', 'Driver two', 3876578348),
('CH123456', 'Driver three', 2873647856),
('MH123456', 'Driver four', 8928639657),
('TL123456', 'Driver five', 8263476847),
('HR123456', 'Driver six', 9263076847);


-- Insert a new car with a driver (driver_ID should exist in the Driver table)
INSERT INTO Cars (car_number, car_model, car_status, rent_price, driver_ID)
VALUES 
(1001, 'Toyota Camry', 'Available', 50, 1),
(1002, 'Maruti Camry', 'Available', 500, 2),
(1003, 'Swift Camry', 'Available', 150, 3),
(1004, 'Fortuner Camry', 'Available', 250, 4),
(1005, 'Verna Camry', 'Available', 550, 5),
(1006, 'Creata Camry', 'Available', 750, 6);

-- Insert a new rental record
INSERT INTO Rentals (rental_num, date_rent, time_depart, time_arrive, destination, date_return, payment)
VALUES 
(1001, '2023-10-23', '08:00:00', '17:00:00', 'Beach', '2023-10-25', 'Paid'),
(1002, '2023-11-23', '08:00:00', '17:00:00', 'Park', '2023-10-25', 'Paid'),
(1003, '2023-12-23', '08:00:00', '17:00:00', 'Bar', '2023-10-25', 'Paid'),
(1004, '2023-09-23', '08:00:00', '17:00:00', 'Club', '2023-10-25', 'Paid'),
(1005, '2023-08-23', '08:00:00', '17:00:00', 'Busstation', '2023-10-25', 'Paid');

-- Insert a new transaction record (rental_ID, car_ID, cust_ID, and admin_ID should exist in their respective tables)
INSERT INTO Transaction (trans_name, rental_ID, car_ID, cust_ID, admin_ID, trans_date)
VALUES
('Rental Transaction 1', 1, 1, 1, 1, '2023-10-23'),
('Rental Transaction 2', 2, 2, 2, 2, '2023-11-23'),
('Rental Transaction 3', 3, 3, 3, 3, '2023-12-23'),
('Rental Transaction 4', 4, 4, 4, 4, '2023-08-23'),
('Rental Transaction 5', 5, 5, 5, 5, '2023-09-23');

-- Insert a new report record (trans_ID and rental_ID should exist in their respective tables)
INSERT INTO Reports (trans_ID, rental_ID, report_date)
VALUES 
(1, 1, '2023-10-25'),
(2, 2, '2023-11-25'),
(3, 3, '2023-12-25'),
(4, 4, '2023-08-25'),
(5, 5, '2023-09-25');

-- Update the address of a customer with Cust_ID 1
UPDATE Customer
SET address = '789 New Address St'
WHERE Cust_ID = 1;


-- Delete related records in the Reports table before deleting records in the Transaction table
DELETE FROM Reports
WHERE trans_ID IN (SELECT trans_ID FROM Transaction WHERE cust_ID = 2);

-- Now, you can delete the records in the Transaction table
DELETE FROM Transaction
WHERE cust_ID = 2;

-- Afterward, you can delete the customer with Cust_ID 2
DELETE FROM Customer
WHERE Cust_ID = 2;



-- show tables;
-- select * from customer;
-- select * from Admin;
-- select * from Driver;
-- select * from Cars;
-- select * from Rentals;
-- select * from Transaction;
-- select * from Reports;





