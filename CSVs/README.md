# CSV — Evidencia y Dataset Limpio

## Descripción
Este directorio contiene los archivos CSV generados durante el proceso de limpieza del dataset Retail Store Sales: los resultados exportados de cada comprobación (evidencia del proceso) y el dataset final ya limpio.

## Contenido

**Dataset original**
- `retail_store_sales.csv` — dataset original sin procesar (fuente: Kaggle)

**Evidencia de comprobaciones**
- `Transacciones_con_mismo_formato.csv`
- `Comprobacion_de_categorias.csv`
- `Items_sin_nombre.csv`
- `Comprobacion_de_precios.csv`
- `Comprobacion_de_cantidad.csv`
- `Comprobacion_de_gasto_total.csv`
- `Comprobacion_de_cantidad_y_gasto_total.csv`
- `Comprobacion_de_metodo_de_pago.csv`
- `Comprobacion_de_tipo_de_compra.csv`
- `Comprobacion_de_fechas.csv`
- `Comprobacion_de_Discount.csv`
- `Validar_si_el_update_de_price_funciono.csv`
- `verificación_de_cálculo_Total_Spent.csv`

**Resultado final**
- `Datos_limpios_de_retail_sales.csv` — dataset final tras la limpieza (11,971 filas, sin valores nulos)

## Nota
Cada CSV de evidencia corresponde a una consulta del mismo nombre en la carpeta `queries/`.
