-- Create roles
CREATE ROLE AdminRole;
-- Grant necessary permissions to roles
GRANT ALL PRIVILEGES ON car_rental_management_system_dml_.* TO AdminRole;

CREATE ROLE CustomerRole;
-- Grant necessary permissions to roles
GRANT SELECT, INSERT, UPDATE, DELETE ON car_rental_management_system_dml_.Transaction TO CustomerRole;

CREATE ROLE DriverRole;
-- Grant necessary permissions to roles
GRANT SELECT, INSERT, UPDATE, DELETE ON car_rental_management_system_dml_.Cars TO DriverRole;

-- Revoke unnecessary permissions
-- Revoke DELETE permission from DriverRole on Cars
REVOKE DELETE ON car_rental_management_system_dml_.Cars FROM DriverRole;

-- Revoke DELETE permission from CustomerRole on Transaction
REVOKE DELETE ON car_rental_management_system_dml_.Transaction FROM CustomerRole;



DROP ROLE AdminRole;
DROP ROLE CustomerRole;
DROP ROLE DriverRole;