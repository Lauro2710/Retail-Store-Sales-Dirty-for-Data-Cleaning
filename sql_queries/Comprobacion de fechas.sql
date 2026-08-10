select COUNT(*) as errores_de_fecha 
from retail_store
where Transaction_Date IS NULL or TRIM(Transaction_Date) IN ('', '0');

#No se encontraron fechas null o que esten en blanco