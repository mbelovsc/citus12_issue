# Cannot create an explicitly nullable column with citus 12

This is a simple example with the same migration being run on Citus 11 and Citus 12.
On a non-distributed table it'll work fine on both but for distributed tables it'll fail on Citus 12.

## Steps to reproduce

`docker-compose up` and see the logs for the citus12 container. citus11 will work fine.

```shell
citus12  | 2023-07-31 05:25:37.731 UTC [177] ERROR:  unsupported constraint type
citus12  | 2023-07-31 05:25:37.731 UTC [177] DETAIL:  constraint type: 0
citus12  | 2023-07-31 05:25:37.731 UTC [177] STATEMENT:  alter table test add column name varchar(255) null;
```
