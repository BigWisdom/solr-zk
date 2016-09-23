#!/bin/sh
docker build -t search/solrcloud-docker:latest docker/solr/.
docker build -t search/zookeeper-docker:latest docker/zk/.
docker-compose -f docker/docker-compose.yml build
docker-compose -f docker/docker-compose.yml up -d