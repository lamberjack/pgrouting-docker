
-- WAYS GRAPH RELATED QUERIES --


-- select the connected components of the graphs with the related arcs
select w.source, w.target, w.name, c.component FROM ways as w join 
pgr_connectedComponents(
  'SELECT gid as id, source, target, cost FROM ways'
) as c on w.source = c.node
order by c.component;


-- invoke the pgr_dijkstra pgrouting function to find the shortest path between 2 nodes
SELECT * FROM pgr_dijkstra(
    'SELECT gid as id, source, target, length as cost, length as reverse_cost FROM ways',
    <node-origin>, <node-destination>
);

-- show the shortest path between 2 nodes using dijksta algorithm
select  w.name, w.source, w.target, d.cost, d.agg_cost FROM ways as w right join
pgr_dijkstra(
    'SELECT gid as id, source, target, cost FROM ways',
    <node-origin>, <node-destination>
) as d on d.edge = w.gid ;


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

-- insert from_node to_node and dijksta total cost of the path 
insert into route_analysis (from_node, to_node, length)
SELECT distinct  <node-origin>, <node-destination>, agg_cost FROM pgr_dijkstra(
    'SELECT gid as id, source, target, cost, cost as reverse_cost FROM ways',
    <node-origin>, <node-destination>
) where edge = -1 ;

-- insert the geometry of the path calculated between of from_node and to_node
update route_analysis r 
set (the_geom) = (select st_makeline(pgr.the_geom)
from (SELECT w.the_geom  FROM pgr_dijkstra(
    'SELECT gid as id, source, target,cost,  cost as reverse_cost FROM ways',
     <node-origin>, <node-destination>
) as d left join ways as w on d.edge = w.gid) as pgr)
where r.from_node =  <node-origin> and r.to_node = <node-destination>;


