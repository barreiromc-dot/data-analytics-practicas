
# Módulo 6 - Pipeline ETL con Power Query y M

**Curso:** Data Analytics — Coderhouse  
**Proyecto:** TechStore | Pre-entrega 6  
**Estudiante:** Cecilia Barreiro  
**Herramientas:** Power BI Desktop, Power Query, lenguaje M y Excel

---

## 1. Objetivo del proyecto

Construir un pipeline ETL reproducible a partir del archivo `Pipeline_ETL_Dataset.xlsx`, identificando y resolviendo problemas de calidad de datos para preparar un conjunto de tablas limpias y estructuradas.

El objetivo es disponer de una base confiable para el desarrollo del modelo analítico y las visualizaciones en Power BI.

## 2. Extracción y conexión de datos

Se utilizó como fuente el archivo Excel proporcionado por Coderhouse, que contiene cuatro hojas:

- `clientes`
- `productos`
- `categorias`
- `ventas`

La importación se realizó mediante Power BI Desktop y las transformaciones se aplicaron en el Editor de Power Query.

## 3. Perfilado y limpieza de datos

Se analizaron los valores nulos, registros duplicados y tipos de datos para identificar problemas de calidad.

| Tabla | Transformación realizada | Justificación |
|---|---|---|
| Dim_Clientes | Eliminación de duplicados por id_cliente | Garantizar la unicidad de los clientes |
| Dim_Clientes | Reemplazo de email nulo por "Sin informar" | Conservar el registro sin inventar un correo |
| Dim_Clientes | Reemplazo de ciudad nula por "Sin datos" | Mantener el cliente e identificar la ausencia de información |
| Dim_Productos | Eliminación de duplicados por id_producto | Evitar duplicaciones en las relaciones |
| Dim_Productos | Asignación de categoría "Computación" al producto 111 | Clasificación respaldada por la subcategoría "Laptops" |
| Dim_Productos | Recuperación del precio del producto 109 con valor 130 | Utilizar el precio_unitario observado en ventas |
| Dim_Categorias | Filtrado de IDs nulos | Preservar la integridad de la tabla |
| Fact_Ventas | Filtrado de IDs de venta nulos | Conservar transacciones identificables |

## 4. Transformaciones y tipos de datos

Se verificaron y ajustaron los tipos de datos según la naturaleza de cada campo:

- **Número entero:** identificadores, cantidad, stock y activo.
- **Número decimal:** precio, costo, precio_unitario, descuento y total_venta.
- **Fecha:** fecha_registro y fecha_venta, utilizando configuración regional Español (Argentina).
- **Texto:** nombres, categorías, ciudades, países, segmentos, canales y correos electrónicos.

Las consultas fueron renombradas siguiendo una nomenclatura profesional de dimensiones y hechos.

## 5. Merge de consultas

Se realizó una combinación de consultas entre `Fact_Ventas` y `Dim_Productos`, utilizando `id_producto` como campo común.

**Tipo de combinación:** LEFT OUTER JOIN.

Se incorporaron las columnas:

- `nombre_producto`
- `categoria`

La combinación permitió enriquecer la información transaccional conservando las 50 ventas originales.

## 6. Documentación en lenguaje M

Se incorporaron comentarios técnicos en el Editor avanzado de Power Query para documentar las transformaciones realizadas.

Los comentarios explican las decisiones de limpieza, tratamiento de valores nulos, eliminación de duplicados y combinación de consultas.

Esto permite mejorar la trazabilidad y facilitar el mantenimiento del proceso ETL.

## 7. Resultados finales

| Tabla | Registros finales |
|---|---:|
| Dim_Clientes | 11 |
| Dim_Productos | 12 |
| Dim_Categorias | 4 |
| Fact_Ventas | 50 |

Los resultados corresponden a los conteos documentados en la pre-entrega.

## 8. Archivos del proyecto

**Proyecto Power BI:**

[Pipeline_ETL_Barreiro_Cecilia.pbix](./Pipeline_ETL_Barreiro_Cecilia.pbix)

**Documentación de la pre-entrega:**

[Pipeline_ETL_Barreiro_Cecilia.pdf](./Pipeline_ETL_Barreiro_Cecilia.pdf)

## 9. Conclusión

El proceso ETL permitió transformar un conjunto de datos con problemas de calidad en cuatro consultas estructuradas y documentadas.

La eliminación de duplicados, el tratamiento justificado de valores nulos, la corrección de tipos de datos y la combinación de consultas contribuyen a mejorar la integridad y confiabilidad de la información.

Este trabajo constituye la base para continuar desarrollando el modelo analítico en Power BI durante los próximos módulos del curso.

