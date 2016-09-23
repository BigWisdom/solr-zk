# Solr Cloud with ZooKeeper Ensemble
This repo contains following

1. Dockerfile with Solr 6.2 and Zookeeper 3.4.6
2. docker-compose.yml with will use build from above Dockerfile and create three images and run in separate container
3. build script to build docker images, containers and start services

Note: docker-compose also creates separate network. Each container created in step 2 will have hosts entry for each other since the container uses static IP address.

## Steps

1. `git clone`
2. `./build.sh`


## List of URLs:

###### SolrCloud search cluster instances
- http://192.168.99.100:32961/solr/#/
- http://192.168.99.100:32962/solr/#/
- http://192.168.99.100:32963/solr/#/

#### Descripton of steps in build file
1. build solr + zookeeper image: docker build -t search/solrcloud-zookeeper-docker:latest docker/solr-zk/.
2. start service: docker-compose -f docker/solr-zk/docker-compose.yml

#### List of images

##### Main Images
> search/solrcloud-docker     : Solr
> search/zookeeper-docker     : ZooKeeper

##### Extensions of main images with configurations
> solrzk_solr1-3             : Extension of search/solrcloud-docker                
> solrzk_zoo1-3             : Extension of search/zookeeper-docker                

#### Inspect open ports and services:
docker-compose -f docker/docker-compose.yml ps

#### Stop containers:
docker-compose -f docker/docker-compose.yml stop

#### Start containers
docker-compose -f docker/docker-compose.yml up -d

#### Cleanup

##### Stop containers
`docker-compose -f docker/docker-compose.yml stop`

##### Remove containers
`docker-compose -f docker/docker-compose.yml rm`

##### Remove extension images
`docker rm $(docker images -q solrzk_)`

##### Reove all images (Warning: This command will delete all images in your pc)
`docker rm $(doccker images -q)`


##### ZooKeeper utilities

root@f752c8166876:/solr/server/scripts/cloud-scripts# ./zkcli.sh -zkhost localhost:2181 -cmd list   

apt-get  install netcat
https://zookeeper.apache.org/doc/trunk/zookeeperAdmin.html#sc_monitoring
