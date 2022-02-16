/*Queries that provide answers to the questions from all projects.*/

SELECT * 
from animals
WHERE name like '%mon' ;

select name
from animals
where date_of_birth between 'jan-01-2016' and 'dec-31-2019';

select name
from animals
where (neutered = true and escape_attemps < 3);

select date_of_birth
from animals
where name in ('Agumon','Pikachu');

select name, escape_attemps
from animals
where weight_kg > 10.5;

select *
from animals
where neutered=true;

select *
from animals
where name != 'Gabumon';

select *
from animals
where (weight_kg between 10.4 and 17.3);