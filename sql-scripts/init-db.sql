
CREATE EXTENSION POSTGIS; 

CREATE EXTENSION PGROUTING;


DROP TABLE IF EXISTS ways;

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