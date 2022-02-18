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
