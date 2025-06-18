CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(80) NOT NULL,
  password VARCHAR(120) NOT NULL,
  email VARCHAR(80) NOT NULL
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
ALTER TABLE users
ADD constraint users_unique UNIQUE(email);

insert into users(name, password, email)
VALUES
('Budi', '111111', 'budi1@gmail.com'),
('Toni', '222222', 'tono2@gmail.com'),
('Putri', '333333', 'putri3@gmail.com'),
('Dian', '444444', 'dian4@gmail.com'),
('Gunawan', '555555', 'gunawan5@gmail.com');

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

select u.id as id_user, u.name as name_user, u.email, r.name as name_role from users u
join user_roles ur on ur.id_user = u.id
join roles r on r.id = ur.id_role
where password = '222222' and email = 'toni2@gmail.com';
