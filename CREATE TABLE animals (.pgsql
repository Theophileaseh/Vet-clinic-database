DROP TABLE IF EXISTS animals; 
-- CREATE TABLE animals (
--     id int,
--     name varchar,
--     date_of_birth date,
--     escape_attempts int,
--     neutered boolean,
--     weight_kg decimal
-- )

-- INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES(1, 'Agumon', '02-03-2020', 0, True, 10.23);
-- INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES(2, 'Gabumon', '11-15-2018', 2, True, 8);
-- INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (3, 'Pikachu', '01-07-2021', 1, False, 15.04);
-- INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES(4, 'Devimon', '05-12-2017', 5, True, 11);

-- SELECT * from animals WHERE name LIKE '%mon'
-- SELECT * from animals WHERE date between 2016 and 2019
-- SELECT * from animals WHERE neutered = True AND escape_attempts < 3
-- SELECT date from animals WHERE name = 'Pikachu' OR name = 'Agumon'
-- SELECT (name, escape_attempts) from animals WHERE weight_kg > 10.5
-- SELECT * FROM animals WHERE neutered = True
-- SELECT * FROM animals WHERE name = 'Gabumon'
-- SELECT * FROM animals WHERE (weight_kg between 10.4 and 17.3) AND (weight_kg = 10.4 OR weight_kg = 17.3)
