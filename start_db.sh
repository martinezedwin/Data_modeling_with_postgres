#!/bin/bash

docker stop postgresql
docker rm postgresql
docker run -d \
    --name postgresql \
    -e POSTGRES_USERNAME=student \
    -e POSTGRES_PASSWORD=student \
    -e POSTGRES_DBNAME=studentdb \
    -p 5432:5432 \
    frodenas/postgresql