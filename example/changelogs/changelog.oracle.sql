--liquibase formatted sql
--changeset amalik:1
--rollback DROP TABLE person_git;
create table person_git (
    id integer primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset amalik:2
--rollback DROP TABLE company_git;
create table company_git (
    id integer primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset christine:3
--rollback ALTER TABLE person_git DROP COLUMN country;
alter table person_git add country varchar(2)

--changeset amy:4
--rollback ALTER TABLE person_git DROP COLUMN state;
alter table person_git add state varchar(2)

--changeset christine:5
--rollback ALTER TABLE person_git DROP COLUMN country;
alter table person_git add continent varchar(2)

--changeset amy:6
--rollback ALTER TABLE person_git DROP COLUMN state;
alter table person_git add neighborhood varchar(2)
