SELECT  * INTO vertices_table from pgr_extractVertices('SELECT gid as id, the_geom as geom FROM ways');


WITH
out_going AS (
  SELECT id AS vid, unnest(out_edges) AS eid, x, y
  FROM vertices_table
)
UPDATE ways
SET source = vid, x1 = x, y1 = y
FROM out_going WHERE gid = eid;


WITH
in_coming AS (
  SELECT id AS vid, unnest(in_edges) AS eid, x, y
  FROM vertices_table
)
UPDATE ways
SET target = vid, x2 = x, y2 = y
FROM in_coming WHERE gid = eid;
