CREATE TABLE combustibles(
  id SERIAL NOT NULL,
  name VARCHAR(50) NOT NULL,

  CONSTRAINT pk_combustibles_id PRIMARY KEY (id),
  CONSTRAINT uq_combustibles_name UNIQUE (name)
);
