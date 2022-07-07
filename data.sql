/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (1, 'Agumon', '02-03-2020', 0, False, 11), 
(2, 'Gabumon', '11-15-2018', 2, True, 8), (3, 'Pikachu', '01-07-2021', 1, False, 15.04), (4, 'Devimon', '05-12-2017', 5, True, 11);


INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (5, 'Charmander', '02-08-2020', 0, True, 10.23), (6, 'Plantmon', '11-15-2021', 2, True, 5.7), (7, 'Squirtle', '04-02-1993', 3, False, 12.13), (8, 'Angemon', '06-12-2005', 1, True, 45), (9, 'Boarmon', '06-07-2005', 7, True, 20.4), (10, 'Blossom', '10-13-1998', 3, True, 17), (11, 'Ditto', '05-14-2022', 4, True, 22);

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34), ('Jennifer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');