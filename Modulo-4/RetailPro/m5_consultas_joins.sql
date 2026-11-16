-- Consulta 1: Vista base del proyecto (INNER JOIN)
-- Propósito: integrar las ventas con los datos de clientes, productos y categorías para analizar la facturación del negocio

SELECT c.id_cliente, c.nombre, c.ciudad,
v.fecha_venta, v.id_venta, v.cantidad, v.precio_unitario,
p.id_producto, p.nombre_producto,
cat.id_categoria, cat.nombre_categoria,
(v.cantidad * v.precio_unitario) AS total_venta
FROM clientes c
INNER JOIN ventas v ON c.id_cliente = v.id_cliente
INNER JOIN productos p ON v.id_producto = p.id_producto
INNER JOIN categorias cat ON p.id_categoria = cat.id_categoria;

-- Hallazgo: En marzo de 2024 se registraron 10 ventas por un total de $6.444, distribuidas entre 5 clientes

-- Consulta 2: Clientes sin ventas (LEFT JOIN)
-- Propósito: identificar clientes registrados sin compras para que CRM pueda evaluar acciones de activación

SELECT c.nombre, c.email, c.fecha_registro
FROM clientes c
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE v.id_venta IS NULL;

-- Hallazgo: Los 5 clientes registrados realizaron compras. CRM no tiene clientes pendientes de activación por falta de compras en este conjunto de datos

-- Consulta 3: Productos sin ventas (LEFT JOIN)
-- Propósito: detectar productos del catálogo sin ventas para que el área de Producto evalúe su desempeño

SELECT p.nombre_producto, p.precio, cat.nombre_categoria
FROM productos p
LEFT JOIN ventas v ON p.id_producto = v.id_producto
INNER JOIN categorias cat ON cat.id_categoria = p.id_categoria
WHERE v.id_venta IS NULL;

-- Hallazgo: Los 6 productos del catálogo registraron ventas. El área de Producto no identifica artículos sin movimiento en los datos analizados

-- Consulta 4: Consolidado por períodos (UNION ALL)
-- Propósito: comparar la facturación de dos períodos de marzo para identificar diferencias en los ingresos

SELECT canal, SUM(total) AS total_canal
FROM (
	SELECT fecha_venta, (cantidad * precio_unitario) AS total, 'Periodo 1' AS canal
	FROM dbo.ventas
	WHERE fecha_venta BETWEEN '2024-03-01' AND '2024-03-10'
	UNION ALL
	SELECT fecha_venta, (cantidad * precio_unitario) AS total, 'Periodo 2' AS canal
	FROM dbo.ventas
	WHERE fecha_venta BETWEEN '2024-03-11' AND '2024-03-31'
) AS consolidado
GROUP BY canal;

-- Hallazgo: El Período 1 registró una facturación de $3.620, superando al Período 2 ($2.824) por $796. El 56,18% de la facturación se concentró en el primer período