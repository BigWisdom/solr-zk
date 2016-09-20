#!/bin/sh
docker build -t search/solrcloud-zookeeper-docker:latest docker/solr-zk/.
docker-compose -f docker/solr-zk/docker-compose.yml build
docker-compose -f docker/solr-zk/docker-compose.yml up -d