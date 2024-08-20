FROM postgres:latest

COPY subject subject/
COPY 00-table.sql /docker-entrypoint-initdb.d/
COPY customers_table.sql /docker-entrypoint-initdb.d/