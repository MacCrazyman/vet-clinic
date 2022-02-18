/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int generated by default as identity,
    name varchar(100) not null,
    date_of_birth date,
    weight_kg float,
    neutered boolean,
    escape_attemps int default 0
);

ALTER TABLE animals ADD species varchar(100);

create table owners (
    id int unique generated by default as identity,
    full_name varchar(100) not null,
    age int not null
);

create table species (
    id int unique generated by default as identity,
    name varchar(100)
);

alter table animals drop column species;
alter table animals add species_id int references species(id);
alter table animals add owner_id int references owners(id);
