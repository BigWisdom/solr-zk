FROM ubuntu:16.04
MAINTAINER manuel.ferland@yahoo.ca
ENV\
	SOLR_VER=6.2.0
RUN\
	apt-get update &&\
	apt-get install -y vim curl wget default-jdk lsof monit ntp &&\
	apt-get update &&\
	wget http://apache.claz.org/lucene/solr/$SOLR_VER/solr-$SOLR_VER.tgz &&\
	tar xzvf solr-$SOLR_VER.tgz &&\
	rm solr-$SOLR_VER.tgz &&\
	apt-get clean
RUN\
	ln -s solr-$SOLR_VER solr &&\
	mkdir solr-data &&\
	cp /solr/server/solr/solr.xml /solr-data/.
EXPOSE 8983
