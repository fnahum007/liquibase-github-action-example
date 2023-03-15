--liquibase formatted sql

--run these ddls before first Liquibase run in target database
CREATE SCHEMA IF NOT EXISTS LIQUIBASE;

GRANT ALL ON SCHEMA LIQUIBASE TO GROUP readonly;
GRANT ALL ON SCHEMA LIQUIBASE TO GROUP readwrite;

ALTER DEFAULT PRIVILEGES IN SCHEMA LIQUIBASE GRANT ALL ON TABLES TO GROUP readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA LIQUIBASE GRANT ALL ON TABLES TO GROUP readwrite;


--run these ddls after first Liquibase run in target database
GRANT ALL ON TABLE  LIQUIBASE.chg_lg_lck_t TO GROUP readonly;
GRANT ALL ON TABLE  LIQUIBASE.chg_lg_lck_t TO GROUP readwrite;

GRANT ALL ON TABLE  LIQUIBASE.chg_lg_t TO GROUP readonly;
GRANT ALL ON TABLE  LIQUIBASE.chg_lg_t TO GROUP readwrite;

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

