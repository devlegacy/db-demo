CREATE TABLE permissions(
  id SERIAL NOT NULL,
  module VARCHAR(50) NOT NULL,

  CONSTRAINT pk_permission_id PRIMARY KEY (id),
  CONSTRAINT uq_permission_module UNIQUE (module)
);
