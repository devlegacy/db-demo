CREATE TABLE cities(
  id SERIAL NOT NULL,
  country_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,

  CONSTRAINT pk_cities_id PRIMARY KEY (id),
  CONSTRAINT fk_cities_country_id FOREIGN KEY (country_id)
    REFERENCES countries (id) ON DELETE RESTRICT ON UPDATE RESTRICT
);
