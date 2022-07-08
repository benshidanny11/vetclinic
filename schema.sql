/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;

\c vet_clinic;

CREATE TABLE animals(id serial primary key,name text,date_of_birth date,escape_attempts integer,neutered boolean,weight_kg float);

ALTER TABLE animals ADD COLUMN species text;

CREATE TABLE owners(id serial PRIMARY KEY,full_name text,age integer);
CREATE TABLE species(id serial PRIMARY KEY,name text);

ALTER TABLE animals ADD COLUMN species_id integer;

ALTER TABLE animals ADD COLUMN owner_id integer;

ALTER TABLE animals ADD CONSTRAINT fk_animal_owner FOREIGN KEY (owner_id) REFERENCES owners(id);

ALTER TABLE animals ADD CONSTRAINT fk_animal_species FOREIGN KEY (species_id) REFERENCES species(id);
