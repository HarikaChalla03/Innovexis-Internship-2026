USE itunes_analysis;
-------- > Loading Datasets into Tables

-- > 1. Loaded "ARTIST" data through "Table Data Import Wizard" in itunes_analysis database, ARTIST Table

-- > 2. Loading album data into "ALBUM" Table in itunes_analysis database
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/album.csv'
INTO TABLE album
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(album_id, title, artist_id);


-- > 3. Loading genre data into "GENRE" Table in itunes_analysis database
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/genre.csv'
INTO TABLE genre
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(genre_id, name);


-- > 4. Loading media_type data into "MEDIA_TYPE" Table in itunes_analysis database
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/media_type.csv'
INTO TABLE media_type
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(media_type_id, name);


-- > 5. Loading employee data into "EMPLOYEE" Table in itunes_analysis database
SET FOREIGN_KEY_CHECKS = 0;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/employee.csv'
INTO TABLE employee
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(employee_id, last_name, first_name, title,
 @reports_to,
 levels,
 @birthdate,
 @hire_date,
 address, city, state, country,
 postal_code, phone, fax, email)
SET reports_to = NULLIF(@reports_to, ''),
    birthdate = STR_TO_DATE(@birthdate, '%d-%m-%Y %H:%i'),
    hire_date = STR_TO_DATE(@hire_date, '%d-%m-%Y %H:%i');
SET FOREIGN_KEY_CHECKS = 1;

-- > Employee Table consists "Null" value in "reports_to" column
-- > Checking Null values in reports_to column
SELECT employee_id, reports_to
FROM employee;
-- > Replacing Null Values to Zero
SET FOREIGN_KEY_CHECKS = 0;
UPDATE employee
SET reports_to = 0
WHERE reports_to IS NULL;
SET FOREIGN_KEY_CHECKS = 1;


-- > 6. Loading customer data into "CUSTOMER" Table in itunes_analysis database
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer.csv'
INTO TABLE customer
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
customer_id,
first_name,
last_name,
company,
address,
city,
state,
country,
postal_code,
phone,
fax,
email,
support_rep_id
);

-- > Customer column consists of "Blank Values" or "Empty Strings" in COMPANY & STATE Columns and "Null" Values in FAX Column
-- > replacing empty spaces with Null values for Customer Table
SET FOREIGN_KEY_CHECKS = 0;
UPDATE customer
SET
    company = NULLIF(company, ''),
    state = NULLIF(state, ''),
    postal_code = NULLIF(postal_code, ''),
    phone = NULLIF(phone, ''),
    fax = NULLIF(fax, '');
    
-- > replacing Null values for Customer Table
UPDATE customer
SET
    company = COALESCE(company, 'Unknown Company'),
    state = COALESCE(state, 'Unknown State'),
    postal_code = COALESCE(postal_code, '000000'),
    phone = COALESCE(phone, 'Not Available'),
    fax = COALESCE(fax, 'Not Available');
SET FOREIGN_KEY_CHECKS = 1;

-- > 6. Loading Invoice data into "INVOICE" Table in itunes_analysis database
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/invoice.csv'
INTO TABLE invoice
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    invoice_id,
    customer_id,
    @invoice_date,
    billing_address,
    billing_city,
    billing_state,
    billing_country,
    billing_postal_code,
    total
)
SET invoice_date = STR_TO_DATE(@invoice_date, '%d-%m-%Y %H:%i');


-- > Checking Null Values for invoice table
SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN invoice_id IS NULL THEN 1 ELSE 0 END) AS invoice_id_nulls,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS customer_id_nulls,
    SUM(CASE WHEN invoice_date IS NULL THEN 1 ELSE 0 END) AS invoice_date_nulls,
    SUM(CASE WHEN billing_address IS NULL THEN 1 ELSE 0 END) AS billing_address_nulls,
    SUM(CASE WHEN billing_city IS NULL THEN 1 ELSE 0 END) AS billing_city_nulls,
    SUM(CASE WHEN billing_state IS NULL THEN 1 ELSE 0 END) AS billing_state_nulls,
    SUM(CASE WHEN billing_country IS NULL THEN 1 ELSE 0 END) AS billing_country_nulls,
    SUM(CASE WHEN billing_postal_code IS NULL THEN 1 ELSE 0 END) AS billing_postal_code_nulls,
    SUM(CASE WHEN total IS NULL THEN 1 ELSE 0 END) AS total_nulls
FROM invoice;

-- > Checking Empty Strings for Invoice Table

