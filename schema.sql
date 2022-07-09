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

CREATE TABLE vets(id serial PRIMARY KEY,name TEXT, age INTEGER, date_of_graduation DATE);

CREATE TABLE specializations(species_id INTEGER, vets_id INTEGER, CONSTRAINT FK_species FOREIGN KEY (species_id) REFERENCES species (id), CONSTRAINT FK_vets FOREIGN KEY (vets_id) REFERENCES vets (id) );

CREATE TABLE visits(animals_id INTEGER, vets_id INTEGER, CONSTRAINT FK_animals FOREIGN KEY (animals_id) REFERENCES animals (id), CONSTRAINT FK_vets FOREIGN KEY (vets_id) REFERENCES vets (id) );

ALTER TABLE visits ADD COLUMN date_of_visit DATE;


