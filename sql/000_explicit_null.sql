CREATE EXTENSION citus;
CREATE TABLE test ( id serial PRIMARY KEY);
SELECT create_distributed_table('test', 'id');
ALTER TABLE test ADD COLUMN name varchar(255) NULL;
