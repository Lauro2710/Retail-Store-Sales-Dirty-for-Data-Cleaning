# Consultas SQL — Limpieza Retail Store Sales

## Descripción
Este directorio contiene las consultas SQL utilizadas para la limpieza del dataset Retail Store Sales. Las consultas cubren la validación de calidad de datos (nulos, formatos, consistencia entre columnas) y las correcciones aplicadas para dejar la tabla lista para análisis.

## Orden de trabajo

**1. Exploración y comprobaciones**
- `Transacciones con mismo formato.sql`
- `Comprobacion de categorias.sql`
- `Items sin nombre.sql`
- `Comprobacion de precios.sql`
- `Comprobacion de cantidad.sql`
- `Comprobacion de gasto total.sql`
- `Comprobacion de cantidad y gasto total.sql`
- `Comprobacion de metodo de pago.sql`
- `Comprobacion de tipo de compra.sql`
- `Comprobacion de fechas.sql`
- `Comprobacion de Discount.sql`

**2. Correcciones aplicadas**
- `Calculo de precio por unidad.sql` — recalcula `Price_Per_Unit` faltante usando `Total_Spent / Quantity`
- `Validar si el update de price funciono.sql`
- `Update de items sin nombre.sql` — recupera `Item` cruzando `Category` + `Price_Per_Unit`
- `verificación de cálculo Total_Spent.sql`
- `Borrado de quantity_y_total_spend.sql` — elimina filas sin `Quantity` ni `Total_Spent` (no calculables)
- `Update_de_la_columna_de_Discount.sql` — marca `Discount_Applied` vacío como `"Pendiente"`

## Resultado
Tabla original: 12,575 filas → Tabla limpia: 11,971 filas, sin valores nulos.
