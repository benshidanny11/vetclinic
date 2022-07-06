/* Database schema to keep the structure of entire database. */
CREATE DATABASE vet_clinic;

\c vet_clinic;

CREATE TABLE animals(id serial primary key,name text,date_of_birth date,escape_attempts integer,neutered boolean,weight_kg float);
