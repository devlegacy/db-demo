CREATE TABLE countries(
  id SERIAL NOT NULL,
  name VARCHAR(50) NOT NULL,

  CONSTRAINT pk_countries_id PRIMARY KEY (id),
  CONSTRAINT uq_countries_name UNIQUE (name)
);
