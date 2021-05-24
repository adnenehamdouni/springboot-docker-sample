#!/bin/bash
docker kill spring-boot-docker-sample > /dev/null 2>&1
docker rm spring-boot-docker-sample > /dev/null 2>&1
docker-compose up -d