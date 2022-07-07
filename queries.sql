/*Queries that provide answers to the questions from all projects.*/
SELECT * FROM animals WHERE name LIKE '%mon';


SELECT * FROM animals WHERE date_of_birth between '2016-01-01' ADD '2019-12-31';

SELECT * FROM animals WHERE neutered=true AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name='Agumon' OR name='Pikachu';

 SELECT * FROM animals WHERE neutered=true;


SELECT * FROM animals WHERE name <> 'Gabumon';

BEGIN; 
update animals set species='unspecified';

ROLLBACK;

UPDATE animals SET species='digimon' WHERE name like '%mon';

UPDATE animals SET species='pokemon' WHERE species='';

COMMIT;

BEGIN; DELETE from animals;

ROLLBACK;

 BEGIN; DELETE from animals WHERE date_of_birth > '2022-01-01';

SAVEPOINT sp_1;

UPDATE animals SET weight_kg=weight_kg*-1;

ROLLBACK TO sp_1;


 UPDATE animals SET weight_kg=weight_kg*-1 where weight_kg<0;

 SELECT count(*) FROM animals;

SELECT count(*) FROM animals WHERE escape_attempts=0;

SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals WHERE neutered=true OR neutered=false;
SELECT MAX(weight_kg),MIN(weight_kg) FROM animals WHERE species='digimon';









