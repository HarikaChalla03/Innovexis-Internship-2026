Use Local_Food_Wastage_Management_System;
-- Creating providers table
CREATE TABLE providers(
    Provider_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Type VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    Contact INT
);

-- Creating receivers table
CREATE TABLE receivers (
    Receiver_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Type VARCHAR(100),
    City VARCHAR(100),
    Contact INT
);

-- Creating food_listings table
CREATE TABLE food_listings (
    Food_ID INT PRIMARY KEY,
    Food_Name VARCHAR(255),
    Quantity INT,
    Expiry_Date DATE,
    Provider_ID INT,
    Provider_Type VARCHAR(100),
    Location VARCHAR(100),
    Food_Type VARCHAR(100),
    Meal_Type VARCHAR(100),
    
    FOREIGN KEY (Provider_ID) REFERENCES providers(Provider_ID)
);

-- Creating Claims table 
CREATE TABLE claims (
    Claim_ID INT PRIMARY KEY,
    Food_ID INT,
    Receiver_ID INT,
    Status VARCHAR(50),
    Timestamp DATETIME,
    
    FOREIGN KEY (Food_ID) REFERENCES food_listings(Food_ID),
    FOREIGN KEY (Receiver_ID) REFERENCES receivers(Receiver_ID)
);


-- LOAD DATA INFILE 'C:/Users/Harika challa/Innovexis/Project-2/clean_providers.csv'
-- INTO TABLE providers
-- FIELDS TERMINATED BY ','
-- IGNORE 1 ROWS;

SHOW VARIABLES LIKE 'secure_file_priv';

-- LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_providers.csv'
-- INTO TABLE providers
-- FIELDS TERMINATED BY ','
-- IGNORE 1 ROWS;

ALTER TABLE providers 
MODIFY Contact VARCHAR(15);

ALTER TABLE receivers 
MODIFY Contact VARCHAR(15);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_providers.csv'
INTO TABLE providers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Provider_ID, Name, Type, Address, City, Contact);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_receivers.csv'
INTO TABLE receivers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Receiver_ID, Name, Type, City, Contact);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_food.csv'
INTO TABLE food_listings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Food_ID, Food_Name, Quantity, Expiry_Date, Provider_ID, Provider_Type, Location, Food_Type, Meal_Type);

-- TRUNCATE TABLE claims;
-- SHOW WARNINGS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/clean_claims.csv'
INTO TABLE claims
FIELDS TERMINATED BY ','
IGNORE 1 ROWS
(Claim_ID, Food_ID, Receiver_ID, Status, Timestamp);

-- ALTER USER 'root'@'localhost'
-- IDENTIFIED WITH mysql_native_password BY 'your_password';
-- FLUSH PRIVILEGES;

-- SHOW VARIABLES LIKE 'authentication_policy';

-- CREATE USER 'data_user'@'localhost'
-- IDENTIFIED WITH mysql_native_password BY 'password123';

-- GRANT ALL PRIVILEGES ON *.* TO 'data_user'@'localhost';
-- FLUSH PRIVILEGES;

-- 
