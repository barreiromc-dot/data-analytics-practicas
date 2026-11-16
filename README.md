# Data Analytics | Coderhouse

Repositorio de prácticas y proyectos desarrollados durante mi formación en **Data Analytics en Coderhouse**.

Los trabajos incluyen diseño de bases de datos relacionales, normalización, implementación de scripts SQL, consultas de análisis de negocio e integración de información de múltiples tablas.

---

## Módulo 2 — Diseño de bases de datos

- Diseño y definición de estructuras de datos.
- Aplicación de conceptos de modelado relacional y normalización.
- Identificación de claves primarias y foráneas.
- Creación de tablas mediante SQL.

**Archivo:** `Modulo-2/modulo2_unidad1_diseno.sql`

---

## Módulo 3 — SQL Server

### BodegaTech — Gestión de inventario

- Creación de una tabla de inventario.
- Inserción y actualización de registros.
- Gestión de productos, precios y stock.
- Validación de datos mediante consultas SQL.

**Archivo:** `Modulo-3/BodegaTech-Script-Inventario.sql`

### TechStore — Pre-entrega 3

Creación de una base de datos relacional para la gestión de ventas de una tienda de tecnología.

- Creación de la base de datos `Ventas_Tech_DB`.
- Diseño de cuatro tablas relacionadas: clientes, productos, categorías y ventas.
- Definición de claves primarias y foráneas.
- Carga y validación de 25 registros.
- Implementación de un script SQL reutilizable.

**Archivo:** `Modulo-3/ventas_tech_db.sql`

---

## Módulo 4 — Consultas SQL de negocio

### RetailPro — Análisis de ventas

Desarrollo de consultas SQL para analizar el desempeño comercial de una empresa de tecnología, utilizando la base de datos `Ventas_Tech_DB`.

**Consultas desarrolladas:**

1. **Resumen ejecutivo mensual:** cálculo de facturación total, cantidad de pedidos y ticket promedio.
2. **Ranking de productos:** identificación de los cinco productos con mayor facturación y sus unidades vendidas.
3. **Clientes recurrentes:** identificación de clientes con más de una compra y análisis de su gasto total.
4. **Clasificación de productos:** comparación de la facturación de cada producto con el promedio mediante CTE y `CASE WHEN`.

Las consultas incluyen hallazgos de negocio y recomendaciones basadas en los resultados obtenidos.

**Archivo:** `RetailPro/m4_consultas_negocio.sql`

---

## Módulo 5 — Consultas con JOINs

### RetailPro — Integración y análisis de datos

Desarrollo de consultas para combinar información de distintas tablas y generar una vista enriquecida de las ventas, que servirá como base para futuros análisis y visualizaciones en Power BI.

**Consultas desarrolladas:**

1. **Vista base del proyecto (`INNER JOIN`):** integración de ventas, clientes, productos y categorías, incorporando información geográfica y facturación por venta.
2. **Clientes sin ventas (`LEFT JOIN`):** identificación de clientes registrados que todavía no realizaron compras.
3. **Productos sin ventas (`LEFT JOIN`):** detección de artículos del catálogo sin movimientos comerciales.
4. **Consolidado por períodos (`UNION ALL`):** comparación de la facturación entre dos períodos de marzo de 2024.

Cada consulta incluye su propósito y un hallazgo que interpreta los resultados desde una perspectiva de negocio.

**Archivo:** `RetailPro/m5_consultas_joins.sql`

---

## Resultados principales de RetailPro

A partir de los datos analizados correspondientes a marzo de 2024, se identificaron los siguientes resultados:

- **10 ventas**, con una facturación total de **$6.444**.
- **5 clientes registrados**, todos con compras realizadas.
- **6 productos**, todos con ventas registradas.
- Facturación de **$3.620** entre el 1 y el 10 de marzo.
- Facturación de **$2.824** entre el 11 y el 31 de marzo.
- El primer período concentró el **56,18% de la facturación total**.

Estos resultados permiten analizar el desempeño comercial, identificar oportunidades de mejora y establecer una base de información para futuros dashboards.

---

## Herramientas utilizadas

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

### Conocimientos SQL aplicados

- Modelado de bases de datos relacionales.
- Claves primarias y foráneas.
- Sentencias DDL y DML.
- Consultas `SELECT`, filtros y agrupaciones.
- Funciones de agregación: `SUM`, `COUNT` y `AVG`.
- `GROUP BY`, `HAVING` y `ORDER BY`.
- `INNER JOIN` y `LEFT JOIN`.
- `UNION ALL`.
- Subconsultas y expresiones de tabla comunes (CTE).
- Expresiones condicionales `CASE WHEN`.

---

## Organización del repositorio

**Modulo-2/**

- `modulo2_unidad1_diseno.sql`

**Modulo-3/**

- `BodegaTech-Script-Inventario.sql`
- `ventas_tech_db.sql`
- `README.md`

**RetailPro/**

- `ventas_tech_db.sql`
- `m4_consultas_negocio.sql`
- `m5_consultas_joins.sql`
- `README.md`

---

## Próximos pasos

Continuar desarrollando el proyecto RetailPro, utilizando las consultas SQL y la información integrada como base para crear indicadores, visualizaciones y dashboards interactivos en **Power BI**.

---

*Repositorio en desarrollo, actualizado progresivamente durante mi formación en Data Analytics en Coderhouse.*
