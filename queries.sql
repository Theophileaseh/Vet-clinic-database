/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon'
SELECT name from animals WHERE (SELECT EXTRACT(YEAR FROM date_of_birth) AS year) BETWEEN '2016' AND '2019'
SELECT * from animals WHERE neutered = True AND escape_attempts < 3
SELECT date_of_birth from animals WHERE name = 'Pikachu' OR name = 'Agumon'
SELECT (name, escape_attempts) from animals WHERE weight_kg > 10.5
SELECT * FROM animals WHERE neutered = True
SELECT * FROM animals WHERE name = 'Gabumon'
SELECT * FROM animals WHERE (weight_kg between 10.4 AND 17.3) OR (weight_kg = 10.4 OR weight_kg = 17.3)