SELECT
    SUM(CASE WHEN billing_state IS NULL OR billing_state = '' THEN 1 ELSE 0 END) AS billing_state_missing,
    SUM(CASE WHEN billing_postal_code IS NULL OR billing_postal_code = '' THEN 1 ELSE 0 END) AS billing_postal_code_missing
FROM invoice;

-- > Checking duplicate values for invoice data
SELECT
    invoice_id,
    customer_id,
    invoice_date,
    billing_address,
    billing_city,
    billing_state,
    billing_country,
    billing_postal_code,
    total,
    COUNT(*) AS duplicate_count
FROM invoice
GROUP BY
    invoice_id,
    customer_id,
    invoice_date,
    billing_address,
    billing_city,
    billing_state,
    billing_country,
    billing_postal_code,
    total
HAVING COUNT(*) > 1;

-- >Checking invalid dates for Invoice table
SELECT *
FROM invoice
WHERE STR_TO_DATE(invoice_date, '%d-%m-%Y %H:%i') IS NULL;

-- > Check Outliers in total 
-- Very High or Negative Invoice Totals
SELECT *
FROM invoice
WHERE total < 0
   OR total > 15;

-- > 7. Loading track data into "TRACK" Table in itunes_analysis database
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/track.csv'
INTO TABLE track
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
track_id,
name,
album_id,
media_type_id,
genre_id,
composer,
milliseconds,
bytes,
unit_price
);

-- > replacing empty strings as null for track table
SET FOREIGN_KEY_CHECKS = 0;
UPDATE track
SET
    composer = NULLIF(composer, '');
    
    
-- > replacing null values to Unknown for track table
UPDATE track
SET
    composer = COALESCE(composer, 'Unknown composer');
SET FOREIGN_KEY_CHECKS = 1;


-- > 8. Loading invoice_line data into "INVOICE_LINE" Table in itunes_analysis database
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/invoice_line.csv'
INTO TABLE invoice_line
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    invoice_line_id,
    invoice_id,
    track_id,
    unit_price,
    quantity
);

-- > checking Null values for all columns for Invoice_line table
SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN invoice_line_id IS NULL THEN 1 ELSE 0 END) AS invoice_line_id_nulls,
	SUM(CASE WHEN invoice_id IS NULL THEN 1 ELSE 0 END) AS invoice_id_nulls,
    SUM(CASE WHEN track_id IS NULL THEN 1 ELSE 0 END) AS track_id_nulls,
    SUM(CASE WHEN unit_price IS NULL THEN 1 ELSE 0 END) AS unit_price_nulls,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS quantity_nulls
FROM invoice_line;

-- > Check Duplicate Primary Keys for all columns for invoice_Line table
SELECT
    invoice_line_id,
    COUNT(*) AS duplicate_count
FROM invoice_line
GROUP BY invoice_line_id
HAVING COUNT(*) > 1;

-- > Check full duplicate Rows 
SELECT
    invoice_line_id,
    invoice_id,
    track_id,
    unit_price,
    quantity,
    COUNT(*) AS duplicate_count
FROM invoice_line
GROUP BY
    invoice_line_id,
    invoice_id,
    track_id,
    unit_price,
    quantity
HAVING COUNT(*) > 1;
    
-- > Check Negative Values
SELECT *
FROM invoice_line
WHERE unit_price < 0
   OR quantity < 0;
   
-- > Check Outliers
-- Very High Prices or Quantities
SELECT *
FROM invoice_line
WHERE unit_price > 1
   OR quantity > 1;
   
-- > 9. Loading playlist data into "PLAYLIST" Table in itunes_analysis database
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/playlist.csv'
INTO TABLE playlist
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    playlist_id,
    name
);
    
    
-- > 9. Loading playlist_track data into "PLAYLIST_TRACK" Table in itunes_analysis database
SET FOREIGN_KEY_CHECKS = 0;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/playlist_track.csv'
INTO TABLE playlist_track
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    playlist_id,
    track_id
);
SET FOREIGN_KEY_CHECKS = 1;

SELECT COUNT(*) FROM artist;
SELECT COUNT(*) FROM album;
SELECT COUNT(*) FROM customer;
SELECT COUNT(*) FROM employee;
SELECT COUNT(*) FROM genre;
SELECT COUNT(*) FROM invoice;
SELECT COUNT(*) FROM invoice_line;
SELECT COUNT(*) FROM media_type;
SELECT COUNT(*) FROM playlist;
SELECT COUNT(*) FROM playlist_track;
SELECT COUNT(*) FROM track;
