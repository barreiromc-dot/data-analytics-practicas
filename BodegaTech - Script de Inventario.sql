-- ══════════════════════════════════════════

-- BodegaTech — Script de Inventario
-- Autor: Cecilia Barreiro
-- Fecha: 2026-10-28

-- ══════════════════════════════════════════

-- ── SECCIÓN DDL ──────────────────────────

CREATE DATABASE BodegaTech;
GO

USE BodegaTech;
GO

-- DROP TABLE
DROP TABLE IF EXISTS inventario;
GO

-- CREATE TABLE
CREATE TABLE inventario (
id_producto INT IDENTITY(1,1) PRIMARY KEY, -- INT porque el identificador es un numero entero y unico
nombre_producto VARCHAR(100) NOT NULL, -- VARCHAR porque almacena texto de longitud variable, hasta 100 caracteres
categoria VARCHAR(50) NOT NULL, -- VARCHAR porque almacena texto de longitud variable, hasta 50 caracteres
precio_unitario decimal(10,2) NOT NULL, -- DECIMAL porque permite guardar precios exactos con 2 decimales, evitando errores de redondeo
stock_actual INT NOT NULL, -- INT porque representa la cantidad de unidades disponibles
stock_minimo INT NOT NULL, -- INT porque representa la cantidad minima de unidades para reposicion
fecha_ingreso DATE NOT NULL, -- DATE porque permite almacenar la fecha de ingreso del producto al inventario sin incluir la hora
activo BIT -- BIT porque solo necesitamos dos estados: 1 = disponible y 0 = descontinuado
);

-- ── SECCIÓN DML ──────────────────────────

-- INSERT INTO
INSERT INTO inventario (nombre_producto, categoria, precio_unitario,stock_actual, stock_minimo, fecha_ingreso, activo ) VALUES
('Laptop Pro 15', 'Computación', 1200.00, 15, 3, '20240110', 1),
('Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '20240110', 1),
('Monitor 4K 27"', 'Computación', 450.00, 12, 2, '20240115', 1),
('Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '20240115', 1),
('Laptop Basic 14', 'Computación', 650.00, 20, 3, '20240201', 1),
('Auriculares BT Pro', 'Audio', 120.00, 35, 5, '20240201', 1),
('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '20240210', 1),
('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '20240210', 1),
('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '20240301', 1),
('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '20240301', 1);

-- UPDATE ventas del día
UPDATE inventario
SET stock_actual = stock_actual - 3
WHERE id_producto = 1;

UPDATE inventario
SET stock_actual = stock_actual - 12
WHERE id_producto = 2;

UPDATE inventario
SET stock_actual = stock_actual - 5
WHERE id_producto = 6;

-- UPDATE producto descontinuado
UPDATE inventario
SET activo = 0
WHERE id_producto = 8;

-- SELECT validaciones
SELECT * FROM inventario;