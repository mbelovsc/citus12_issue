CREATE EXTENSION citus;

create table test (
    id serial primary key
);

SELECT create_distributed_table('test', 'id');

alter table test add column name varchar(255) null;