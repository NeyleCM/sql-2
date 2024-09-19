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
-- ó ALTER TABLE usuarios ADD FOREIGN KEY (id_rol) REFERENCES roles(id_rol);

-- Puede hacerse antes o depués del UPDATE la FOREIGN KEY - Es mejor hacerlo antes


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
-- UPDATE usuarios_2 SET id_categoria = 1 WHERE id_usuario IN (21, 25, 29, 33, 37); 
-- UPDATE usuarios_2 SET id_categoria = 2 WHERE id_usuario IN (22, 26, 30, 34, 38);
-- UPDATE usuarios_2 SET id_categoria = 3 WHERE id_usuario IN (23, 27, 31, 35, 39);
-- UPDATE usuarios_2 SET id_categoria = 4 WHERE id_usuario IN (24, 28, 32, 36, 40); 
-- UPDATE usuarios_2 SET id_categoria = 1 WHERE id_usuario IN (41, 43, 45, 47, 49); 
-- UPDATE usuarios_2 SET id_categoria = 2 WHERE id_usuario IN (42, 44, 46, 48, 50);




-- PASO 4
-- SELECT usuarios_2.id_usuario, usuarios_2.nombre, usuarios_2.apellido, usuarios_2.email, usuarios_2.edad, roles.nombre_rol, categorias.nombre_categoria
-- FROM  usuarios_2
-- JOIN roles
-- ON usuarios_2.id_rol = roles.id_rol
-- JOIN categorias
-- ON usuarios_2.id_categoria = categorias.id_categoria;

-- ALTER TABLE usuarios ADD FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria);

/* Relación tipo N:M */
-- PASO 1
-- CREATE TABLE usuarios_categorias (
--     id_usuario_categoria INT AUTO_INCREMENT PRIMARY KEY,
--     id_usuario INT,
--     id_categoria INT,
--     FOREIGN KEY (id_usuario) REFERENCES usuarios_2(id_usuario),
--     FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
-- );


-- PASO 2
-- INSERT INTO usuarios_categorias (id_usuario, id_categoria) VALUES
-- (1, 1), (1, 2), (1, 3),   
-- (2, 4), (2, 5),           
-- (3, 6), (3, 7),
-- (4, 8), (4, 9), (4, 10), 
-- (5, 1), (5, 3),
-- (6, 2), (6, 4),    
-- (7, 5), (7, 6),            
-- (8, 7), (8, 8),        
-- (9, 9), (9, 10),        
-- (10, 1), (10, 2),  
-- (11, 3), (11, 4),        
-- (12, 5), (12, 6),      
-- (13, 7), (13, 8),         
-- (14, 9), (14, 10),       
-- (15, 1), (15, 2),         
-- (16, 3), (16, 4),         
-- (17, 5), (17, 6),        
-- (18, 7), (18, 8),        
-- (19, 9), (19, 10),        
-- (20, 1), (20, 2); 


-- PASO 3
-- SELECT usuarios_2.id_usuario, usuarios_2.nombre, usuarios_2.apellido, usuarios_2.email, usuarios_2.edad, roles.nombre_rol, categorias.nombre_categoria
-- FROM usuarios_2
-- JOIN roles 
-- ON usuarios_2.id_rol = roles.id_rol
-- JOIN usuarios_categorias 
-- ON usuarios_2.id_usuario = usuarios_categorias.id_usuario
-- JOIN categorias 
-- ON usuarios_categorias.id_categoria = categorias.id_categoria ORDER BY id_usuario ASC;Ç

-- Ó MÁS SIMPLIFICADO

/* SELECT usuarios.id_usuario, usuarios.nombre, usuarios.apellido, usuarios.email, usuarios.edad, roles.nombre_rol, categorias.nombre_categoria
FROM usuarios
JOIN (roles, usuarios_categorias, categorias)
    ON  usuarios.id_rol = roles.id_rol
    AND usuarios.id_categoria = usuarios_categorias.id_usuario
    AND usuarios_categorias.id_categoria = categorias.id_categoria */