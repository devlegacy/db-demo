CREATE TABLE prices(
  id SERIAL NOT NULL,
  service_station_id INT NOT NULL,
  combustible_id INT NOT NULL,
  user_id INT NOT NULL,
  price NUMERIC(7,2) NOT NULL DEFAULT 0,
  CONSTRAINT pk_prices_id PRIMARY KEY (id),
  CONSTRAINT fk_prices_service_station_id FOREIGN KEY (service_station_id)
    REFERENCES service_stations (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT fk_prices_combustible_id FOREIGN KEY (combustible_id)
    REFERENCES combustibles (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT fk_prices_user_id FOREIGN KEY (user_id)
    REFERENCES users (id) ON DELETE RESTRICT ON UPDATE RESTRICT
);
