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

-- How many animals are there?
select count(*)
from animals;

-- How many animals have never tried to escape?
select count(*)
from animals
where escape_attemps = 0;

-- What is the average weight_kg of animals?
select avg(weight_kg)
from animals;

-- Who escapes the most, neutered or not neutered animals?
select neutered, sum(escape_attemps)
from animals
group by neutered
order by sum desc;

-- What is the minimum and maximum weight_kg of each type of animal?
select species, min(weight_kg), max(weight_kg)
from animals
group by species;

-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?
select species, avg(escape_attemps)
from animals
where (date_of_birth between 'jan-01-1990' and 'jan-01-2000')
group by species;
