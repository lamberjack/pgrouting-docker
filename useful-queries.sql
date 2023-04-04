select w.source, w.target, w.name, c.component FROM ways as w join 
pgr_connectedComponents(
  'SELECT gid as id, source, target, cost FROM ways'
) as c on w.source = c.node
order by c.component;

SELECT * FROM pgr_dijkstra(
    'SELECT gid as id, source, target, length as cost, length as reverse_cost FROM ways',
    <node-origin>, <node-destination>
);

select  w.name, w.source, w.target, d.cost, d.agg_cost FROM ways as w right join
pgr_dijkstra(
    'SELECT gid as id, source, target, cost FROM ways',
    <node-origin>, <node-destination>
) as d on d.edge = w.gid ;
