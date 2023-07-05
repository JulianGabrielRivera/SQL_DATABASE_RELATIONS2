-- INSERT INTO users (first_name, last_name)
-- VALUES ('julian', 'rivera'),
--     ('j', 'rivera'),
--     ('g', 'rivera');
INSERT INTO users_friends (user_id, friend_id) -- 2,1 would not work here because of the constraint we added.
VALUES (1, 2),
    (2, 3);