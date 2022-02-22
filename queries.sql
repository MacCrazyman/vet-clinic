/*Queries that provide answers to the questions from all projects.*/

-- Query one:
explain analyze SELECT COUNT(*) FROM visits where animal_id = 4;

-- Query two:
explain analyze SELECT * FROM visits where vet_id = 2;

-- Query trhee:
explain analyze SELECT * FROM owners where email = 'owner_18327@mail.com';
