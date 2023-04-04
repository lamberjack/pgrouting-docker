--- ITALY ---

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (1, 1, 'Pisa ->  Firenze', 125, 10.40034, 43.71644, 11.250893226918928, 43.77296776588523, 
  'LINESTRING(10.40034 43.71644, 11.250893226918928 43.77296776588523)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (2, 1, 'Firenze ->  Pisa', 120, 11.250893226918928, 43.77296776588523, 10.40034, 43.71644,
  'LINESTRING(11.250893226918928 43.77296776588523, 10.40034 43.71644)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (3, 1, 'Firenze ->  Bologna', 135, 11.250893226918928, 43.77296776588523,  11.330748811292002, 44.5042988241174,
  'LINESTRING(11.250893226918928 43.77296776588523,  11.330748811292002 44.5042988241174)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (11, 1, 'Firenze ->  Roma', 245, 11.250893226918928, 43.77296776588523, 12.534383080088409, 41.89366631241167, 
  'LINESTRING(11.250893226918928 43.77296776588523, 12.534383080088409 41.89366631241167)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (12, 1, 'Roma ->  Firenze', 240, 12.534383080088409, 41.89366631241167, 11.250893226918928, 43.77296776588523, 
  'LINESTRING(12.534383080088409 41.89366631241167, 11.250893226918928 43.77296776588523)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (4, 1, 'Bologna -> Firenze', 130, 11.330748811292002, 44.5042988241174, 11.250893226918928, 43.77296776588523,
  'LINESTRING(11.330748811292002 44.5042988241174, 11.250893226918928 43.77296776588523)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (5, 1, 'Bologna -> Milano', 205, 11.330748811292002, 44.5042988241174, 9.199175230263801, 45.440081916058936, 
  'LINESTRING(11.330748811292002 44.5042988241174, 9.199175230263801 45.440081916058936)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (10, 1, 'Bologna -> Venezia', 130, 11.330748811292002, 44.5042988241174, 12.335538656789184, 45.43865064671172,
  'LINESTRING(11.330748811292002 44.5042988241174, 12.335538656789184 45.43865064671172)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (6, 1, 'Milano -> Bologna', 200, 9.199175230263801, 45.440081916058936, 11.330748811292002, 44.5042988241174,  
  'LINESTRING(9.199175230263801 45.440081916058936, 11.330748811292002 44.5042988241174)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (7, 1, 'Milano -> Venezia', 220, 9.199175230263801, 45.440081916058936, 12.335538656789184, 45.43865064671172, 
  'LINESTRING(9.199175230263801 45.440081916058936, 12.335538656789184 45.43865064671172)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (21, 1, 'Milano -> Genova', 130, 9.199175230263801, 45.440081916058936, 8.942081483098663, 44.42347338740468,
  'LINESTRING(9.199175230263801 45.440081916058936, 8.942081483098663 44.42347338740468)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (22, 1, 'Genova -> Milano', 130, 8.942081483098663, 44.42347338740468, 9.199175230263801, 45.440081916058936, 
  'LINESTRING(8.942081483098663 44.42347338740468, 9.199175230263801 45.440081916058936)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (23, 1, 'Genova -> Pisa', 155, 8.942081483098663, 44.42347338740468, 10.40034, 43.71644, 
  'LINESTRING(8.942081483098663 44.42347338740468, 10.40034 43.71644)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (24, 1, 'Pisa -> Genova', 150, 10.40034, 43.71644,  8.942081483098663, 44.42347338740468, 
  'LINESTRING(10.40034 43.71644, 8.942081483098663 44.42347338740468)'::geometry);

INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (8, 1, 'Venezia -> Milano', 225, 12.335538656789184, 45.43865064671172, 9.199175230263801, 45.440081916058936, 
  'LINESTRING(12.335538656789184 45.43865064671172, 9.199175230263801 45.440081916058936)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (9, 1, 'Venezia -> Bologna', 140,  12.335538656789184, 45.43865064671172, 11.330748811292002, 44.5042988241174,
  'LINESTRING(12.335538656789184 45.43865064671172, 11.330748811292002 44.5042988241174)'::geometry);


--- SICILY ---

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (13, 1,  'Palermo -> Messina', 110, 13.409106267526628, 38.099642706098194, 15.534225776333553, 38.17085835711691, 
  'LINESTRING(13.409106267526628 38.099642706098194, 15.534225776333553 38.17085835711691)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (14, 1, 'Messina -> Palermo', 115, 15.534225776333553, 38.17085835711691, 13.409106267526628, 38.099642706098194,  
  'LINESTRING(15.534225776333553 38.17085835711691, 13.409106267526628 38.099642706098194)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (15, 1, 'Messina -> Catania', 75, 15.534225776333553, 38.17085835711691, 15.048970669177173, 37.51021337156535, 
  'LINESTRING(15.534225776333553 38.17085835711691, 15.048970669177173 37.51021337156535)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (16, 1, 'Catania -> Messina', 70, 15.048970669177173, 37.51021337156535, 15.534225776333553, 38.17085835711691, 
  'LINESTRING(15.048970669177173 37.51021337156535, 15.534225776333553 38.17085835711691)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (17, 1, 'Catania -> Palermo', 100, 15.048970669177173, 37.51021337156535, 13.409106267526628, 38.099642706098194,
  'LINESTRING(15.048970669177173 37.51021337156535, 13.409106267526628 38.099642706098194)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (18, 1, 'Palermo -> Catania', 100, 13.409106267526628, 38.099642706098194, 15.048970669177173, 37.51021337156535,
  'LINESTRING(13.409106267526628 38.099642706098194, 15.048970669177173 37.51021337156535)'::geometry);


--- SARDINIA ---

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (19, 1, 'Cagliari -> Sassari', 165, 9.135835161024927, 39.21108175258055, 8.590815857964703, 40.71219080275563,
  'LINESTRING(9.135835161024927 39.21108175258055, 8.590815857964703 40.71219080275563)'::geometry);

  INSERT INTO ways(gid,class_id, name,  cost, x1, y1, x2, y2, the_geom)
  VALUES (20, 1, 'Sassari -> Cagliari', 160, 8.590815857964703, 40.71219080275563, 9.135835161024927, 39.21108175258055, 
  'LINESTRING(8.590815857964703 40.71219080275563, 9.135835161024927 39.21108175258055)'::geometry);