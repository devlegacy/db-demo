CREATE TABLE permission_role(
  id SERIAL,
  permission_id INT NOT NULL,
  role_id INT NOT NULL,

  CONSTRAINT pk_permission_role_id PRIMARY KEY (id),
  CONSTRAINT uq_permission_role_permission_id_role_id UNIQUE(permission_id, role_id),
  CONSTRAINT fk_permission_role_permission_id FOREIGN KEY (permission_id)
    REFERENCES permissions (id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT fk_permission_role_role_id FOREIGN KEY (role_id)
    REFERENCES roles (id) ON DELETE RESTRICT ON UPDATE RESTRICT

);
COMMENT ON TABLE permission_role IS 'Tabla pivote muchos a muchos entre las tablas permissions y roles';
