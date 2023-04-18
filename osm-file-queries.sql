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


select * from planet_osm_roads_vertices_pgr;

-- add the length column
ALTER TABLE planet_osm_roads ADD COLUMN "length" double precision;

-- populate the lenght colum with the length (feet) of every way (arc) 
UPDATE planet_osm_roads SET length =  st_length(way);

