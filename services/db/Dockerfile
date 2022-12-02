# pull official base image
FROM mysql:8

# run sql scripts on init
ADD 01_create_db.sql /docker-entrypoint-initdb.d/01_create_db.sql
ADD 02_add_users.sql /docker-entrypoint-initdb.d/02_add_users.sql