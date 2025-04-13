-- create the database
CREATE DATABASE IF NOT EXISTS bookstoredb;

USE bookstoredb;

-- create the table for book_language
CREATE TABLE book_language (
    language_id INT PRIMARY KEY,
    language_name VARCHAR(100) NOT NULL UNIQUE
);

-- create the table for publisher
CREATE TABLE publisher (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- create the tables
-- create the table for book
CREATE TABLE book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(20) UNIQUE,
    title VARCHAR(255) NOT NULL,
    publish_year YEAR,
    price DECIMAL(10, 2),
    quantity INT DEFAULT 0,
    language_id INT,
    publisher_id INT,
    FOREIGN KEY (language_id) REFERENCES book_language(language_id),
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id)
);

-- create the table for author
CREATE TABLE author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    bio TEXT
);

-- create the table for book_author
CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id) ON DELETE CASCADE,
    FOREIGN KEY (author_id) REFERENCES author(author_id) ON DELETE CASCADE
);

-- query 6 - 10
--customer: a list of the bookstore customers
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    address TEXT
);

--customer_address: a list of address for customers. each customer can have multiple addresses
CREATE TABLE customer_address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    address TEXT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

--address_status: a list of statuses for an address(e.g. current, previous, etc.)
CREATE TABLE address_status (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(100) NOT NULL UNIQUE
);

--address: a list of all addresses in the system.
CREATE TABLE address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    address TEXT NOT NULL,
    status_id INT,
    FOREIGN KEY (status_id) REFERENCES address_status(status_id) ON DELETE SET NULL
);

--country:a list of countries where addresses are located
CREATE TABLE country (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL UNIQUE
);
