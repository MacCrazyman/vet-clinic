/*Queries that provide answers to the questions from all projects.*/

-- What animals belong to Melody Pond?

select animals.name
from animals
join owners
on animals.owner_id = owners.id
where owners.full_name = 'Melody Pond';

-- List of all animals that are pokemon (their type is Pokemon).

select animals.name
from animals
join species
on animals.species_id = species.id
where species.name = 'Pokemon';

-- List all owners and their animals, remember to include those that don't own any animal.

select owners.full_name, animals.name
from owners
left join animals
on owners.id = animals.owner_id;

-- How many animals are there per species?

select species.name, count(species.name)
from species
join animals
on species.id = animals.species_id
group by species.name;

-- List all Digimon owned by Jennifer Orwell.

select owners.full_name, animals.name
from owners
join animals
on owners.id = animals.owner_id
where owners.full_name = 'Jennifer Orwell';

-- List all animals owned by Dean Winchester that haven't tried to escape.

select owners.full_name, animals.name
from owners
join animals
on owners.id = animals.owner_id
where owners.full_name = 'Dean Winchester' and animals.escape_attemps = 0;

-- Who owns the most animals?

select owners.full_name, count(owners.full_name)
from owners
join animals
on owners.id = animals.owner_id
group by owners.full_name
order by count desc;
