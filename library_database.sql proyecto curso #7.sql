CREATE DATABASE Biblioteca;
USE  biblioteca;

CREATE TABLE LIBROS(libro_id INT AUTO_INCREMENT PRIMARY KEY, titulo varchar(255) not null, autor_id int, 
ano_publicacion VARCHAR(155) );

Create table autores(autor_id INT AUTO_INCREMENT PRIMARY KEY, nombre varchar(70), nacionalidad varchar(50) );

CREATE TABLE lectores (lector_id int auto_increment primary key, 
nombre Varchar(60), apellido varchar(50), email varchar(155), telefono varchar(20), fecha_registro date not null);

CREATE TABLE PRESTAMOS(prestamo_id INT AUTO_INCREMENT PRIMARY KEY, lector_id INT, libro_id int,
fecha_prestamo date not null,
 fecha_devolucion_esperada date not null);

ALTER TABLE libros ADD CONSTRAINT fk_libros_autores FOREIGN KEY (autor_id)  REFERENCES autores(autor_id);
ALTER TABLE prestamos ADD CONSTRAINT fk_prestamos_lectores FOREIGN KEY (lector_id) REFERENCES lectores(lector_id);
ALTER TABLE prestamos ADD CONSTRAINT fk_prestamos_libros FOREIGN KEY (libro_id) REFERENCES libros(libro_id);


INSERT INTO autores (nombre, nacionalidad) VALUES
('Gabriel García Márquez', 'Colombiana'),
('Jane Austen', 'Británica'),
('Miguel de Cervantes', 'Española'),
('Isabel Allende', 'Chilena'),
('Jorge Luis Borges', 'Argentina'),
('J.K. Rowling', 'Británica'),
('Stephen King', 'Estadounidense'),
('Haruki Murakami', 'Japonesa'),
('Pablo Neruda', 'Chilena'),
('Mario Vargas Llosa', 'Peruana');

-- Insertar libros
INSERT INTO libros (titulo, autor_id, ano_publicacion) VALUES
('Cien años de soledad', 1, '1967'),
('El amor en los tiempos del cólera', 1, '1985'),
('Orgullo y prejuicio', 2, '1813'),
('Emma', 2, '1815'),
('Don Quijote de la Mancha', 3, '1605'),
('La casa de los espíritus', 4, '1982'),
('El Aleph', 5, '1949'),
('Ficciones', 5, '1944'),
('Harry Potter y la piedra filosofal', 6, '1997'),
('Harry Potter y la cámara secreta', 6, '1998'),
('It (Eso)', 7, '1986'),
('El resplandor', 7, '1977'),
('Tokio blues', 8, '1987'),
('1Q84', 8, '2009'),
('Veinte poemas de amor y una canción desesperada', 9, '1924'),
('La ciudad y los perros', 10, '1963');

select * from libros;

INSERT INTO lectores (nombre, apellido, email, telefono, fecha_registro) VALUES
('Pedro', 'González', 'pedro.gonzalez@gmail.com', '555-1001', '2023-01-15'),
('Laura', 'Martínez', 'laura.martinez@gmail.com', '555-1002', '2023-02-20'),
('Carlos', 'Rodríguez', 'carlos.rodriguez@gmail.com', '555-1003', '2023-03-10'),
('Ana', 'López', 'ana.lopez@gmail.com', '555-1004', '2023-04-05'),
('Miguel', 'Fernández', 'miguel.fernandez@gmail.com', '555-1005', '2023-05-12'),
('Sofía', 'Sánchez', 'sofia.sanchez@gmail.com', '555-1006', '2023-06-18'),
('Diego', 'Ramírez', 'diego.ramirez@gmail.com', '555-1007', '2023-07-22'),
('Valentina', 'Torres', 'valentina.torres@gmail.com', '555-1008', '2023-08-30'),
('Javier', 'Flores', 'javier.flores@gmail.com', '555-1009', '2023-09-14'),
('María', 'Castro', 'maria.castro@gmail.com', '555-1010', '2023-10-25');

select * from lectores;

INSERT INTO prestamos (lector_id, libro_id, fecha_prestamo, fecha_devolucion_esperada) VALUES
(1, 1, '2024-10-01', '2024-10-15'),
(2, 3, '2024-10-05', '2024-10-19'),
(3, 9, '2024-10-10', '2024-10-24'),
(4, 7, '2024-10-15', '2024-10-29'),
(5, 2, '2024-10-20', '2024-11-03');


INSERT INTO prestamos (lector_id, libro_id, fecha_prestamo, fecha_devolucion_esperada) VALUES
(1, 5, '2024-11-20', '2024-12-04'),
(2, 11, '2024-11-22', '2024-12-06'),
(6, 13, '2024-11-25', '2024-12-09'),
(7, 6, '2024-11-28', '2024-12-12'),
(8, 10, '2024-12-01', '2024-12-15');


INSERT INTO prestamos (lector_id, libro_id, fecha_prestamo, fecha_devolucion_esperada) VALUES
(9, 12, '2024-12-03', '2024-12-17'),
(10, 4, '2024-12-04', '2024-12-18'),
(3, 8, '2024-12-05', '2024-12-19');

