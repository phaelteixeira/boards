--liquibase formatted sql
--changeset raphael
--comment: boards table create

CREATE TABLE BOARDS(
    id bigint auto_increment primary key,
    name varchar(255) not null
)ENGINE=InnoDB;

--rollback drop table boards
