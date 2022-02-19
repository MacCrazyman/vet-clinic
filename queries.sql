/*Queries that provide answers to the questions from all projects.*/

-- Who was the last animal seen by William Tatcher?

select a.name, date_of_visit
from animals a
join visits on  a.id = visits.animal_id
join vets on vets.id = visits.vet_id
where vets.name = 'William Tatcher'
order by visits.date_of_visit desc limit 1;

-- How many different animals did Stephanie Mendez see?

select count(distinct a.name)
from animals a
join visits on a.id = visits.animal_id
join vets on vets.id = visits.vet_id
where vets.name = 'Stephanie Mendez';


-- List all vets and their specialties, including vets with no specialties.

select v.name as "vet name", s.name as "specialization"
from vets v
left join specializations on v.id = specializations.vet_id
left join species s on specializations.specie_id = s.id

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.

select a.name, visits.date_of_visit
from animals a
join visits on a.id = visits.animal_id
join vets on vets.id = visits.vet_id
where vets.name = 'Stephanie Mendez' and visits.date_of_visit between 'apr-01-2020' and 'aug-30-2020';

-- What animal has the most visits to vets?

select count(a.name), a.name
from animals a
join visits on a.id = visits.animal_id
group by a.name
order by count desc limit 1;

-- Who was Maisy Smith's first visit?

select a.name, visits.date_of_visit
from animals a
join visits on a.id = visits.animal_id
join vets v on v.id = visits.vet_id
where v.name = 'Maisy Smith'
order by visits.date_of_visit limit 1;

-- Details for most recent visit: animal information, vet information, and date of visit.

select a.name as "animal name",a.date_of_birth,a.weight_kg,a.neutered,v.name as "vet name",v.age,v.date_of_graduation,vis.date_of_visit
from animals a
join visits vis on vis.animal_id = a.id
join vets v on v.id = vis.vet_id
order by vis.date_of_visit limit 1;

-- How many visits were with a vet that did not specialize in that animal's species?

select count(v)
from visits v
left join vets on vets.id = v.vet_id
left join specializations sp on sp.vet_id = vets.id
left join species on species.id = sp.specie_id
where species is null;

-- What specialty should Maisy Smith consider getting? Look for the species she gets the most.

select s.name,count(s.name)
from visits v
left join vets on vets.id = v.vet_id
left join animals a on a.id = v.animal_id
left join species s on s.id = a.species_id
where vets.name = 'Maisy Smith'
group by s.name
order by count desc limit 1;