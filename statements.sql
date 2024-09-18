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
-- ALTER TABLE usuarios ADD FOREIGN KEY (id_rol) REFERENCES roles(id_rol);

-- UPDATE usuarios_2 SET id_rol = 1 WHERE id = 1;
-- UPDATE usuarios_2 SET id_rol = 2 WHERE id = 2;
-- UPDATE usuarios_2 SET id_rol = 3 WHERE id = 3;
-- UPDATE usuarios_2 SET id_rol = 4 WHERE id = 4;


-- PASO 4
-- Tu código aquí


/* Relación tipo 1:N */
-- PASO 1
-- Tu código aquí


-- PASO 2
-- Tu código aquí


-- PASO 3
-- Tu código aquí


-- PASO 4
-- Tu código aquí

/* Relación tipo N:M */
-- PASO 1
-- Tu código aquí


-- PASO 2
-- Tu código aquí


-- PASO 3
-- Tu código aquí
