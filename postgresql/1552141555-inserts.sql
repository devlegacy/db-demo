INSERT INTO roles (name) VALUES
('Administrador'),
('Reporteador'),
('Usarios permium');

SELECT * FROM roles;

INSERT INTO users (id, name, email, password, role_id) VALUES
(DEFAULT, 'Pedro','pedro@gmail.com', md5('secure'), NULL),
(DEFAULT, 'Roberto','roberto@gmail.com', md5('secure'), NULL);

SELECT * FROM users;

INSERT INTO permissions (module) VALUES ('Países'), ('ciudades');

SELECT * FROM permissions;

INSERT INTO permission_role (permission_id, role_id) VALUES (1,1),(1,2),(2,2);

SELECT * FROM permission_role;

SELECT p.id, p.module, r.id, r.name
FROM permission_role AS pr
  INNER JOIN permissions AS p ON pr.permission_id = p.id
  INNER JOIN roles AS r ON pr.role_id = r.id;
