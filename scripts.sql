CREATE TABLE available_locations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    geom GEOMETRY(GEOMETRY, 4326) -- Guardamos cualquier tipo de geometría en SRID 4326
);


INSERT INTO available_locations (name, geom) 
VALUES ('Malecón 2000', ST_GeomFromText('POINT(-79.877704 -2.187010)', 4326));

INSERT INTO available_locations (name, geom) 
VALUES ('Parque Seminario', ST_GeomFromText('POINT(-79.883358 -2.189383)', 4326));

INSERT INTO available_locations (name, geom) 
VALUES ('Las Peñas', ST_GeomFromText('POINT(-79.877349 -2.183440)', 4326));

INSERT INTO available_locations (name, geom) 
VALUES ('Cerro Santa Ana', ST_GeomFromText('POINT(-79.877558 -2.183003)', 4326));

INSERT INTO available_locations (name, geom) 
VALUES ('Aeropuerto José Joaquín de Olmedo', ST_GeomFromText('POINT(-79.884856 -2.157717)', 4326));

INSERT INTO available_locations (name, geom) 
VALUES ('Universidad de Guayaquil', ST_GeomFromText('POINT(-79.907662 -2.165907)', 4326));

INSERT INTO available_locations (name, geom) 
VALUES ('Estadio Monumental Isidro Romero Carbo', ST_GeomFromText('POINT(-79.922778 -2.203056)', 4326));

INSERT INTO available_locations (name, geom) 
VALUES ('Estadio George Capwell', ST_GeomFromText('POINT(-79.892154 -2.220199)', 4326));

INSERT INTO available_locations (name, geom) 
VALUES ('Terminal Terrestre Guayaquil', ST_GeomFromText('POINT(-79.889091 -2.157617)', 4326));

INSERT INTO available_locations (name, geom) 
VALUES ('Puerto Santa Ana', ST_GeomFromText('POINT(-79.876873 -2.182579)', 4326));
