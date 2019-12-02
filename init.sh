#!/bin/bash

docker-compose build
docker-compose run web yarn
docker-compose run web rake db:create
docker-compose up
