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

COMMIT;

BEGIN; DELETE from animals;

ROLLBACK;

 BEGIN; DELETE from animals WHERE date_of_birth > '2022-01-01';

SAVEPOINT sp_1;



ROLLBACK TO sp_1;

 SELECT count(*) FROM animals;

SELECT count(*) FROM animals WHERE escape_attempts=0;

SELECT AVG(weight_kg) FROM animals;
SELECT MAX(escape_attempts) FROM animals WHERE neutered=true OR neutered=false;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals  GROUP BY species;

SELECT species, AVG(escape_attempts) FROM animals WHERE  date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species; 

 SELECT name,date_of_birth,escape_attempts,neutered,weight_kg,species_id,owner_id FROM animals INNER JOIN owners on animals.owner_id=owners.id WHERE owners.full_name='Melody Pond';


 SELECT name,date_of_birth,escape_attempts,neutered,weight_kg FROM animals WHERE species_id=1;

  SELECT name,date_of_birth,escape_attempts,neutered,weight_kg,owners.full_name,age from owners LEFT JOIN animals ON animals.owner_id =owners.id;

  select species.name,count(*) from animals INNER JOIN species on species.id=animals.species_id GROUP BY species.name;

select * from animals where owner_id=2 and species_id=2;

 select * from animals where owner_id=5 and escape_attempts=0;

 select full_name,age,owner_id from owners LEFT JOIN animals ON owners.id=animals.owner_id group by full_name,age,owner_id order by count(*) desc limit 1;










