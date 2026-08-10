# Retail Store Sales — Limpieza y Análisis de Datos
## Descripción del proyecto
Este proyecto consiste en la limpieza y análisis exploratorio de un dataset de transacciones de una tienda retail, usando MySQL para el procesamiento de datos. El dataset fue diseñado intencionalmente con inconsistencias ("dirty data") para practicar detección y tratamiento de valores nulos, duplicados y errores de formato.
## Fuente de datos
- **Dataset:** Retail Store Sales: Dirty for Data Cleaning
- **Fuente:** [Kaggle](https://www.kaggle.com/datasets/ahmedmohamed2003/retail-store-sales-dirty-for-data-cleaning)
- **Filas originales:** 12,575
- **Filas tras limpieza:** 11,971
- **Columnas:** 11
## Estructura del dataset
| Columna | Descripción |
|---|---|
| Transaction_ID | Identificador único de transacción |
| Customer_ID | Identificador del cliente |
| Category | Categoría del producto (8 categorías) |
| Item | Producto específico |
| Price_Per_Unit | Precio unitario |
| Quantity | Cantidad comprada |
| Total_Spent | Total gastado |
| Payment_Method | Método de pago  |
| Location | Ubicación de la compra |
| Transaction_Date | Fecha de la transacción |
| Discount_Applied | Si se aplicó descuento (True/False) |
## Herramientas utilizadas
- MySQL 8.0 (limpieza mediante SQL)
- MySQL Workbench / CLI
## Hallazgos de calidad de datos
| Columna | Estado |
|---|---|
| Transaction_ID | ✅ Sin nulos, formato consistente |
| Customer_ID | ✅ Sin problemas |
| Category | ✅ 8 categorías, sin nulos ni duplicados |
| Item | ⚠️ 1,213 filas sin valor |
| Price_Per_Unit | ⚠️ 609 filas sin valor (subconjunto de las filas sin Item) |
| Quantity | ⚠️ 604 filas sin valor (subconjunto de las filas sin Item) |
| Total_Spent | ⚠️ 604 filas sin valor, coincide con las de Quantity |
| Payment_Method | ✅ 3 categorías, sin nulos |
| Location | ✅ Online / In-store, sin nulos |
| Transaction_Date | ✅ Sin nulos |
| Discount_Applied | ⚠️ 4,199 filas sin valor, sin correlación con otras columnas |
**Nota sobre consistencia:** de las 11,362 filas donde `Price_Per_Unit`, `Quantity` y `Total_Spent` están presentes, el 100% cumple `Price_Per_Unit × Quantity = Total_Spent`, confirmando que no hay errores de cálculo, solo de captura de datos faltante.
## Decisiones de limpieza
| Problema | Acción tomada | Filas afectadas |
|---|---|---|
| `Price_Per_Unit` en blanco (con `Quantity` y `Total_Spent` disponibles) | Recalculado con `Price_Per_Unit = Total_Spent / Quantity` | 609 |
| `Item` en blanco (con `Category` y `Price_Per_Unit` disponibles) | Recuperado cruzando `Category` + `Price_Per_Unit` contra un catálogo de productos derivado del propio dataset | 1,213 |
| `Quantity` y `Total_Spent` en blanco simultáneamente | Eliminadas de la tabla de trabajo (sin datos suficientes para calcularlas). Se conservaron en un CSV aparte para referencia futura | 604 |
| `Discount_Applied` en blanco, sin correlación con Location, Payment_Method o Category | Marcado explícitamente como `"Pendiente"` en vez de asumir un valor por default | ~4,199 |
**Resultado final:** tabla limpia de 11,971 filas, con `Item` y `Price_Per_Unit` completos al 100%, y `Discount_Applied` documentado como pendiente de revisión donde no había dato original.
