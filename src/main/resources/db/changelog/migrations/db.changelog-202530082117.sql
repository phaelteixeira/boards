--liquibase formatted sql
--changeset raphael
--comment: boards_columns table create

CREATE TABLE blocks(
    id bigint auto_increment primary key,
    block_at timestamp default current_timestamp,
    block_reason varchar(255) null,
    unblock_at timestamp null,
    unblock_reason varchar(255) not null,
    card_id bigint not null,
    constraint cards__blocks_fk foreign key (card_id) references cards(id) on delete cascade
)ENGINE=InnoDB;

--rollback drop table boards
