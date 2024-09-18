/* Relación tipo 1:1 */
-- PASO 1
-- CREATE TABLE usuarios_2 (
--     id_usuario INT AUTO_INCREMENT PRIMARY KEY,
--     nombre VARCHAR(50) NOT NULL,
--     apellido VARCHAR(100) NOT NULL,
--     email VARCHAR(100) NOT NULL,
--     edad INT
-- );


-- PASO 2
-- CREATE TABLE roles (
--     id_rol INT AUTO_INCREMENT PRIMARY KEY,
--     nombre_rol VARCHAR(50) NOT NULL
-- );


-- PASO 3
-- ALTER TABLE usuarios_2 ADD COLUMN id_rol INT;

-- UPDATE usuarios_2 SET id_rol = 1 WHERE id_usuario <= 5;
-- UPDATE usuarios_2 SET id_rol = 2 WHERE id_usuario BETWEEN 6 AND 10;
-- UPDATE usuarios_2 SET id_rol = 3 WHERE id_usuario BETWEEN 11 AND 15;
-- UPDATE usuarios_2 SET id_rol = 4 WHERE id_usuario BETWEEN 16 AND 20;

-- ALTER TABLE usuarios_2 ADD CONSTRAINT fk_usuarios_roles FOREIGN KEY (id_rol) REFERENCES roles(id_rol);


-- PASO 4
-- SELECT usuarios_2.id_usuario, usuarios_2.nombre, usuarios_2.apellido, usuarios_2.email, usuarios_2.edad, roles.nombre_rol 
-- FROM  usuarios_2
-- JOIN roles 
-- ON usuarios_2.id_rol = roles.id_rol;


/* Relación tipo 1:N */
-- PASO 1
-- CREATE TABLE categorias (
--   id_categoria INT AUTO_INCREMENT PRIMARY KEY,
--   nombre_categoria VARCHAR(100) NOT NULL
-- )


-- PASO 2
-- ALTER TABLE usuarios_2 ADD COLUMN id_categoria INT;


-- PASO 3
-- UPDATE usuarios_2 SET id_categoria = 1 WHERE id_usuario IN (1, 5, 9, 13, 17); 
-- UPDATE usuarios_2 SET id_categoria = 2 WHERE id_usuario IN (2, 6, 10, 14, 18);
-- UPDATE usuarios_2 SET id_categoria = 3 WHERE id_usuario IN (3, 7, 11, 15, 19);
-- UPDATE usuarios_2 SET id_categoria = 4 WHERE id_usuario IN (4, 8, 12, 16, 20); 


-- PASO 4
-- SELECT usuarios_2.id_usuario, usuarios_2.nombre, usuarios_2.apellido, usuarios_2.email, usuarios_2.edad, roles.nombre_rol, categorias.nombre_categoria
-- FROM  usuarios_2
-- JOIN roles
-- ON usuarios_2.id_rol = roles.id_rol
-- JOIN categorias
-- ON usuarios_2.id_categoria = categorias.id_categoria;

/* Relación tipo N:M */
-- PASO 1
-- Tu código aquí


-- PASO 2
-- Tu código aquí


-- PASO 3
-- Tu código aquí
