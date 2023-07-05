CREATE TABLE projects_employees (
    employee_id INT REFERENCES employees ON DELETE CASCADE,
    -- employee_id INT,
    project_id INT REFERENCES projects ON DELETE CASCADE,
    PRIMARY KEY (employee_id, project_id),
    -- this is how we set up a foreign key as a table constraint instead of a column constraint if you have a single column related to another single column. the employee_id INT up top would also be commented in.
    -- FOREIGN KEY employee_id REFERENCES employees ON DELETE CASCADE
)