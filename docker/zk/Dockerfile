FROM ubuntu:16.04
MAINTAINER manuel.ferland@yahoo.ca
ENV\
	ZK_VER=3.4.8
RUN\
	apt-get update &&\
	apt-get install -y vim curl wget default-jdk lsof monit ntp &&\
	apt-get update &&\
	wget http://apache.spinellicreations.com/zookeeper/zookeeper-$ZK_VER/zookeeper-$ZK_VER.tar.gz &&\
	tar xzvf zookeeper-$ZK_VER.tar.gz &&\
	rm zookeeper-$ZK_VER.tar.gz &&\
	apt-get clean
RUN\
	ln -s zookeeper-$ZK_VER zk &&\
	mkdir zk-data &&\
	touch /zk/conf/zoo.cfg &&\
	echo "tickTime=2000" >> /zk/conf/zoo.cfg &&\
	echo "dataDir=/zk-data/" >> /zk/conf/zoo.cfg &&\
	echo "clientPort=2181" >> /zk/conf/zoo.cfg &&\
	echo "initLimit=5" >> /zk/conf/zoo.cfg &&\
	echo "syncLimit=2" >> /zk/conf/zoo.cfg
EXPOSE 2181 2888 3888
