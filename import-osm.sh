#!/bin/bash
 
 echo "importing OSM file..."
 
 docker exec -it postgis_local  osm2pgsql -c -d gis -U postgres --password -H 127.0.0.1 --style /usr/share/osm2pgsql/custom.style /usr/share/map.osm