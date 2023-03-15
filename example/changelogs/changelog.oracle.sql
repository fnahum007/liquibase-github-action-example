--liquibase formatted sql

--changeset amalik:1
--rollback DROP TABLE person-git;
create table person-git (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset amalik:2
--rollback DROP TABLE company-git;
create table company-git (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset christine:3
--rollback ALTER TABLE person-git DROP COLUMN country;
alter table person-git add country varchar(2)

--changeset amy:4
--rollback ALTER TABLE person-git DROP COLUMN state;
alter table person-git add state varchar(2)

