-- Create Owners table
CREATE TABLE Owners (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

-- Create Pets table
CREATE TABLE Pets (
    id INT PRIMARY KEY,
    owner_id INT,
    pet_name VARCHAR(50),
    pet_type VARCHAR(50),
    pet_breed VARCHAR(50),
    age INT
);

-- Insert data into Owners table
INSERT INTO Owners (id, first_name, last_name, address, email, phone_number)
VALUES 
    (1, 'John', 'Doe', '123 Main St', 'john.doe@example.com', '555-1234'),
    (2, 'Jane', 'Smith', '456 Elm St', 'jane.smith@example.com', '555-5678'),
    (3, 'Michael', 'Johnson', '789 Oak St', 'michael.johnson@example.com', '555-9876');

-- Insert data into Pets table
INSERT INTO Pets (id, owner_id, pet_name, pet_type, pet_breed, age)
VALUES 
    (1, 1, 'Max', 'Dog', 'Labrador Retriever', 3),
    (2, 1, 'Bella', 'Cat', 'Siamese', 5),
    (3, 2, 'Charlie', 'Dog', 'Golden Retriever', 2),
    (4, 3, 'Lucy', 'Dog', 'Poodle', 4);

-- Select all rows from Owners table
SELECT * FROM Owners;

-- Select all rows from Pets table
SELECT * FROM Pets;

-- Select specific columns from Owners table
SELECT id, first_name, last_name FROM Owners;

-- Select specific columns and join with Pets table
SELECT o.first_name, o.last_name, p.pet_name, p.pet_type
FROM Owners o
JOIN Pets p ON o.id = p.owner_id;

-- Update an owner's phone number
UPDATE Owners
SET phone_number = '555-4321'
WHERE id = 1;

-- Update a pet's age
UPDATE Pets
SET age = 4
WHERE id = 1;

-- Delete an owner and their associated pets
DELETE FROM Owners
WHERE id = 1;

-- Delete a pet
DELETE FROM Pets
WHERE id = 1;
