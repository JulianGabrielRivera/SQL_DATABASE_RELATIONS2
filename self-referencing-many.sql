CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
);
CREATE TABLE users_friends (
    user_id INT REFERENCES users (id) ON DELETE CASCADE,
    friend_id INT REFERENCES users (id) ON DELETE CASCADE,
    -- smaller id always goes into user id and this helps the problem of having the same relationships in two different rows in the users friends table.
    CHECK (user_id < friend_id),
    -- composite key
    PRIMARY KEY (user._id, friend_id)
);