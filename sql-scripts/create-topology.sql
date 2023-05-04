SELECT  * INTO vertices from pgr_extractVertices('SELECT gid as id, the_geom as geom FROM ways');


WITH
out_going AS (
  SELECT id AS vid, unnest(out_edges) AS eid
  FROM vertices
)
UPDATE ways
SET source = vid
FROM out_going WHERE gid = eid;


WITH
in_coming AS (
  SELECT id AS vid, unnest(in_edges) AS eid
  FROM vertices
)
UPDATE ways
SET target = vid
FROM in_coming WHERE gid = eid;
