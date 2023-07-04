INSERT INTO employees (first_name, last_name, birthdate, email)
VALUES (
        'julian',
        'rivera',
        '1993-03-04',
        'julian@gmail.com'
    );
INSERT INTO intranet_accounts (email, password) -- email must match to an inserted employee because of the foreign key constraint
VALUES ('julian@gmail.com', 'hi123');