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
  id SERIAL PRIMARY
  name VARCHAR(80) UNIQUE
);

alter table user_roles (
add constraint fk_ur_users FOREIGN KEY (id_user)
REFERENCES users(id));

ALTER TABLE user_roles (
add constraint fk_ur_roles FOREIGN KEY (id_role)
REFERENCES roles(id));




