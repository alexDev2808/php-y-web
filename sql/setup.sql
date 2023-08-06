CREATE DATABASE contacts_app;
USE contacts_app;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255)
);

INSERT INTO users (name, email, password) VALUES ("alexis", "test@test.com", "12345");

CREATE TABLE contacts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    phone_number VARCHAR(255),
    user_id INT NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- INSERT INTO contacts (user_id, name, phone_number) VALUES (5, "Tania", "2461403234");
