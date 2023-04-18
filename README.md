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
<hr>
<br>

### Configurations for an example graph ###

When you start this stack using docker-compose.yml the PostGIS database is started up following those steps:

1) Creation of the table 'ways' and 'route_analysis' executing <code> /sql-scripts/init-db.sql </code>

2) Population of the table 'ways' executing <code> /sql-scripts/insert-rows.sql </code>

3) Create the topology: a new table 'vertices_table' and populate the 'source' and 'target column of table 'ways' <code> /create-topology.sql </code>

<br>
<hr>
<br>

### Configurations for an .osm file ###

You can import .osm files directly inside the database. Inside the folder <code> /osm-data </code> you find 2 files:

1) An example of an osm file with all the data of a small piece of Italy: <code> map.osm </code>

2) A configuration file used to specify which data from the osm file you want to import inside the related table that will be created.

After you have started the container you can launch the script <code> ./import-osm.sh </code> to import the osm file.
Consider that heavier is your file more time is required for the import process.