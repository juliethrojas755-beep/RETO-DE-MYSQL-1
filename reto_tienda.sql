-- Nombre del Camper: Julieth Tatiana Rojas

-- ===========================================
-- CREACIÓN DE LA BASE DE DATOS
-- ===========================================

CREATE DATABASE Tienda;
USE Tienda;

-- ===========================================
-- CREACIÓN DE TABLAS
-- ===========================================

CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(20)
);

CREATE TABLE Productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL
);

-- ===========================================
-- INSERCIÓN DE DATOS
-- ===========================================

-- Clientes (5)

INSERT INTO Clientes (nombre, email, telefono) VALUES
('Ana Martínez', 'ana@gmail.com', '3001112233'),
('Carlos Pérez', 'carlos@gmail.com', '3012223344'),
('Laura Gómez', 'laura@gmail.com', '3023334455'),
('Juan Rodríguez', 'juan@gmail.com', '3034445566'),
('María Torres', 'maria@gmail.com', '3045556677');

-- Productos (8)

INSERT INTO Productos (nombre, precio, stock) VALUES
('Laptop Lenovo', 2500000.00, 8),
('Mouse Logitech', 85000.00, 20),
('Teclado Mecánico', 220000.00, 6),
('Monitor Samsung', 980000.00, 4),
('Memoria USB 64GB', 45000.00, 15),
('Disco SSD 1TB', 420000.00, 3),
('Audífonos Bluetooth', 180000.00, 12),
('Webcam HD', 160000.00, 2);

-- Pedidos (10)

INSERT INTO Pedidos (cliente, fecha, total) VALUES
('Ana Martínez', '2026-07-01', 320000.00),
('Carlos Pérez', '2026-07-03', 450000.00),
('Laura Gómez', '2026-07-05', 980000.00),
('Juan Rodríguez', '2026-07-08', 125000.00),
('María Torres', '2026-07-10', 215000.00),
('Ana Martínez', '2026-07-12', 750000.00),
('Carlos Pérez', '2026-07-15', 1300000.00),
('Laura Gómez', '2026-07-18', 185000.00),
('Juan Rodríguez', '2026-07-20', 260000.00),
('María Torres', '2026-07-22', 540000.00);

-- ===========================================
-- CONSULTAS FUNDAMENTALES
-- ===========================================

-- 1. Mostrar todos los clientes registrados.

SELECT * FROM Clientes;

-- 2. Listar los productos disponibles, ordenados por precio de mayor a menor.

SELECT *
FROM Productos
ORDER BY precio DESC;

-- 3. Obtener los pedidos más recientes, ordenados por fecha.

SELECT *
FROM Pedidos
ORDER BY fecha DESC;

-- 4. Calcular el total de ingresos, sumando los montos de los pedidos.

SELECT SUM(total) AS Total_Ingresos
FROM Pedidos;

-- 5. Encontrar los productos con stock menor a 5 unidades.

SELECT *
FROM Productos
WHERE stock < 5;