#!/bin/sh
curl -X GET 'http://192.168.99.100:32962/solr/admin/collections?action=CREATE&name=film&replicationFactor=3&numShards=1&collection.configName=data_driven'
curl -X POST http://192.168.99.100:32962/solr/film/update -H "Content-Type: text/xml" --data-binary @films.xml
curl http://192.168.99.100:32962/solr/film/update?stream.body=%3Ccommit/%3E