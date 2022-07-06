/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animals WHERE name LIKE '%mon';


SELECT * FROM animals WHERE date_of_birth between '2016-01-01' ADD '2019-12-31';

SELECT * FROM animals WHERE neutered=true AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu';

 SELECT * FROM animals WHERE neutered=true;


SELECT * FROM animals WHERE name <> 'Gabumon';


