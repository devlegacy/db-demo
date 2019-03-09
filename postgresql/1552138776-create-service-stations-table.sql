CREATE TABLE service_stations(
  id SERIAL NOT NULL,
  name VARCHAR(100) NOT NULL,
  city_id INT NOT NULL,
  latitude NUMERIC(10,7) NOT NULL DEFAULT 0,
  longitude NUMERIC(10,7) NOT NULL DEFAULT 0,
  CONSTRAINT pk_service_stations_id PRIMARY KEY (id),
  CONSTRAINT fk_service_stations_city_id FOREIGN KEY (city_id)
    REFERENCES cities (id) ON DELETE RESTRICT ON UPDATE RESTRICT
);
