/*Queries that provide answers to the questions from all projects.*/

-- Query one:
CREATE INDEX animal_id_asc ON visits(animal_id ASC);
explain analyze SELECT COUNT(*) FROM visits where animal_id = 4;