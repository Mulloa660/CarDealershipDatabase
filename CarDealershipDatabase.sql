-- Deletion of database
DROP DATABASE IF EXISTS cardealership;
-- ==================================================================================================
-- Creation of database
CREATE DATABASE cardealership;
-- ==================================================================================================
-- Dealerships
CREATE TABLE dealerships (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);
 -- ================================================================================================
 -- Vehicles
 CREATE TABLE vehicles (
    vin INT PRIMARY KEY NOT NULL,
    sold BOOLEAN NOT NULL
);
 -- =================================================================================================
 -- Inventory
 CREATE TABLE inventory (
    dealership_id INT,
    vehicle_vin INT NOT NULL,
    year VARCHAR(4),
    make_model VARCHAR(50),
    vehicle_type VARCHAR(50),
    color VARCHAR(50),
    odometer VARCHAR(50),
    FOREIGN KEY (dealership_id)
        REFERENCES dealerships (id),
    FOREIGN KEY (vehicle_vin)
        REFERENCES vehicles (vin)
);
 -- ================================================================================================= 

-- 0- drop db if exist :)
-- 1- create db :)
-- 2- create tables 
-- 3- insert data inside of table
-- 0 false
-- 1 true