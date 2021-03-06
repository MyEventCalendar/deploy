#!/usr/bin/env bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" << EOSQL
	CREATE USER events PASSWORD 'events';
	CREATE DATABASE events;
	GRANT ALL PRIVILEGES ON DATABASE events TO events;
EOSQL
