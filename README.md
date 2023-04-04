## PostGIS Database with pgAdmin ##

This stack starts 2 container:

- PostGIS container with the pgRouting extension. PostGIS is a spatial database extender for PostgreSQL object-relational database.

    database: postgis

    password: postgres

<br>

- <strong>pgAdmin</strong> container: pgAdmin console where you can interact with the PostGIS database.

    <link>http://localhost:5051/</link>
    <br>
    <br>

    user: user@email.com

    password: admin

<br>
<br>

### Configurations ###

When you start this stack using docker-compose.yml the PostGIS database is started up following those steps:

1) Creation of the table 'ways' executing <code> /sql-scripts/init-db.sql </code>

2) Population of the table 'ways' executing <code> /sql-scripts/insert-rows.sql </code>

3) Create the topology: a new table 'vertices_table' and populate the 'source' and 'target column of table 'ways' <code> /create-topology.sql </code>

