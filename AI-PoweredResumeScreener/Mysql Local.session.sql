-- Create database
CREATE DATABASE IF NOT EXISTS resume_builder;

-- Switch to the database
USE resume_builder;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,       -- Unique ID for each user
    full_name VARCHAR(100) NOT NULL,         -- Full name from signup form
    email VARCHAR(150) NOT NULL UNIQUE,      -- User email (must be unique)
    password_hash VARCHAR(255) NOT NULL,     -- Hashed password
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert a sample user (password: password123, hashed with bcrypt/werkzeug)
INSERT IGNORE INTO users (full_name, email, password_hash)
VALUES 
('John Doe', 'john.doe@example.com', '$2b$12$.VyCAsAhVR7LxPpCRZ2dxOq5NTfLxxwdNEPZE.tY3NrkZszTzHNKC');

-- Check inserted users
SELECT * FROM users;
