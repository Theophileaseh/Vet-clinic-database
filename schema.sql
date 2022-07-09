/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar,
    date_of_birth date,
    escape_attempts int,
    neutered boolean,
    weight_kg decimal
);

ALTER TABLE animals
  ADD species text;

CREATE TABLE owners (id int GENERATED ALWAYS AS IDENTITY, full_name text, age int, PRIMARY KEY(id));

CREATE TABLE species (id int GENERATED ALWAYS AS IDENTITY, name text, PRIMARY KEY(id));

ALTER TABLE animals ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE animals 
DROP COLUMN species;

ALTER TABLE animals
  ADD species_id int;

ALTER TABLE animals
ADD FOREIGN KEY (species_id) REFERENCES species (id);

ALTER TABLE animals
  ADD owner_id int;

ALTER TABLE animals
ADD FOREIGN KEY (owner_id) REFERENCES owners (id);