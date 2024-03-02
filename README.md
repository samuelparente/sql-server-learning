# SQL Server Database Operations

This repository contains a simple database schema and sample data for managing owners and their pets. It includes tables for `Owners` and `Pets`.

## Description

This SQL script demonstrates basic CRUD operations on the `Owners` and `Pets` tables.

## Tables

### Owners

- `id`: Unique identifier for each owner.
- `first_name`: First name of the owner.
- `last_name`: Last name of the owner.
- `address`: Address of the owner.
- `email`: Email address of the owner.
- `phone_number`: Phone number of the owner.

### Pets

- `id`: Unique identifier for each pet.
- `owner_id`: Foreign key referencing the `id` in the `Owners` table.
- `pet_name`: Name of the pet.
- `pet_type`: Type of pet (e.g., Dog, Cat).
- `pet_breed`: Breed of the pet.
- `age`: Age of the pet.

## Sample Data

### Owners

- John Doe (ID: 1)
- Jane Smith (ID: 2)
- Michael Johnson (ID: 3)

### Pets

- Max (Dog, Labrador Retriever) - Owner: John Doe
- Bella (Cat, Siamese) - Owner: John Doe
- Charlie (Dog, Golden Retriever) - Owner: Jane Smith
- Lucy (Dog, Poodle) - Owner: Michael Johnson
