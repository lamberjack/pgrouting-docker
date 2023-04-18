from  pgrouting/pgrouting:13-3.1-3.1.3

RUN  apt update \
 && apt install -y \
    osm2pgrouting \
    osm2pgsql \
    nano 