CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL
);

CREATE TABLE user_roles (
  id SERIAL PRIMARY KEY,
  id_role int NOT NULL,
  id_user int NOT NULL
);
CREATE TABLE roles (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL
);

alter table user_roles 
add constraint fk_ur_users FOREIGN KEY (id_user)
REFERENCES users(id);

ALTER TABLE user_roles 
add constraint fk_ur_roles FOREIGN KEY (id_role)
REFERENCES roles(id);

ALTER TABLE roles
ADD constraint roles_unique UNIQUE(name);

insert into users(name)
VALUES
('Budi'),
('Toni'),
('Putri'),
('Dian'),
('Gunawan');

INSERT INTO roles(name)
VALUES
('Admin'),
('Customer');

insert INTO user_roles(id_role, id_user)
VALUES
(1,1), 
(2,2), 
(2,3), 
(1,4), 
(1,5); 






