-- Tabla de clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,       -- Entero: identificador unico del cliente
    nombre VARCHAR(100),              -- Texto de longitud variable, maximo 100 caracteres
    perfil_bio VARCHAR(MAX),          -- Texto largo para biografia o notas
    fecha_registro DATE               -- Fecha sin componente horario
);

-- Tabla de productos
CREATE TABLE productos (
    id_producto INT PRIMARY KEY,      -- Entero: identificador unico del producto
    descripcion VARCHAR(255),         -- Texto de longitud variable, maximo 255 caracteres
    precio DECIMAL(10,2),             -- Numero decimal exacto para dinero, dos decimales
    esta_activo BIT                   -- Booleano en SQL Server: 1 activo, 0 inactivo
);
