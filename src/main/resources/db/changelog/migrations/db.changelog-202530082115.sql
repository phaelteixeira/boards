--liquibase formatted sql
--changeset raphael
--comment: boards_columns table create

CREATE TABLE cards(
    id bigint auto_increment primary key,
    title varchar(255) not null,
    description varchar(255) not null,
    board_column_id bigint not null,
    constraint boards_columns_cards_fk foreign key (board_column_id) references boards_columns(id) on delete cascade
)ENGINE=InnoDB;

--rollback drop table boards
