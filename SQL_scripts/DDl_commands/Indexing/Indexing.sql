-- Example: Creating an index on the 'cust_email' column in the 'Customer' table
CREATE INDEX idx_cust_email ON car_rental_management_system_dml_.Customer (cust_email);
CREATE INDEX idx_date_rent ON car_rental_management_system_dml_.Rentals (date_rent);
CREATE INDEX idx_date_return ON car_rental_management_system_dml_.Rentals (date_return);
CREATE INDEX idx_car_model ON car_rental_management_system_dml_.Cars (car_model);
CREATE INDEX idx_car_status ON car_rental_management_system_dml_.Cars (car_status);


-- Example: Optimize a query by using appropriate JOIN and selecting only necessary columns
SELECT t.trans_name, c.fname, c.lname, r.destination
FROM car_rental_management_system_dml_.Transaction t
JOIN car_rental_management_system_dml_.Customer c ON t.cust_ID = c.Cust_ID
JOIN car_rental_management_system_dml_.Rentals r ON t.rental_ID = r.rental_ID
WHERE t.trans_date >= '2023-01-01';

SELECT *
FROM car_rental_management_system_dml_.Rentals
WHERE date_rent >= '2023-01-01' AND date_return <= '2023-01-15';

SELECT *
FROM car_rental_management_system_dml_.Cars
WHERE car_model = 'Toyota Camry' AND car_status = 'Available';