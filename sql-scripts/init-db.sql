
CREATE EXTENSION POSTGIS; 

CREATE EXTENSION PGROUTING;


DROP TABLE IF EXISTS ways;

-- create ways table used for storing graphs edges data
CREATE TABLE ways
(
  gid bigserial NOT NULL,
  class_id integer NOT NULL,
  name text,
  source bigint,
  target bigint,
  x1 double precision,
  y1 double precision,
  x2 double precision,
  y2 double precision,
  cost double precision,
  priority double precision DEFAULT 1,
  the_geom geometry(LineString,4326),
  CONSTRAINT ways_pkey PRIMARY KEY (gid)
);

DROP TABLE IF EXISTS route_analysis;

-- create a route_analysis table, used for paths storing
CREATE TABLE route_analysis
(
  id bigserial NOT NULL,
  from_node integer NOT NULL,
  to_node integer NOT NULL,
  length double precision,
  the_geom geometry(LineString,4326),
  CONSTRAINT routing_pkey PRIMARY KEY (id)
);
