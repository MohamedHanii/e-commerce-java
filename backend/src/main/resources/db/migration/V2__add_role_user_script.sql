-- Create the Role table
CREATE TABLE Role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    roleName VARCHAR(255) NOT NULL
);

-- Create the User table
CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES Role(id)
);

-- Seed the Role table with roles
INSERT INTO Role (roleName) VALUES ('user');
INSERT INTO Role (roleName) VALUES ('admin');
INSERT INTO Role (roleName) VALUES ('super admin');