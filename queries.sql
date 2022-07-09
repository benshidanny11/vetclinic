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

 SELECT animals.* FROM animals INNER JOIN owners on animals.owner_id=owners.id WHERE owners.full_name='Melody Pond';


 SELECT animals.* FROM animals WHERE species_id=1;

  SELECT animals.* from owners LEFT JOIN animals ON animals.owner_id =owners.id;

  select species.name,count(*) from animals INNER JOIN species on species.id=animals.species_id GROUP BY species.name;

select * from animals where owner_id=2 and species_id=2;

 select * from animals where owner_id=5 and escape_attempts=0;

 select full_name,age,owner_id from owners LEFT JOIN animals ON owners.id=animals.owner_id group by full_name,age,owner_id order by count(*) desc limit 1;

SELECT animals.name,animals.date_of_birth,animals.weight_kg, max(visits.date_of_visit) AS visit_date from visits left join animals on animals.id=visits.animals_id where vets_id=1 group by animals.name,animals.date_of_birth,animals.weight_kg limit 1;

select count(*) from animals join visits on animals.id=visits.animals_id where visits.vets_id=2; 

select * from vets left join specializations on vets.id=specializations.vets_id left join species on species.id=specializations.species_id;

SELECT animals.* from animals inner join visits on animals.id=visits.animals_id where visits.date_of_visit between '2020-04-01' and '2020-08-30' and visits.vets_id=3;

 SELECT animals.name,animals.date_of_birth,animals.weight_kg,count(*) as visit_count from animals INNER JOIN visits ON animals.id=visits.animals_id group by animals.name,animals.date_of_birth,animals.weight_kg order by count(*) desc limit 1;

SELECT animals.name,animals.date_of_birth,animals.weight_kg, max(visits.date_of_visit) as visit_date from visits left join animals on animals.id=visits.animals_id where vets_id=4 group by animals.name,animals.date_of_birth,animals.weight_kg limit 1;

SELECT animals.name as animal_name,animals.date_of_birth as animal_dob,animals.weight_kg as animal_weight,vets.name as vetname,vets.age as vet_age,vets.date_of_graduation as vet_graduation_date, min(visits.date_of_visit) as visit_date from visits inner join animals on animals.id=visits.animals_id inner join vets on visits.vets_id=vets.id group by animals.name,animals.date_of_birth,animals.weight_kg,vets.name,vets.age,vets.date_of_graduation order by  max(visits.date_of_visit) asc limit 1;

SELECT count(*) from visits inner join vets on visits.vets_id=vets.id left join specializations on specializations.vets_id=vets.id where specializations.vets_id is null;

SELECT species.name from animals inner join visits on animals.id=visits.animals_id inner join vets on vets.id=visits.vets_id inner join species on animals.species_id=species.id where vets.id=2 group by species.name order by count(*) desc limit 1;



