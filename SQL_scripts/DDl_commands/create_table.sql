-- CREATE DATABASE car__rental__management__system_ddl__command;
-- use car__rental__management__system_ddl__command;

-- Create the Customer table if it does not exist
CREATE TABLE IF NOT EXISTS Customer (
  Cust_ID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (Cust_ID),
  address VARCHAR(255),
  fname VARCHAR(255),
  lname VARCHAR(255),
  gender VARCHAR(255),
  age INT,
  cust_email VARCHAR(255) unique,
  cust_pass VARCHAR(255)
);

-- Create the Admin table if it does not exist
CREATE TABLE IF NOT EXISTS Admin (
  admin_ID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (admin_ID),
  address VARCHAR(255),
  fname VARCHAR(255),
  lname VARCHAR(255),
  gender VARCHAR(255),
  age INT,
  admin_email VARCHAR(255) unique,
  admin_pass VARCHAR(255)
);

-- Create the Driver table if it does not exist
CREATE TABLE IF NOT EXISTS Driver (
  driver_ID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (driver_ID),
  driving_license VARCHAR(255),
  driver_name VARCHAR(255),
  contact_no DECIMAL(12, 10)
);

-- Create the Cars table if it does not exist
CREATE TABLE IF NOT EXISTS Cars (
  car_ID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (car_ID),
  car_number INT,
  car_model VARCHAR(30),
  car_status VARCHAR(30),
  rent_price INT,
  driver_ID INT,
  FOREIGN KEY (driver_ID) REFERENCES Driver(driver_ID)
);

-- Create the Rentals table if it does not exist
CREATE TABLE IF NOT EXISTS Rentals (
  rental_ID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (rental_ID),
  rental_num INT,
  date_rent DATE,
  time_depart TIME,
  time_arrive TIME,
  destination VARCHAR(30),
  date_return DATE,
  payment VARCHAR(30)
);

-- Create the Transaction table if it does not exist
CREATE TABLE IF NOT EXISTS Transaction (
  trans_ID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (trans_ID),
  trans_name VARCHAR(30),
  rental_ID INT,
  car_ID INT,
  cust_ID INT,
  admin_ID INT,
  trans_date DATE,
  FOREIGN KEY (rental_ID) REFERENCES Rentals(rental_ID),
  FOREIGN KEY (car_ID) REFERENCES Cars(car_ID),
  FOREIGN KEY (cust_ID) REFERENCES Customer(Cust_ID),
  FOREIGN KEY (admin_ID) REFERENCES Admin(admin_ID)
);



-- Create the Reports table if it does not exist
CREATE TABLE IF NOT EXISTS Reports (
  report_ID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (report_ID),
  trans_ID INT,
  rental_ID INT,
  report_date DATE,
  FOREIGN KEY (trans_ID) REFERENCES Transaction(trans_ID),
  FOREIGN KEY (rental_ID) REFERENCES Rentals(rental_ID)
);

show tables;
select * from customer;
select * from Admin;
select * from Driver;
select * from Cars;
select * from Rentals;
select * from Transaction;
select * from Reports;



