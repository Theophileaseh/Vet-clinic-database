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

-- Modify your inserted animals so it includes the species_id value:
    -- If the name ends in "mon" it will be Digimon
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';

-- If the name ends in "mon" it will be Pokemon
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

-- Modify your inserted animals to include owner information (owner_id)
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name='Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name='Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name='Squirtle' OR name='Blossom';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name=' Blossom';

-- What animals belong to Melody Pond?
SELECT * FROM owners 
JOIN animals ON animals.owner_id = owners.id 
WHERE owners.full_name = 'Melody Pond';

-- List of all animals that are pokemon (their type is Pokemon).
SELECT * FROM species 
JOIN animals ON animals.species_id = species.id
WHERE species.name ='Pokemon';


-- List all owners and their animals, remember to include those that don't own any animal.
SELECT * FROM owners 
LEFT JOIN animals ON animals.owner_id = owners.id; 
-- How many animals are there per species?
SELECT COUNT(*) FROM species
JOIN animals ON animals.species_id = species.id WHERE species.name='Pokemon'
JOIN animals ON animals.species_id = species.id WHERE species.name='Digmon';
-- List all Digimon owned by Jennifer Orwell.
SELECT * FROM owners 
JOIN animals ON animals.owner_id = owners.id
JOIN species ON species.id = animals.species_id
WHERE species.name ='Digmon' AND owners.full_name='Jenefer Orwell';
-- List all animals owned by Dean Winchester that haven't tried to escape.
SELECT * FROM owners 
JOIN animals ON animals.owner_id = owners.id 
WHERE owners.full_name = 'Dean Winchester' AND escape_attempts = 0;
-- Who owns the most animals?
SELECT owners.id,full_name, COUNT(*) FROM animals 
JOIN owners ON animals.owner_id = owners.id  
GROUP BY owners.id, owners.full_name 
ORDER BY count DESC LIMIT 1; 