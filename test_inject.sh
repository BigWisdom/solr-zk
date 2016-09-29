#!/bin/sh
wget http://192.168.99.100:32962/solr/admin/collections?action=CREATE&name=film&replicationFactor=3&collection.configName=data_driven
curl http://192.168.99.100:32962/solr/film/update -H "Content-Type: text/xml" --data-binary @films.xml
curl http://192.168.99.100:32962/solr/film/update?stream.body=%3Ccommit/%3E