--liquibase formatted sql
--changeset raphael
--comment: boards_columns table create

CREATE TABLE BOARDS_COLUMNS(
    id bigint auto_increment primary key,
    name varchar(255) not null,
    `order` int not null,
    kind VARCHAR(7) not null,
    board_id bigint not null,
    constraint boards__boards_columns_fk foreign key (board_id) references boards(id) on delete cascade,
    constraint id_order_uk unique key unique_board_id_order (board_id, `order`)
)ENGINE=InnoDB;

--rollback drop table boards
