                                -- > Database Creation
CREATE DATABASE itunes_analysis;
USE itunes_analysis;


                               -- > Create 'ARTIST' Table
CREATE TABLE artist (
    artist_id INT PRIMARY KEY,
    name VARCHAR(255)
);


							  -- > Create 'ALBUM' Table
CREATE TABLE album (
    album_id INT PRIMARY KEY,
    title VARCHAR(255),
    artist_id INT,
    FOREIGN KEY (artist_id)
    REFERENCES artist(artist_id)
);

							-- > Create 'EMPLOYEE' Table
DROP TABLE employee;
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    title VARCHAR(100),
    reports_to INT,
    levels VARCHAR(10),
    birthdate DATE,
    hire_date DATE,
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20),
    phone VARCHAR(30),
    fax VARCHAR(30),
    email VARCHAR(100),
	
    FOREIGN KEY (reports_to)
    REFERENCES employee(employee_id)
);

							-- > Create 'CUSTOMER' Table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    company VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(20),
    phone VARCHAR(50),
    fax VARCHAR(50),
    email VARCHAR(100),
    support_rep_id INT,

    FOREIGN KEY (support_rep_id)
    REFERENCES employee(employee_id)
);


                             -- > Create 'GENRE' Table
CREATE TABLE genre (
    genre_id INT PRIMARY KEY,
    name VARCHAR(100)
);


                         -- > Create 'MEDIA_TYPE' Table
CREATE TABLE media_type (
    media_type_id INT PRIMARY KEY,
    name VARCHAR(100)
);

					        -- > Create 'PLAYLIST' Table
CREATE TABLE playlist (
    playlist_id INT PRIMARY KEY,
    name VARCHAR(255)
);


                               -- > Create 'TRACK' Table
CREATE TABLE track (
    track_id INT PRIMARY KEY,
    name VARCHAR(255),
    album_id INT,
    media_type_id INT,
    genre_id INT,
    composer VARCHAR(255),
    milliseconds INT,
    bytes INT,
    unit_price DECIMAL(10,2),

    FOREIGN KEY (album_id)
    REFERENCES album(album_id),

    FOREIGN KEY (media_type_id)
    REFERENCES media_type(media_type_id),

    FOREIGN KEY (genre_id)
    REFERENCES genre(genre_id)
);


                               -- > Create 'INVOICE' Table
SET FOREIGN_KEY_CHECKS = 0;
Drop TABLE invoice;
CREATE TABLE invoice (
    invoice_id INT PRIMARY KEY,
    customer_id INT,
    invoice_date DATE,
    billing_address VARCHAR(255),
    billing_city VARCHAR(100),
    billing_state VARCHAR(100),
    billing_country VARCHAR(100),
    billing_postal_code VARCHAR(20),
    total DECIMAL(10,2),

    FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id)
);
SET FOREIGN_KEY_CHECKS = 1;


                            -- > Create INVOICE_LINE Table
CREATE TABLE invoice_line (
    invoice_line_id INT PRIMARY KEY,
    invoice_id INT,
    track_id INT,
    unit_price DECIMAL(10,2),
    quantity INT,

    FOREIGN KEY (invoice_id)
    REFERENCES invoice(invoice_id),

    FOREIGN KEY (track_id)
    REFERENCES track(track_id)
);

-- > Create PLAYLIST_TRACK table
CREATE TABLE playlist_track (
    playlist_id INT,
    track_id INT,

    PRIMARY KEY (playlist_id, track_id),

    FOREIGN KEY (playlist_id)
    REFERENCES playlist(playlist_id),

    FOREIGN KEY (track_id)
    REFERENCES track(track_id)
);





