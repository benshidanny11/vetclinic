/* Populate database with sample data. */

INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg)
values('Agumon','2020-02-03',0,true,10.23),
('Gabumon','2018-11-15',3,true,8),
('Pikachu','2021-01-07',1,false,15.04),
('Devimon','2017-05-12',5,true,11);

 INSERT INTO animals(name,date_of_birth,escape_attempts,neutered,weight_kg) 
 VALUES('Charmander','2020-02-08',0,false,-11),
 ('Plantmon','2021-11-15',2,true,-5.7),
 ('Squirtle','1993-04-02',3,false,-12.13),
 ('Angemon','2005-06-12',1,true,-45),
 ('Boarmon','2005-06-07',7,true,20.4),
 ('Blossom','1998-10-13',3,true,17),
 ('Ditto','2022-05-14',4,true,22);

  INSERT INTO owners VALUES('Sam Smith',34),
  ('Jennifer Orwell',19),
  ('Bob',45),
  ('Melody Pond',77),
  ('Dean Winchester',14),
  ('Jodie Whittaker',38);

  INSERT INTO species(name)
   VALUES('Pokemon'),
   ('Digimon');

UPDATE animals SET species='digimon' WHERE name like '%mon';

UPDATE animals SET species='pokemon' WHERE species='';

 UPDATE animals SET weight_kg=weight_kg*-1 where weight_kg<0;

 UPDATE animals SET weight_kg=weight_kg*-1;

UPDATE animals SET species_id=2 WHERE name like '%mon';

UPDATE animals SET species_id=1 WHERE name not like '%mon';

INSERT INTO vets(name,age,date_of_graduation) 
VALUES('Vet William Tatcher',54,'2000-04-23'),
('Vet Maisy Smith',26,'2019-06-17'),
('Vet Stephanie Mendez',64,'1981-05-04'),
('Vet Jack Harkness',38,'2008-06-08');

INSERT INTO specializations(species_id,vets_id) VALUES(1,1),(1,3),(2,3),(2,4);

INSERT INTO visits(animals_id,vets_id,date_of_visit) VALUES(1,1,'2020-05-23'),(1,3,'2020-07-22'),(2,4,'2021-02-02'),(3,2,'2020-01-05'),(3,2,'2020-05-08'),(3,2,'2020-05-14'),(4,3,'2021-05-04'),(5,4,'2021-02-24'),(6,2,'2019-12-21'),(6,1,'2020-08-10'),(6,2,'2021-04-07'),(7,3,'2019-09-29'),(8,4,'2020-10-03'),(8,4,'2020-11-04'),(9,2,'2019-01-24'),(9,2,'2019-05-15'),(9,2,'2020-02-27'),(9,2,'2020-08-03'),(10,3,'2020-05-24'),(10,1,'2021-01-11');








