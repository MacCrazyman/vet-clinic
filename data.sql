/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Charmander','feb-08-2020', 11, false, 0);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Plantmon', 'nov-15-2022', 5.7, true, 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Squirtle', 'apr-02-1993', 12.13, false, 3);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Angemon', 'jun-12-2005', 45, true, 1);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Boarmon', 'jun-07-2005', 20.4, true, 7);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Blossom', 'oct-13-1998', 17, true, 3);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Agumon', 'feb-03-2020', 10.23, true, 0);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Gabumon', 'nov-15-2018', 8, true, 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Pikachu', 'jan-07-2021', 15.04, false, 1);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attemps) VALUES ('Devimon', 'may-12-2017', 11, true, 5);

insert into owners (full_name, age) values ('Sam Smith', 34),('Jennifer Orwell', 19),('Bob', 45),('Melody Pond', 77),('Dean Winchester', 14),('Jodie Whittaker', 38);

insert into species values ('Pokemon'),('Digimon');

update animals
set species_id = 2
where name like '%mon';

update animals
set species_id = 1
where name not like '%mon';

update animals set owner_id = 1 where name = 'Agumon';
update animals set owner_id = 2 where name in ('Gabumon','Pikachu');
update animals set owner_id = 3 where name in ('Devimon','Plantmon');
update animals set owner_id = 4 where name in ('Charmander','Squirtle', 'Blossom');
update animals set owner_id = 5 where name in ('Angemon','Boarmon');

insert into vets (name, age, date_of_graduation)
values
('William Tatcher', 45, 'apr-23-2000'),
('Maisy Smith', 26, 'jan-17-2019'),
('Stephanie Mendez', 64, 'may-04-1981'),
('Jack Harkness', 38, 'jun-08-2008');

insert into specializations
values
(1,1),
(3,1),
(3,2),
(4,2);

insert into visits
values
((select id from animals where name='Agumon'), (select id from vets where name='William Tatcher'), 'may-24-2020'),
((select id from animals where name='Agumon'), (select id from vets where name='Stephanie Mendez'), 'jul-22-2020'),
((select id from animals where name='Gabumon'), (select id from vets where name='Stephanie Mendez'), 'feb-02-2021'),
((select id from animals where name='Pikachu'), (select id from vets where name='Maisy Smith'), 'jan-05-2020'),
((select id from animals where name='Pikachu'), (select id from vets where name='Maisy Smith'), 'mar-08-2020'),
((select id from animals where name='Pikachu'), (select id from vets where name='Maisy Smith'), 'may-14-2020'),
((select id from animals where name='Devimon'), (select id from vets where name='Stephanie Mendez'), 'may-04-2021'),
((select id from animals where name='Charmander'), (select id from vets where name='Jack Harkness'), 'feb-24-2021'),
((select id from animals where name='Plantmon'), (select id from vets where name='Maisy Smith'), 'dec-21-2019'),
((select id from animals where name='Plantmon'), (select id from vets where name='William Tatcher'), 'aug-10-2020'),
((select id from animals where name='Plantmon'), (select id from vets where name='Maisy Smith'), 'apr-07-2021'),
((select id from animals where name='Squirtle'), (select id from vets where name='Stephanie Mendez'), 'sep-29-2019'),
((select id from animals where name='Angemon'), (select id from vets where name='Jack Harkness'), 'oct-03-2020'),
((select id from animals where name='Angemon'), (select id from vets where name='Jack Harkness'), 'nov-04-2020'),
((select id from animals where name='Boarmon'), (select id from vets where name='Maisy Smith'), 'jan-24-2019'),
((select id from animals where name='Boarmon'), (select id from vets where name='Maisy Smith'), 'may-15-2019'),
((select id from animals where name='Boarmon'), (select id from vets where name='Maisy Smith'), 'feb-27-2020'),
((select id from animals where name='Boarmon'), (select id from vets where name='Maisy Smith'), 'aug-03-2020'),
((select id from animals where name='Blossom'), (select id from vets where name='Stephanie Mendez'), 'may-24-2020'),
((select id from animals where name='Blossom'), (select id from vets where name='William Tatcher'), 'jan-11-2021');
