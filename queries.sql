/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon'
SELECT name from animals WHERE (SELECT EXTRACT(YEAR FROM date_of_birth) AS year) BETWEEN '2016' AND '2019'
SELECT * from animals WHERE neutered = True AND escape_attempts < 3
SELECT date_of_birth from animals WHERE name = 'Pikachu' OR name = 'Agumon'
SELECT (name, escape_attempts) from animals WHERE weight_kg > 10.5
SELECT * FROM animals WHERE neutered = True
SELECT * FROM animals WHERE name = 'Gabumon'
SELECT * FROM animals WHERE (weight_kg between 10.4 AND 17.3) OR (weight_kg = 10.4 OR weight_kg = 17.3)

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT * from animals WHERE escape_attempts = (SELECT MAX(escape_attempts) FROM animals);

SELECT MAX(weight_kg), MIN(weight_kg), species from animals WHERE species = 'pokemon' OR species = 'digimon' GROUP BY species;

SELECT AVG(escape_attempts), species FROM animals WHERE (SELECT EXTRACT(YEAR FROM date_of_birth) AS year) BETWEEN '1990' AND '2000' GROUP BY species;

BEGIN;
UPDATE animals SET species = 'unspecified';

UPDATE animals SET species = '';
COMMIT;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';

UPDATE animals SET species = 'pokemon' WHERE species = '';
COMMIT;

BEGIN;
DELETE FROM animals;
COMMIT;

BEGIN;
DELETE * from animals WHERE date_of_birth > '01-01-2022';

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;