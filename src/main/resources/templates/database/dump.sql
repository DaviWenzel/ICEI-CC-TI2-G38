CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(40) NOT NULL,
    password VARCHAR(20) NOT NULL,
    ENUM('Admin', 'User')
);

CREATE TABLE drawings (
    id SERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    image_data BYTEA NOT NULL,         -- Store image data as a byte array
    evaluation_score DECIMAL(5, 2) NOT NULL,
    upload_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);