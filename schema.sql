/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id int generated by default as identity,
    name varchar(100) not null,
    species varchar(100),
    gender varchar(6),
    dateBorn date,
    weight float,
    neutered boolean,
    tries int default 0
);