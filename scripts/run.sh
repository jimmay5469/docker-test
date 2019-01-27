#!/bin/bash

cd ~/apps/docker-test

# convert this to use prod mode
docker-compose run --rm web mix deps.get
docker-compose run --rm web bash -c "cd assets && npm install"
docker-compose run --rm web mix ecto.setup
docker-compose up -d
