CREATE TABLE roles (
    id SERIAL NOT NULL,
    name VARCHAR(50) NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT pk_roles_id PRIMARY KEY (id),
    CONSTRAINT unique_roles_name UNIQUE (name)
);
COMMENT ON TABLE roles IS 'Roles son los permisos de los usuarios';
