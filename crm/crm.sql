-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES

DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS contact_log;
DROP TABLE IF EXISTS company;

CREATE TABLE customer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT, 
    email TEXT, 
    phone_number TEXT, 
    company TEXT, 
    title TEXT
);

CREATE TABLE salespeople (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT, 
    last_name TEXT, 
    email TEXT
);

CREATE TABLE contact_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    salespeople_id INTEGER,
    customer_id INTEGER,
    date TEXT, 
    contact_type TEXT,
    notes TEXT
); 

CREATE TABLE company (
    company_id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT
);