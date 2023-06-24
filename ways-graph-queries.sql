
-- WAYS GRAPH RELATED QUERIES --


-- select the connected components of the graphs with the related arcs
SELECT w.source, w.target, w.name, c.component FROM ways as w join 
pgr_connectedComponents(
  'SELECT gid as id, source, target, cost FROM ways'
) as c on w.source = c.node
order by c.component;


-- invoke the pgr_dijkstra pgrouting function to find the shortest path between 2 nodes
SELECT * FROM pgr_dijkstra(
    'SELECT gid as id, source, target, cost, cost as reverse_cost FROM ways',
    <origin-node>, <destination-node>
);

-- show the shortest path between 2 nodes using dijksta algorithm
SELECT  w.name, w.source, w.target, d.cost, d.agg_cost FROM ways as w right join
pgr_dijkstra(
    'SELECT gid as id, source, target, cost FROM ways',
    <origin-node>, <destination-node>
) as d on d.edge = w.gid;

-- insert from_node to_node and dijksta total cost of the path 
INSERT into route_analysis (from_node, to_node, length)
SELECT distinct <origin-node>, <destination-node>, agg_cost FROM pgr_dijkstra(
    'SELECT gid as id, source, target, cost, cost as reverse_cost FROM ways',
    <origin-node>, <destination-node>
) where edge = -1;

-- insert the geometry of the path calculated between of from_node and to_node
UPDATE route_analysis r 
set (the_geom) = (SELECT st_makeline(pgr.the_geom)
FROM (SELECT w.the_geom  FROM pgr_dijkstra(
    'SELECT gid as id, source, target, cost, cost as reverse_cost FROM ways',
     <origin-node>, <destination-node>
) as d left join ways as w on d.edge = w.gid) as pgr)
where r.from_node =  <origin-node> and r.to_node = <destination-node>;


