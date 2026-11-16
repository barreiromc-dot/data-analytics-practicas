USE Ventas_Tech_DB;
GO

-- Consulta 1: Resumen ejecutivo mensual

SELECT
    MONTH(fecha_venta) AS mes,
    SUM(cantidad * precio_unitario) AS total_facturado,
    COUNT(*) AS cantidad_pedidos,
    AVG(cantidad * precio_unitario) AS ticket_promedio
FROM ventas
GROUP BY MONTH(fecha_venta);

-- Consulta 2: Ranking de productos

SELECT 
    TOP 5 id_producto, 
    SUM(cantidad * precio_unitario) AS total_facturado, 
    SUM(cantidad) AS unidades_vendidas
FROM ventas
GROUP BY id_producto
ORDER BY total_facturado DESC;

-- Consulta 3: Clientes recurrentes

SELECT 
    id_cliente, 
    COUNT(*) AS cantidad_pedidos, 
    SUM(cantidad * precio_unitario) AS total_facturado
FROM ventas
GROUP BY id_cliente
HAVING COUNT(*) > 1;

-- Consulta 4: Productos por encima/por debajo del promedio

WITH facturacion_por_producto AS (
    SELECT
        id_producto,
        SUM(cantidad * precio_unitario) AS total_facturado
    FROM ventas
    GROUP BY id_producto
)
SELECT
    id_producto,
    total_facturado,
    CASE
        WHEN total_facturado > (SELECT AVG(total_facturado) FROM facturacion_por_producto)
            THEN 'Por encima'
        ELSE 'Por debajo'
    END AS clasificacion 
FROM facturacion_por_producto;

-- ==========================================
-- HALLAZGOS DE NEGOCIO
-- ==========================================

-- Resumen ejecutivo: Durante marzo de 2024 se registraron 10 pedidos, con una facturación total de 6.444,00 y un ticket promedio de 644,40

-- Hallazgo 1 - Ranking de productos: El producto 1 concentra el 55,87% de la facturación mensual, evidenciando una alta dependencia comercial de un único producto
-- Se recomienda analizar oportunidades para diversificar las ventas y reducir esta concentración

-- Hallazgo 2 - Clientes recurrentes: Los clientes 1 y 5 representan conjuntamente el 73,56% de la facturación mensual
-- Se recomienda priorizar acciones de fidelización para estos clientes y desarrollar estrategias para incrementar el gasto del resto de la cartera

-- Hallazgo 3 - Comparación con el promedio: Solo 2 de los 6 productos superan el promedio de facturación por producto (1.074,00). Ambos concentran el 76,82% de las ventas totales
-- Se recomienda analizar el desempeño de los productos restantes e identificar oportunidades de crecimiento
            