-- SQL script to modify the existing users table by adding the country column
ALTER TABLE users
ADD COLUMN country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US';

