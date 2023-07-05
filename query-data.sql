-- SELECT e.id AS employee_id,
--     -- specify which fields we want
--     e.first_name,
--     e.last_name,
--     p.project_name
-- FROM employees AS e -- to get all employees, even if employees are not part of project
--     INNER JOIN projects_employees as pe ON pe.employee_id = e.id
--     INNER JOIN projects as p ON pe.project_id = p.id;
----
-- SELECT e.id AS employee_id,
-- -- specify which fields we want
--     e.first_name,
--     e.last_name,
--     p.project_name
-- FROM employees AS e -- to get all employees, even if employees are not part of project
--     LEFT JOIN projects_employees as pe ON pe.employee_id = e.id
--     LEFT JOIN projects as p ON pe.project_id = p.id;
-- ----
-- SELECT *
-- FROM teams;
-- SELECT e.id as employee_id,
--     e.first_name,
--     e.last_name,
--     t.team_name
-- FROM employees AS e -- all employee data, even if they are not part of team, use LEFT join
--     -- LEFT JOIN
--     INNER JOIN teams AS t ON e.team_id = t.id
-- WHERE t.id = 2;
---
SELECT e.id AS employee_id,
    e.first_name,
    e.last_name,
    -- for b.name we will be giving an alias of b later so that we can access this building name
    b.building_name
FROM employees AS e -- if no direction relation between employee and buildings then we have to use multiple joins to get overall relation.
    INNER JOIN teams AS t ON e.team_id = t.id
    INNER JOIN buildings AS b ON t.building_id = b.id
WHERE b.id = 3
ORDER BY e.birthdate;