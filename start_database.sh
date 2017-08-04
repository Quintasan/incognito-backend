#/usr/bin/env bash
docker run --name incognito_postgres -p 5432:5432 -e POSTGRES_USER=incognito -e POSTGRES_PASSWORD=incognito -d postgres:9-alpine
