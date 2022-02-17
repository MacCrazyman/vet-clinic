/*Queries that provide answers to the questions from all projects.*/

begin;
update animals set species = 'unspecified';
table animals;
rollback;
table animals;

begin;
update animals
set species = 'digimon'
where name like '%mon';
table animals;
update animals
set species = 'pokemon'
where species is null;
commit;
table animals;

begin;
delete from animals;
table animals;
rollback;
table animals;

begin;
delete from animals
where date_of_birth > 'jan-01-2022';
savepoint deleteold;
update animals set weight_kg = weight_kg*(-1);
table animals;
rollback to deleteold;
table animals;
update animals set weight_kg = weight_kg*(-1)
where weight_kg < 0;
table animals;
commit;
table animals;

-- How many animals are there? = 5
select count(*)
from animals;

-- How many animals have never tried to escape? = 1
select count(*)
from animals
where escape_attemps = 0;

-- What is the average weight_kg of animals? = 21.106kg
select avg(weight_kg)
from animals;

-- Who escapes the most, neutered or not neutered animals? = neutered
-- neutered animals escaped 3 times
select count(*)
from animals
where (neutered = true and escape_attemps > 0);

-- non neutered animals escaped 1 time
select count(*)
from animals
where (neutered = false and escape_attemps > 0);

-- What is the minimum and maximum weight_kg of each type of animal?
-- max weight_kg pokemon = 17kg
select max(weight_kg)
from animals
where (species = 'pokemon');
-- min weight_kg pokemon = 11kg
select min(weight_kg)
from animals
where (species = 'pokemon');
-- max weight_kg digimon = 45kg
select max(weight_kg)
from animals
where (species = 'digimon');
-- min weight_kg digimon = 20.4
select min(weight_kg)
from animals
where (species = 'digimon');

-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?
-- pokemon's average attempts to escape = 3
select avg(escape_attemps)
from animals
where (date_of_birth between 'jan-01-1990' and 'jan-01-2000' and species = 'pokemon');
-- digimon's average attempts to escape = 0
select avg(escape_attemps)
from animals
where (date_of_birth between 'jan-01-1990' and 'jan-01-2000' and species = 'digimon');
