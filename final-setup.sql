CREATE TABLE projects (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    project_name VARCHAR(250) NOT NULL,
    deadline DATE,
    employees
) CREATE TABLE buildings (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    building_name VARCHAR(250) NOT NULL
);
CREATE TABLE teams (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    team_name VARCHAR(250) NOT NULL,
    -- makes sure that building id is set to null if related building is deleted so that temporarily the team has no building until assigned a new one.
    building_id INT REFERENCES buildings (id) ON DELETE
    SET NULL
);
CREATE TABLE employees (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(250) UNIQUE NOT NULL,
    -- email VARCHAR(250) REFERENCES intranet_accounts (email) ON DELETE RESTRICT
    team_id INT DEFAULT 1 REFERENCES teams (id) ON DELETE
    SET DEFAULT
);
CREATE TABLE intranet_accounts (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    -- this is a relation without using the primary key
    email VARCHAR(250) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(250) NOT NULL
) -- Intermediate tables for many to many
CREATE TABLE projects_employees (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees (id) ON DELETE CASCADE,
    -- whenever a project is deleted, also remove entries from this intermediate table
    project_id INT REFERENCES projects (id) ON DELETE CASCADE,
)