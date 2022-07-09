/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (1, 'Agumon', '02-03-2020', 0, False, 11), 
(2, 'Gabumon', '11-15-2018', 2, True, 8), (3, 'Pikachu', '01-07-2021', 1, False, 15.04), (4, 'Devimon', '05-12-2017', 5, True, 11);


INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (5, 'Charmander', '02-08-2020', 0, True, 10.23), (6, 'Plantmon', '11-15-2021', 2, True, 5.7), (7, 'Squirtle', '04-02-1993', 3, False, 12.13), (8, 'Angemon', '06-12-2005', 1, True, 45), (9, 'Boarmon', '06-07-2005', 7, True, 20.4), (10, 'Blossom', '10-13-1998', 3, True, 17), (11, 'Ditto', '05-14-2022', 4, True, 22);

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34), ('Jennifer Orwell', 19), ('Bob', 45), ('Melody Pond', 77), ('Dean Winchester', 14), ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');

-- Insert data in vets table
INSERT INTO vets (name,age,date_of_graduation)
VALUES('William Tatcher', 45,'2000-04-23');

INSERT INTO vets (name,age,date_of_graduation)
VALUES('Maisy Smith', 26,'2019-01-17');

INSERT INTO vets (name,age,date_of_graduation)
VALUES('Stephanie Mendez', 45,'2000-04-23');

INSERT INTO vets (name,age,date_of_graduation)
VALUES('Jack Harkness', 38,'2008-06-08');

--Insert into specializations table

INSERT INTO specializations (vet_id,species_id)
VALUES(1,1);
INSERT INTO specializations (vet_id,species_id)
VALUES(3,1);
NSERT INTO specializations (vet_id,species_id)
VALUES(3,2);
INSERT INTO specializations (vet_id,species_id)
VALUES(4,2);

-- Insert into visits table
INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(1,1,'2020-05-24');  //agumon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(1,3,'2020-07-22');  //agumon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(2,4,'2021-02-02'); //Gabumon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(5,2,'2020-01-5');  //pikathu

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(5,2,'2020-03-08');  //pikathu

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(5,2,'2020-05-14');  //pikathu

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(3,3,'2020-05-04');  //Devimon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(8,4,'2021-02-24');  
-- //Charmander

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(10,2,'2019-12-21');  
-- //Plantmon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(10,1,'2020-08-10');  
-- //Plantmon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(10,2,'2021-04-07');  
-- //Plantmon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(19,2,'2019-09-29');  
-- //Squirtle

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(7,4,'2020-10-03');  
-- //Angemon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(7,4,'2020-11-04');  
-- //Angemon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(4,2,'2019-01-24');  
-- //Boarmon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(4,2,'2019-05-15');  
-- //Boarmon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(4,2,'2020-02-27');  
-- //Boarmon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(4,2,'2020-08-03');  
-- //Boarmon

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(6,3,'2020-05-24');  
-- //Blossom

INSERT INTO visits (animal_id, vet_id,date_of_visit)
VALUES(6,1,'2021-01-11');  
-- //Blossom


