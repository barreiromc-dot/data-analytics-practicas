# RetailPro — Consultas SQL de negocio

## Descripción del proyecto

Este proyecto forma parte del curso de Data Analytics de Coderhouse y tiene como objetivo analizar las ventas de una empresa de tecnología utilizando SQL Server.

Las consultas permiten obtener indicadores comerciales, identificar oportunidades de negocio y combinar información de clientes, productos, categorías y ventas.

## Base de datos

- **Nombre:** `Ventas_Tech_DB`
- **Motor:** Microsoft SQL Server
- **Tablas:** `clientes`, `productos`, `categorias` y `ventas`

## Módulo 4 — Consultas SQL de negocio

**Archivo:** `m4_consultas_negocio.sql`

Contiene cuatro consultas:

1. **Resumen mensual:** facturación total, cantidad de pedidos y ticket promedio.
2. **Ranking de productos:** los cinco productos con mayor facturación.
3. **Clientes recurrentes:** clientes con más de una compra y su gasto total.
4. **Clasificación de productos:** comparación de la facturación de cada producto con el promedio, utilizando CTE y CASE WHEN.

Incluye tres hallazgos de negocio con recomendaciones basadas en los resultados.

## Módulo 5 — Consultas con JOINs

**Archivo:** `m5_consultas_joins.sql`

Contiene cuatro consultas:

1. **Vista base (INNER JOIN):** integra ventas, clientes, productos y categorías, incorporando ciudad y facturación por venta.
2. **Clientes sin ventas (LEFT JOIN):** identifica clientes registrados que todavía no realizaron compras.
3. **Productos sin ventas (LEFT JOIN):** detecta artículos del catálogo sin movimientos comerciales.
4. **Consolidado por períodos (UNION ALL):** compara la facturación de dos períodos de marzo de 2024.

Cada consulta incluye su propósito y un hallazgo basado en los resultados obtenidos.

## Cómo ejecutar los archivos

1. Abrir Microsoft SQL Server Management Studio (SSMS).
2. Seleccionar la base de datos `Ventas_Tech_DB`.
3. Verificar que las cuatro tablas estén creadas y tengan datos.
4. Abrir `m4_consultas_negocio.sql` o `m5_consultas_joins.sql`.
5. Ejecutar las consultas para visualizar los resultados.

## Resultados principales

Durante marzo de 2024 se registraron:

- **10 ventas** por un total de **$6.444**.
- **5 clientes**, todos con compras registradas.
- **6 productos**, todos con ventas.
- Una facturación de **$3.620** entre el 1 y el 10 de marzo y **$2.824** entre el 11 y el 31 de marzo.

## Próximos pasos

Utilizar las consultas y los datos del proyecto como base para desarrollar visualizaciones e indicadores en Power BI.
