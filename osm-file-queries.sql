-- OSM FILE TABLES RELATED QUERIES --

----------------------------------
-- add source and target colum to the roads table
ALTER TABLE planet_osm_roads ADD COLUMN "source" integer;
ALTER TABLE planet_osm_roads ADD COLUMN "target" integer;

-- create the topology for planet_osm_roads table:
--  it creates the planet_osm_roads_vertices_pgr table; 
--  it populets the "source" andt "target" column of "planet_osm_roads"
select pgr_createTopology('planet_osm_roads', 0.0001, 'way', 'osm_id');


-- when you have created successfully the vertex table with pgr_createTopology, you can analyze the graph
SELECT pgr_analyzeGraph('planet_osm_roads', 0.000001, the_geom := 'way', id := 'osm_id');

-- add the length column
ALTER TABLE planet_osm_roads ADD COLUMN "length" double precision;

-- populate the lenght colum with the length (feet) of every way (arc) 
UPDATE planet_osm_roads SET length = st_length(way);


-- show which kind of geometry has the column
SELECT ST_SRID(way) FROM planet_osm_roads LIMIT 1;

-- new table road analysys with the correct geometry type
DROP TABLE IF EXISTS road_analysis;
CREATE TABLE road_analysis
(
  id bigserial NOT NULL,
  from_node integer NOT NULL,
  to_node integer NOT NULL,
  length double precision,
  the_geom geometry(LineString,3857),
  CONSTRAINT road_routing_pkey PRIMARY KEY (id)
);


-- insert from_node to_node and dijksta total cost of the path 
insert into road_analysis (from_node, to_node, length)
SELECT distinct <node-origin>, <node-destination>, agg_cost FROM pgr_dijkstra(
  'SELECT osm_id as id, source, target, length as cost FROM planet_osm_roads',
    <node-origin>, <node-destination>
) where edge = -1;


-- dijkstra path calculation for roads 
update road_analysis r 
set (the_geom) = (select st_makeline(pgr.way)
from (SELECT w.way  FROM pgr_dijkstra(
  'SELECT osm_id as id, source, target, length as cost FROM planet_osm_roads',
    <node-origin>, <node-destination>
) as d left join planet_osm_roads as w on d.edge = w.osm_id) as pgr)
where r.from_node = <node-origin> and r.to_node = <node-destination>;