CREATE TABLE employees (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(250) UNIQUE NOT NULL -- email VARCHAR(250) REFERENCES intranet_accounts (email) ON DELETE RESTRICT
);
CREATE TABLE intranet_accounts (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    -- this is a relation without using the primary key
    email VARCHAR(250) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(250) NOT NULL
) -- ) CREATE TABLE teams (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY
--     team_name VARCHAR(250) NOT NULL,
--     building INT
-- ) CREATE TABLE projects (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY
--     project_name VARCHAR(250) NOT NULL,
--     deadline DATE,
--     employees
-- ) CREATE TABLE buildings (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     building_name VARCHAR(250) NOT NULL
-- )